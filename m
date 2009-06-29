From: Etienne Basset <etienne.basset@numericable.fr>
Subject: Re: [Bug #13663] suspend to ram regression (IDE related)
Date: Mon, 29 Jun 2009 12:29:09 +0200
Message-ID: <4A489775.6020102@numericable.fr>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera> <5Hhc7UkUKEO.A.RvE.BjASKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1759223AbZF2K3U@vger.kernel.org>
In-Reply-To: <5Hhc7UkUKEO.A.RvE.BjASKB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, Jeff Chua <jeff.chua.linux@gmail.com>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.29 and 2.6.30.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.29 and 2.6.30.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13663
> Subject		: suspend to ram regression (IDE related)
> Submitter	: Etienne Basset <etienne.basset@numericable.fr>
> Date		: 2009-06-26 17:40 (3 days old)
> References	: http://lkml.org/lkml/2009/6/26/242
> Handled-By	: Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>
> Patch		: http://patchwork.kernel.org/patch/32719/
> 
> 
> 
yes, patch is not yet upstream;
2.6.31-rc1 + bart patch resumes from STR
current git + bart patch resume from STR fails, STR seems to have been broken again
(i was confident that the post-rc1 MCE fixes would correct the fact that computer hangs
 a few minutes after resume, but computer doesn't resume at all)


Etienne
