From: Roman Mindalev <lists-ioAbOcnQCpJeoWH0uzbU5w@public.gmane.org>
Subject: Re: [Bug #11035] System hangs on 2.6.26-rc8
Date: Sat, 12 Jul 2008 19:07:35 +0400
Message-ID: <4878C8B7.2030400@r000n.net>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik>	<uBi7uNfg81L.A.xt.SzLcIB@albercik>	<487600B3.2010008@r000n.net> <20080710150841.139c2a71@doriath.conectiva>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080710150841.139c2a71-nIupHZaCssooJnjsDhvDDvd9D2ou9A/h@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Luiz Fernando N. Capitulino" <lcapitulino-4qZELD6Fgxg39yzSjRtAkw@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Luiz Fernando N. Capitulino wrote:
> Em Thu, 10 Jul 2008 16:29:39 +0400
> Roman Mindalev <lists-ioAbOcnQCpJeoWH0uzbU5w@public.gmane.org> escreveu:
> 
> | Rafael J. Wysocki wrote:
> | > This message has been generated automatically as a part of a report
> | > of recent regressions.
> | > 
> | > The following bug entry is on the current list of known regressions
> | > from 2.6.25.  Please verify if it still should be listed.
> | > 
> | > 
> | > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11035
> | > Subject		: System hangs on 2.6.26-rc8
> | > Submitter	: Roman Mindalev <lists-ioAbOcnQCpJeoWH0uzbU5w@public.gmane.org>
> | > Date		: 2008-07-02 14:25 (5 days old)
> | > References	: http://marc.info/?l=linux-kernel&m=121500871414995&w=4
> | > 
> | > 
> | > 
> | I have this problem with 2.6.25 too.
> | Unfortunately, I can't check 2.6.24. With config from 2.6.26-rc8 I got
> | error of compiling:
> | 
> |   LD      .tmp_vmlinux1
> | kernel/built-in.o: In function `timespec_add_ns':
> | /usr/src/kernels/linux-2.6.24/include/linux/time.h:179: undefined
> | reference to `__umoddi3'
> 
>  [...]
> 
>  You're trying to compile with gcc 4.3, right? 
Yes, GCC 4.3.1. With time.patch kernel compiled successfully. Thanks for
help!
