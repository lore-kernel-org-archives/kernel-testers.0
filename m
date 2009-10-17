From: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Subject: Re: Kernel crash on 2.6.31.x (kcryptd: page allocation failure..)
Date: Sat, 17 Oct 2009 22:30:11 +0200
Message-ID: <200910172230.13162.elendil@planet.nl>
References: <hbd4dk$5ac$1@ultimate100.geggus.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-reply-To: <hbd4dk$5ac$1@ultimate100.geggus.net>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Sven Geggus <lists-+AJD3D7QEjjt/htJsj1pd9AswbaBtrod@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Hello Sven,

Sven Geggus wrote:
> I can reproducible crash my machine by writing bulk data from a
> socket to an encrypted partition. It always crashes after a few
> Gigabytes have been written.
> 
> The Partition in charge is using dm-crypt+xfs filesystem.

This is without any doubt related to an issue that's already being 
investigated. I have to warn you that the thread is very long:

http://thread.gmane.org/gmane.linux.kernel/896714

What is the _exact_ command sequence you use to reproduce it? I already 
have a testcase, but a second test case, or a simpler one, may be useful.

In all cases reported so far, and also in your case, networking is involved 
in the actual allocation errors.

It would also be useful if you could try to bisect the issue independently. 
For me bisection has proven difficult because the symptoms change 
between .30 and .31. The suspicion is that more than one change is 
involved in the regression.

Cheers,
FJP
