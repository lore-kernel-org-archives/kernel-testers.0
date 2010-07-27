From: James Bottomley <James.Bottomley-d9PhHud1JfjCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>
Subject: Re: [Bug #16271] 2.6.35-rc3 regression: IBM Maia system is
 unbootable [ACPI related?]
Date: Mon, 26 Jul 2010 19:00:21 -0500
Message-ID: <1280188821.7125.486.camel@mulgrave.site>
References: <Lupw7pePXBO.A.fZH.G2XSMB@chimera>
	 <tneGvaw1wLL.A.1sB.C4XSMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <tneGvaw1wLL.A.1sB.C4XSMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Len Brown <len.brown-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Fri, 2010-07-23 at 13:47 +0200, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.34.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16271
> Subject		: 2.6.35-rc3 regression: IBM Maia system is unbootable [ACPI related?]
> Submitter	: James Bottomley <James.Bottomley-JuX6DAaQMKPCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>
> Date		: 2010-06-21 16:03 (33 days old)
> Message-ID	: <1277136189.10998.63.camel-0iu6Cu4xQGLYCGPCin2YbQ@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=127713622821166&w=2
> Handled-By	: Len Brown <len.brown-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> Patch		: https://patchwork.kernel.org/patch/108497/

Just got back to the machine in question.  It's gone in 2.6.35-rc6+ (can
we get rid of this stupid '+'?) by

commit 3d695839a135a9b3f24b0d7cfd9c4fde2eadd2c5
Author: Len Brown <len.brown-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Date:   Mon Jun 28 20:55:01 2010 -0400

    ACPI: handle systems which asynchoronously enable ACPI mode
 
So you can close the bug entry.

Thanks,

James


