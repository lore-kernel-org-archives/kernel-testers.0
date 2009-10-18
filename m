From: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Subject: Re: Kernel crash on 2.6.31.x (kcryptd: page allocation failure..)
Date: Mon, 19 Oct 2009 01:41:49 +0200
Message-ID: <200910190141.50752.elendil@planet.nl>
References: <hbd4dk$5ac$1@ultimate100.geggus.net> <200910172230.13162.elendil@planet.nl> <hbd9v8$7rf$1@ultimate100.geggus.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-reply-To: <hbd9v8$7rf$1@ultimate100.geggus.net>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Sven Geggus <lists-+AJD3D7QEjjt/htJsj1pd9AswbaBtrod@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

(Sven: For kernel mailing lists please always do a "reply to all".
Although some other communities do not want that, it is standard for the 
kernel community. It is needed because otherwise, with the huge amount of 
traffic on the linux-kernel list, people are too likely to miss replies.)

Sven Geggus wrote:
> Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org> wrote:
> 
>> What is the _exact_ command sequence you use to reproduce it? I already
>> have a testcase, but a second test case, or a simpler one, may be
>> useful. 
> 
> Not a particular easy testcase. This is what I did:
> 
> On the crashing machine with the dm-encrypted xfs volume:
> ionice -c 3 socat TCP4-LISTEN:5555 - >backup.tar
> 
> On the source machine:
> tar cv dir |socat - TCP4:targetmachine:5555
> 
> You will certainly not need to use tar.
> 
> socat /dev/zero TCP4:targetmachine:5555 should work as well.
> 
> I don't know if TCP traffic is really needed probably it is.

Thanks.

In the mean time I've been able to trace the culprit. Could you please try 
if reverting 373c0a7e + 8aa7e847 [1] on top of 2.6.31 fixes the issue for 
you?

Cheers,
FJP

[1] The first commit is a build fix for the second.
