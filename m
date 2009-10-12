From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [Bug #14261] e1000e jumbo frames no longer work: 'Unsupported MTU setting'
Date: Mon, 12 Oct 2009 23:32:29 +0200
Message-ID: <200910122332.29994.rjw@sisk.pl>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera> <L6tb-VyKHZK.A.C2C.pzl0KB@chimera> <20091011.201239.06501504.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1758438AbZJLVbk@vger.kernel.org>
In-Reply-To: <20091011.201239.06501504.davem@davemloft.net>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: David Miller <davem@davemloft.net>
Cc: linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, alexander.duyck@gmail.com, nix@esperi.org.uk

On Monday 12 October 2009, David Miller wrote:
> From: "Rafael J. Wysocki" <rjw@sisk.pl>
> Date: Mon, 12 Oct 2009 01:01:08 +0200 (CEST)
> 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14261
> > Subject		: e1000e jumbo frames no longer work: 'Unsupported MTU setting'
> > Submitter	: Nix <nix@esperi.org.uk>
> > Date		: 2009-09-26 11:16 (16 days old)
> > References	: http://marc.info/?l=linux-kernel&m=125396433321342&w=4
> > Handled-By	: Alexander Duyck <alexander.duyck@gmail.com>
> > Patch		: http://patchwork.kernel.org/patch/50277/
> 
> Fixed by:
> 
> commit a825e00c98a2ee37eb2a0ad93b352e79d2bc1593
> Author: Alexander Duyck <alexander.h.duyck@intel.com>
> Date:   Fri Oct 2 12:30:42 2009 +0000
> 
>     e1000e: swap max hw supported frame size between 82574 and 82583
>     
>     There appears to have been a mixup in the max supported jumbo frame size
>     between 82574 and 82583 which ended up disabling jumbo frames on the 82574
>     as a result.  This patch swaps the two so that this issue is resolved.
>     
>     This patch fixes http://bugzilla.kernel.org/show_bug.cgi?id=14261
>     
>     Signed-off-by: Alexander Duyck <alexander.h.duyck@intel.com>
>     Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
>     Signed-off-by: David S. Miller <davem@davemloft.net>

Thanks, closing.

Rafael
