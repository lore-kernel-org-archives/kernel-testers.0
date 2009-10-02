From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [Bug #14258] Memory leak in SCSI initialization
Date: Fri, 2 Oct 2009 19:26:46 +0200
Message-ID: <200910021926.46532.rjw@sisk.pl>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera> <COE24pZSBH.A.Vk.6MTxKB@chimera> <200910022158.JBD48969.MOSVQOFHJOLtFF@I-love.SAKURA.ne.jp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1757808AbZJBRZX@vger.kernel.org>
In-Reply-To: <200910022158.JBD48969.MOSVQOFHJOLtFF@I-love.SAKURA.ne.jp>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Cc: James.Bottomley@steeleye.com, michael@ellerman.id.au, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org

On Friday 02 October 2009, Tetsuo Handa wrote:
> Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.30 and 2.6.31.
> This memory leak might exist in all releases since 23 Sep 2005.
> http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commitdiff;h=6f3a20242db2597312c50abc11f1e747c5d2326a
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.30 and 2.6.31.  Please verify if it still should
> > be listed and let me know (either way).
> As of now, the patch is not yet merged into Linus's tree.
> It still should be listed.
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14258
> > Subject		: Memory leak in SCSI initialization
> > Submitter	: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
> > Date		: 2009-09-22 4:18 (10 days old)
> > References	: http://marc.info/?l=linux-kernel&m=125359311312243&w=4
> > Handled-By	: Michael Ellerman <michael@ellerman.id.au>
> > Patch		: http://patchwork.kernel.org/patch/49258/

Thanks for the update.

Rafael
