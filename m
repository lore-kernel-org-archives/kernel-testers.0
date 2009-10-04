From: Thomas Backlund <tmb@mandriva.org>
Subject: Re: [Bug #14247] ACPI Exception: AE_TIME, Returned by Handler for
 [EmbeddedControl] flooding logs
Date: Mon, 05 Oct 2009 02:56:02 +0300
Message-ID: <4AC93612.2070509@mandriva.org>
References: <9UCePxij8cB.A.VCG.-3SxKB@chimera> <Q3xT3CnoTGE.A.aRH.b4SxKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756475AbZJDX4m@vger.kernel.org>
In-Reply-To: <Q3xT3CnoTGE.A.aRH.b4SxKB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Alexey Starikovskiy <astarikovskiy@suse.de>, Thomas Backlund <tmb@mandriva.org>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.31.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14247
> Subject		: ACPI Exception: AE_TIME, Returned by Handler for [EmbeddedControl] flooding logs
> Submitter	: Thomas Backlund <tmb@mandriva.org>
> Date		: 2009-09-25 15:08 (7 days old)
> References	: http://lkml.org/lkml/2009/9/25/121
> Handled-By	: Alexey Starikovskiy <astarikovskiy@suse.de>
> Patch		: http://patchwork.kernel.org/patch/50516/
> 
> 

Patch is now upstream, commit: e12ac3d018dd8f20a075f5520209862969146fa6

--
Thomas
