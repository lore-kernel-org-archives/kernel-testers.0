From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #11260] Regression: USB memory stick triggers several USB resets before settling with bogus capacity
Date: Sun, 17 Aug 2008 14:18:26 +0200
Message-ID: <200808171418.27556.rjw@sisk.pl>
References: <DLWXHEp37wB.A.duD.yZzpIB@albercik> <sNRO-BDDjQL.A.pSG.rbzpIB@albercik> <Pine.LNX.4.64.0808170028550.25704@blonde.site>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Pine.LNX.4.64.0808170028550.25704-popGQ1T0qN76K7/ahGyk6A@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alex Villacis Lasso <avillaci-x0m+Mc+nT7uljOmnV8AmnkElSqmLX1BE@public.gmane.org>, James Bottomley <James.Bottomley-JuX6DAaQMKPCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>

On Sunday, 17 of August 2008, Hugh Dickins wrote:
> On Sat, 16 Aug 2008, Rafael J. Wysocki wrote:
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11260
> > Subject		: Regression: USB memory stick triggers several USB resets before settling with bogus capacity
> > Submitter	: Alex Villacis Lasso <avillaci-x0m+Mc+nT7uljOmnV8AmnkElSqmLX1BE@public.gmane.org>
> > Date		: 2008-08-06 13:33 (11 days old)
> > Handled-By	: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
> > Patch		: http://marc.info/?l=linux-kernel&m=121804333614405&w=2
> 
> James has this fix queued in his scsi-rc-fixes for 2.6.27
> 
> http://git.kernel.org/?p=linux/kernel/git/jejb/scsi-rc-fixes-2.6.git;a=commit;h=d211f052fa58a053639bc51501cb64421157d362
> 
> but hasn't asked Linus to pull for a while: I'm hoping it'll get into -rc4.

Thanks for the update.

Rafael
