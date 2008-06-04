From: "Peter Teoh" <htmldeveloper@gmail.com>
Subject: Re: sched_setscheduler() API bug in Linux-next
Date: Thu, 5 Jun 2008 00:10:46 +0800
Message-ID: <804dabb00806040910s311c320albd17f7b4567d116c@mail.gmail.com>
References: <804dabb00806040900o1a8b3116y3df5149009d8368@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-next-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=MTLXCQSwvQN0rGtDbvEr2idSdI9L26oDMuIJSvKxmyg=;
        b=dZ6LYBqGVMWM5Tc6Nsbj5qZYCwJpqtZxIgzvMCQ6en9in576xlHCKHB9uINmtnfEwI
         Ts4SA/JUwLDxBoz6UJOr76c+fmXa4uvG0vF7jtunRFzZ7ywxcFeeKBJz1Sac5bqFbZyo
         MxnyDUBt8wbfuVPV5U9Bh3tX4NytupSD7Sgrg=
In-Reply-To: <804dabb00806040900o1a8b3116y3df5149009d8368@mail.gmail.com>
Content-Disposition: inline
Sender: linux-next-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernel-testers@vger.kernel.org, systemtap@sources.redhat.com, linux-next@vger.kernel.org

One more important symptom:

When I enter "lsmod" - it completely hanged:

/mnt/hd0/download/linux-2.6-latest>lsmod
Module                  Size  Used by
^C

^C^C^C


And I then attempted kill -9 - but the process cannot be killed:

/mnt/hd1/download/linux-next/linux-next>ps -ef|grep lsmod
root      4577     1  0 Jun04 ?        00:00:00 lsmod
root      4602     1  0 Jun04 ?        00:00:00 lsmod
root      4817  4724  0 00:11 pts/3    00:00:00 lsmod

/mnt/hd1/download/linux-next/linux-next>kill -9 4817 4577 4602

/mnt/hd1/download/linux-next/linux-next>ps -ef|grep lsmod
root      4577     1  0 Jun04 ?        00:00:00 lsmod
root      4602     1  0 Jun04 ?        00:00:00 lsmod
root      4817  4724  0 00:11 pts/3    00:00:00 lsmod

And strace seemed to indicate waiting on read():

/mnt/hd1/download/linux-next/linux-next>strace `which lsmod`
execve("/sbin/lsmod", ["/sbin/lsmod"], [/* 43 vars */]) = 0
brk(0)                                  = 0x804a000
access("/etc/ld.so.preload", R_OK)      = -1 ENOENT (No such file or directory)
open("/etc/ld.so.cache", O_RDONLY)      = 3
fstat64(3, {st_mode=S_IFREG|0644, st_size=85363, ...}) = 0
mmap2(NULL, 85363, PROT_READ, MAP_PRIVATE, 3, 0) = 0xb7fb3000
close(3)                                = 0
open("/lib/libc.so.6", O_RDONLY)        = 3
read(3, "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0000?W\0004\0\0\0"...,
512) = 512
fstat64(3, {st_mode=S_IFREG|0755, st_size=1589908, ...}) = 0
mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1,
0) = 0xb7fb2000
mmap2(0x55e000, 1308068, PROT_READ|PROT_EXEC,
MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x55e000
mmap2(0x698000, 12288, PROT_READ|PROT_WRITE,
MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x13a) = 0x698000
mmap2(0x69b000, 9636, PROT_READ|PROT_WRITE,
MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0x69b000
close(3)                                = 0
mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1,
0) = 0xb7fb1000
set_thread_area({entry_number:-1 -> 6, base_addr:0xb7fb16c0,
limit:1048575, seg_32bit:1, contents:0, read_exec_only:0,
limit_in_pages:1, seg_not_present:0, useable:1}) = 0
mprotect(0x698000, 8192, PROT_READ)     = 0
mprotect(0x55a000, 4096, PROT_READ)     = 0
munmap(0xb7fb3000, 85363)               = 0
brk(0)                                  = 0x804a000
brk(0x806b000)                          = 0x806b000
open("/proc/modules", O_RDONLY)         = 3
fstat64(1, {st_mode=S_IFCHR|0620, st_rdev=makedev(136, 2), ...}) = 0
mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1,
0) = 0xb7fc7000
write(1, "Module                  Size  Us"..., 38Module
   Size  Used by
) = 38
fstat64(3, {st_mode=S_IFREG|0444, st_size=0, ...}) = 0
mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1,
0) = 0xb7fc6000
read(3,

What is happening?   At this point - ctrl - C, or ctrl-Z does not
generate response.

I am not sure how to proceed from here.

Thanks.
