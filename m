From: Heiko Carstens <heiko.carstens-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #11989] Suspend failure on NForce4-based boards due to
	chanes in stop_machine
Date: Mon, 10 Nov 2008 13:04:01 +0100
Message-ID: <20081110120401.GA15518@osiris.boeblingen.de.ibm.com>
References: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera> <wnN9HICUAgP.A.00E.N4zFJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <wnN9HICUAgP.A.00E.N4zFJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>

On Sun, Nov 09, 2008 at 06:59:16PM +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.27.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11989
> Subject		: Suspend failure on NForce4-based boards due to chanes in stop_machine
> Submitter	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> Date		: 2008-11-03 0:28 (7 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=c9583e55fa2b08a230c549bd1e3c0bde6c50d9cc
> References	: http://marc.info/?l=linux-kernel&m=122567187604356&w=4

Hi Rafael,

could you provide more informations for this, please?

What is your kernel configuration?
Do you have any binary only modules (nvidia?) loaded?

Is it possible to recreate the bug by e.g. just doing something like

echo 0 > /sys/devices/system/cpu/cpu1/online

(or any other online cpu)? Or does it trigger any lockdep warnings?
