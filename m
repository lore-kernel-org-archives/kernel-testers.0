From: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Subject: Re: [Bug #12393] debugging in dosemu causes lots of 'scheduling
 while atomic'
Date: Tue, 24 Feb 2009 11:03:25 +0100 (CET)
Message-ID: <alpine.LFD.2.00.0902241101580.3523@localhost.localdomain>
References: <HFSEX4uppGO.A.JSG.2yzoJB@chimera> <LLno3yT_fnC.A.dl.6zzoJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <LLno3yT_fnC.A.dl.6zzoJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Michal Suchanek <hramrach-aRb0bU7PRFPrBKCeMvbIDA@public.gmane.org>, Stable Team <stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

On Mon, 23 Feb 2009, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.27 and 2.6.28.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.27 and 2.6.28.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12393
> Subject		: debugging in dosemu causes lots of 'scheduling while atomic'
> Submitter	: Michal Suchanek <hramrach-aRb0bU7PRFPrBKCeMvbIDA@public.gmane.org>
> Date		: 2009-01-09 07:28 (46 days old)
> Handled-By	: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
> Patch		: http://lkml.org/lkml/2009/1/13/445

Commit be716615fe596ee117292dc615e95f707fb67fd1 in Linus tree.

"Cc: stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org" is in the commit log, so stable folks should
have it as well.

Thanks,

	tglx
