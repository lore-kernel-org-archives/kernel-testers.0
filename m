From: Marcel Holtmann <marcel@holtmann.org>
Subject: Re: [Bug #15127] Bluetooth: sleeping function called from invalid
 context
Date: Mon, 08 Feb 2010 09:05:01 +0100
Message-ID: <1265616301.31341.259.camel@localhost.localdomain>
References: <2uzMDuY-7_O.A.M1G.7X1bLB@chimera>
	 <iuJeop2ribM.A.DgH.XY1bLB@chimera>  <4B6F82B7.4090501@xenontk.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <4B6F82B7.4090501@xenontk.org>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: davidjon@xenontk.org
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Luiz Augusto von Dentz <luiz.dentz@openbossa.org>

Hi David,

> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.31 and 2.6.32.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> > be listed and let the tracking team know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15127
> > Subject		: Bluetooth: sleeping function called from invalid context
> > Submitter	: David John <davidjon@xenontk.org>
> > Date		: 2010-01-12 9:19 (27 days old)
> > First-Bad-Commit: http://git.kernel.org/git/linus/9e726b17422bade75fba94e625cd35fd1353e682
> > References	: http://marc.info/?l=linux-kernel&m=126328727021949&w=4
> > Handled-By	: Marcel Holtmann <marcel@holtmann.org>
> > Patch		: http://patchwork.kernel.org/patch/76019/
>
> The fix has not been merged yet, so please keep this open.

a set of fixes has been sent to Dave Miller for pulling on Friday.

Regards

Marcel

