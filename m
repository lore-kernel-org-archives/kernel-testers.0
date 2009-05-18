From: Martin Knoblauch <spamtrap-Ys4E+72pFW0hFhg+JK9F0w@public.gmane.org>
Subject: Re: [Bug #13178] Booting very slow
Date: Mon, 18 May 2009 01:15:59 -0700 (PDT)
Message-ID: <424718.52835.qm@web32607.mail.mud.yahoo.com>
References: <yO1BmxN79sN.A.xAG.8_zDKB@chimera> <pQ9WADCjgyE.A.scG.LA0DKB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <pQ9WADCjgyE.A.scG.LA0DKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


----- Original Message ----

> From: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
> Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>; Martin Knoblauch <spamtrap-Ys4E+72pFW0hFhg+JK9F0w@public.gmane.org>
> Sent: Saturday, May 16, 2009 10:06:02 PM
> Subject: [Bug #13178] Booting very slow
> 
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.28 and 2.6.29.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.28 and 2.6.29.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry    : http://bugzilla.kernel.org/show_bug.cgi?id=13178
> Subject        : Booting very slow
> Submitter    : Martin Knoblauch 
> Date        : 2009-04-24 12:45 (23 days old)
> References    : http://marc.info/?l=linux-kernel&m=124057716231773&w=4

 The issue is still open. It turns out that starting with 2.6.29-rc1 /proc/mounts already has a "sysfs" line when entering the startup scripts from initrd. This breaks the RHEL4 firmware hotplug script.

Simple fix to user space is available. I do not know how important this issue is.

Anyway, I am in the process of bisecting the problem. It is just a bit tedious in the my customers and employers environment :-(

Cheers
Martin
