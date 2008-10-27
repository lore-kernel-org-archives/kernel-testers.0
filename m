From: Eric Paris <eparis-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #11838] general protection fault:
 =?ISO-8859-1?Q?=A0from?= release_blocks_on_commit
Date: Mon, 27 Oct 2008 13:51:07 -0400
Message-ID: <1225129867.3274.1.camel@localhost.localdomain>
References: <nw2Y6lk-0lG.A.VUB.RV5AJB@chimera>
	 <t1C3RWL0r7M.A.wXC.qV5AJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <t1C3RWL0r7M.A.wXC.qV5AJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Theodore Ts'o <tytso-3s7WtUTddSA@public.gmane.org>, sandeen-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org

On Sat, 2008-10-25 at 22:06 +0200, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.27.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11838
> Subject		: general protection fault:  from release_blocks_on_commit
> Submitter	: Eric Paris <eparis-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> Date		: 2008-10-21 14:03 (5 days old)
> References	: http://lkml.org/lkml/2008/10/21/248

Pulled from Linus's git today so it is a 2.6.28-rc2+ kernel and this is
still a regression I was able to hit.

-Eric
