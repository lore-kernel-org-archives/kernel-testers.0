From: Johannes Stezenbach <js@sig21.net>
Subject: Re: [Bug #13946] x86 MCE malfunction on Thinkpad T42p
Date: Thu, 20 Aug 2009 22:22:26 +0200
Message-ID: <20090820202226.GA4444@sig21.net>
References: <jCYznkTxcLB.A.EPH.eNIjKB@chimera>
 <ADSuNT6McuD.A.Rj.9NIjKB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755328AbZHTUVH@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <ADSuNT6McuD.A.Rj.9NIjKB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>

On Wed, Aug 19, 2009 at 10:26:57PM +0200, Rafael J. Wysocki wrote:
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13946
> Subject		: x86 MCE malfunction on Thinkpad T42p
> Submitter	: Johannes Stezenbach <js@sig21.net>
> Date		: 2009-08-07 17:09 (13 days old)
> References	: http://marc.info/?l=linux-kernel&m=124966500232399&w=4
> Handled-By	: Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>
> Patch		: http://patchwork.kernel.org/patch/37908/

This is fixed in v2.6.31-rc6-223-g6c30c53 by
commit c7f6fa44115d401e89db730f357629d39f8e4ba6
"x86, mce: don't log boot MCEs on Pentium M (model == 13) CPUs".


Thanks
Johannes
