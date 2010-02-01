From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #15196] kmem_cache_create: duplicate cache ccid2_h
Date: Sun, 31 Jan 2010 23:20:50 -0800 (PST)
Message-ID: <20100131.232050.266652459.davem@davemloft.net>
References: <vZZJKzCUn4G.A.CPB.F7hZLB@chimera>
	<d3IDKWHT5gE.A.8sB.Q7hZLB@chimera>
	<7b6bb4a51001311930i7d72f60dj3b15ca3e1a715607@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <7b6bb4a51001311930i7d72f60dj3b15ca3e1a715607-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="iso-8859-1"
To: xtfeng-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Cc: rjw-KKrjLPT3xs0@public.gmane.org, htd-HjJ2MNWy62to6+H+lsi3Gti2O/JbrIOy@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, nhorman-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org

=46rom: Xiaotian Feng <xtfeng-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date: Mon, 1 Feb 2010 11:30:02 +0800

> On Mon, Feb 1, 2010 at 8:22 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote=
:
>> This message has been generated automatically as a part of a report
>> of recent regressions.
>>
>> The following bug entry is on the current list of known regressions
>> from 2.6.32. =A0Please verify if it still should be listed and let m=
e know
>> (either way).
>>
>>
>> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
15196
>> Subject =A0 =A0 =A0 =A0 : kmem_cache_create: duplicate cache ccid2_h
>> Submitter =A0 =A0 =A0 : Heinz Diehl <htd-HjJ2MNWy62to6+H+lsi3Gti2O/JbrIOy@public.gmane.org>
>> Date =A0 =A0 =A0 =A0 =A0 =A0: 2010-01-30 18:33 (2 days old)
>> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D12648=
7640324942&w=3D4
>=20
> Cced Neil,
>=20
> I think this one is introduced by commit
> de4ef86cfce60d2250111f34f8a084e769f23b16,
> passing char *slab_name_fmt as function parameter, but vsnprintf is
> using sizeof(slab_name_fmt),
> which is 8 (or 4 in 32bit kernel) instead of 32 as old version.
>=20
> Does following patch resolve this bug, Heinz?

There seems to be even more to this than that.  Neils
patch seems to need completely reverting.

See the patch set posted by Gerrit Renker:

http://marc.info/?l=3Dlinux-netdev&m=3D126500585823775&w=3D2
http://marc.info/?l=3Dlinux-netdev&m=3D126500591923880&w=3D2
