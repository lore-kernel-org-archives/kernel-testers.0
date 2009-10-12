From: Chuck Ebbert <cebbert-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #14275] kernel>=2.6.31: ahci.c: do not force
 unconditionally sb600 to 32bit dma any more?
Date: Mon, 12 Oct 2009 10:39:40 -0400
Message-ID: <20091012103940.0433cb68@katamari.usersys.redhat.com>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera>
	<L6tb-VyKHZK.A.hHC.ezl0KB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <L6tb-VyKHZK.A.hHC.ezl0KB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, gabriele balducci <balducci-KqplAB4qOuE@public.gmane.org>

On Mon, 12 Oct 2009 01:01:09 +0200 (CEST)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14275
> Subject		: kernel>=2.6.31: ahci.c: do not force unconditionally sb600 to 32bit dma any more?
> Submitter	: gabriele balducci <balducci-KqplAB4qOuE@public.gmane.org>
> Date		: 2009-09-30 15:02 (12 days old)
> Patch		: http://bugzilla.kernel.org/show_bug.cgi?id=14275#c0
> 

Already marked fixed in bugzilla.

Fixed by commit 2fcad9d271
("ahci: disable 64bit DMA by default on SB600s")

Not in 2.6.31-stable.
