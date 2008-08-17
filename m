From: James Bottomley <James.Bottomley@HansenPartnership.com>
Subject: Re: [Bug #11260] Regression: USB memory stick triggers several USB
	resets before settling with bogus capacity
Date: Sun, 17 Aug 2008 10:03:27 -0500
Message-ID: <1218985407.3917.1.camel@localhost.localdomain>
References: <DLWXHEp37wB.A.duD.yZzpIB@albercik>
	 <sNRO-BDDjQL.A.pSG.rbzpIB@albercik>
	 <Pine.LNX.4.64.0808170028550.25704@blonde.site>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754202AbYHQPDp@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.64.0808170028550.25704@blonde.site>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Hugh Dickins <hugh@veritas.com>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Alex Villacis Lasso <avillaci@ceibo.fiec.espol.edu.ec>

On Sun, 2008-08-17 at 00:33 +0100, Hugh Dickins wrote:
> On Sat, 16 Aug 2008, Rafael J. Wysocki wrote:
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11260
> > Subject		: Regression: USB memory stick triggers several USB resets before settling with bogus capacity
> > Submitter	: Alex Villacis Lasso <avillaci@ceibo.fiec.espol.edu.ec>
> > Date		: 2008-08-06 13:33 (11 days old)
> > Handled-By	: Hugh Dickins <hugh@veritas.com>
> > Patch		: http://marc.info/?l=linux-kernel&m=121804333614405&w=2
> 
> James has this fix queued in his scsi-rc-fixes for 2.6.27
> 
> http://git.kernel.org/?p=linux/kernel/git/jejb/scsi-rc-fixes-2.6.git;a=commit;h=d211f052fa58a053639bc51501cb64421157d362
> 
> but hasn't asked Linus to pull for a while: I'm hoping it'll get into -rc4.

Yes ... sure.  linux-next has slowed my push to rcs because it's in
there as soon as it's in my git tree.  However, give it a couple of days
to test out the rest of the fixes in the tree and I'll send a push
request.

James

