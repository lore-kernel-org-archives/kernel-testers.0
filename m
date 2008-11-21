From: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from 2.6.22
 -&gt; 2.6.28
Date: Fri, 21 Nov 2008 13:51:39 +0100
Message-ID: <4926AEDB.10007@cosmosbay.com>
References: <Pine.LNX.4.64.0811201727070.9089@quilx.com>	<20081121083044.GL16242@elte.hu>	<49267694.1030506@cosmosbay.com> <20081121.010508.40225532.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081121.010508.40225532.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: mingo-X9Un+BFzKDI@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org

David Miller a =E9crit :
> From: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
> Date: Fri, 21 Nov 2008 09:51:32 +0100
>=20
>> Now, I wish sockets and pipes not going through dcache, not tbench a=
ffair
>> of course but real workloads...
>>
>> running 8 processes on a 8 way machine doing a=20
>>
>> for (;;)
>> 	close(socket(AF_INET, SOCK_STREAM, 0));
>>
>> is slow as hell, we hit so many contended cache lines ...
>>
>> ticket spin locks are slower in this case (dcache_lock for example
>> is taken twice when we allocate a socket(), once in d_alloc(), anoth=
er one
>> in d_instantiate())
>=20
> As you of course know, this used to be a ton worse.  At least now
> these things are unhashed. :)

Well, this is dust compared to what we currently have.

To allocate a socket we :
0) Do the usual file manipulation (pretty scalable these days)
   (but recent drop_file_write_access() and co slow down a bit)
1) allocate an inode with new_inode()
    This function :
     - locks inode_lock,
     - dirties nr_inodes counter
     - dirties inode_in_use list  (for sockets, I doubt it is usefull)
     - dirties superblock s_inodes.
     - dirties last_ino counter
 All these are in different cache lines of course.
2) allocate a dentry
   d_alloc() takes dcache_lock,
   insert dentry on its parent list (dirtying sock_mnt->mnt_sb->s_root)
   dirties nr_dentry
3) d_instantiate() dentry  (dcache_lock taken again)
4) init_file() -> atomic_inc on sock_mnt->refcount (in case we want to =
umount this vfs ...)



At close() time, we must undo the things. Its even more expensive becau=
se
of the _atomic_dec_and_lock() that stress a lot, and because of two cac=
he=20
lines that are touched when an element is deleted from a list.

for (i =3D 0; i < 1000*1000; i++)
	close(socket(socket(AF_INET, SOCK_STREAM, 0));

Cost if run one one cpu :

real    0m1.561s
user    0m0.092s
sys     0m1.469s

If run on 8 CPUS :

real    0m27.496s
user    0m0.657s
sys     3m39.092s


CPU: Core 2, speed 3000.11 MHz (estimated)
Counted CPU_CLK_UNHALTED events (Clock cycles when not halted) with a u=
nit mask of 0x00 (Unhalted core cycles) count 100
000
samples  cum. samples  %        cum. %     symbol name
164211   164211        10.9678  10.9678    init_file
155663   319874        10.3969  21.3647    d_alloc
147596   467470         9.8581  31.2228    _atomic_dec_and_lock
92993    560463         6.2111  37.4339    inet_create
73495    633958         4.9088  42.3427    kmem_cache_alloc
46353    680311         3.0960  45.4387    dentry_iput
46042    726353         3.0752  48.5139    tcp_close
42784    769137         2.8576  51.3715    kmem_cache_free
37074    806211         2.4762  53.8477    wake_up_inode
36375    842586         2.4295  56.2772    tcp_v4_init_sock
35212    877798         2.3518  58.6291    inotify_d_instantiate
33199    910997         2.2174  60.8465    sysenter_past_esp
31161    942158         2.0813  62.9277    d_instantiate
31000    973158         2.0705  64.9983    generic_forget_inode
28020    1001178        1.8715  66.8698    vfs_dq_drop
19007    1020185        1.2695  68.1393    __copy_from_user_ll
17513    1037698        1.1697  69.3090    new_inode
16957    1054655        1.1326  70.4415    __init_timer
16897    1071552        1.1286  71.5701    discard_slab
16115    1087667        1.0763  72.6464    d_kill
15542    1103209        1.0381  73.6845    __percpu_counter_add
13562    1116771        0.9058  74.5903    __slab_free
13276    1130047        0.8867  75.4771    __fput
12423    1142470        0.8297  76.3068    new_slab
11976    1154446        0.7999  77.1067    tcp_v4_destroy_sock
10889    1165335        0.7273  77.8340    inet_csk_destroy_sock
10516    1175851        0.7024  78.5364    alloc_inode
9979     1185830        0.6665  79.2029    sock_attach_fd
7980     1193810        0.5330  79.7359    drop_file_write_access
7609     1201419        0.5082  80.2441    alloc_fd
7584     1209003        0.5065  80.7506    sock_init_data
7164     1216167        0.4785  81.2291    add_partial
7107     1223274        0.4747  81.7038    sys_close
6997     1230271        0.4673  82.1711    mwait_idle
