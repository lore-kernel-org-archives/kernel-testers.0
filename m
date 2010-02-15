From: ebiederm-aS9lmoZGLiVWk0Htik3J/w@public.gmane.org (Eric W. Biederman)
Subject: Re: [Bug #14999] possible circular locking dependency detected in rfkill at suspend
Date: Mon, 15 Feb 2010 03:19:11 -0800
Message-ID: <m1wryed9w0.fsf@fess.ebiederm.org>
References: <Z5cmiqDComP.A.gyF.OiIeLB@chimera>
	<4un6Gst5rKB.A.Im.WkIeLB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4un6Gst5rKB.A.Im.WkIeLB@chimera> (Rafael J. Wysocki's message of "Mon\, 15 Feb 2010 00\:38\:29 +0100 \(CET\)")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Christian Casteyde <casteyde.christian-GANU6spQydw@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Tejun Heo <tj-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Greg Kroah-Hartman <gregkh-l3A5Bk7waGM@public.gmane.org>

"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> writes:

> This message has been generated automatically as a part of a summary report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.32.  Please verify if it still should be listed and let the tracking team
> know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14999
> Subject		: possible circular locking dependency detected in rfkill at suspend
> Submitter	: Christian Casteyde <casteyde.christian-GANU6spQydw@public.gmane.org>
> Date		: 2010-01-06 21:52 (40 days old)

I have a set of patches to clear up the sysfs lockdep false positives.  
http://lkml.org/lkml/2010/2/11/329

It requires sprinking a bunch of sysfs_attr_init on the few dynamically
allocated sysfs attributes, and I haven't found them all yet.  Otherwise
it seems to be working well.

Greg should pick up those patches shortly and they should be appearing
in linux-next and then ultimately in 2.6.34.

Eric
