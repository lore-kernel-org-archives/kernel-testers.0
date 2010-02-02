From: Kevin Winchester <kjwinchester@gmail.com>
Subject: Re: [Bug #15198] Radeon KMS regression
Date: Mon, 01 Feb 2010 20:04:50 -0400
Message-ID: <1265069090.1515.1.camel@localhost.localdomain>
References: <vZZJKzCUn4G.A.CPB.F7hZLB@chimera>
	 <d3IDKWHT5gE.A.UoB.P7hZLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:subject:from:to:cc
         :in-reply-to:references:content-type:date:message-id:mime-version
         :x-mailer:content-transfer-encoding;
        bh=qNbFU6FFDeAYnl6ewE2B0tNiEYVXicjfdskYDhcvWWc=;
        b=gFtKzs6+P8+IeTQ8HnIA/5z5imyh2cxFeW2zCHOf9M9um7ZNmt3MnNUgS4DI1rSDjm
         hF1hNBKCquLit+wzOUqVxuAWgKdWyC0aoOrAAx2SXS+SvRaDtgVlipHZsNWAXpVOtXlD
         0Q2EFlNEipA0hVaMoXjmPCowy7tp7/2puA1RQ=
In-Reply-To: <d3IDKWHT5gE.A.UoB.P7hZLB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, FUJITA Tomonori <fujita.tomonori@lab.ntt.co.jp>, Ingo Molnar <mingo@elte.hu>

On Mon, 2010-02-01 at 01:22 +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.32.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15198
> Subject		: Radeon KMS regression
> Submitter	: Kevin Winchester <kjwinchester@gmail.com>
> Date		: 2010-01-30 17:18 (2 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=42590a75019a50012f25a962246498dead428433
> References	: http://marc.info/?l=linux-kernel&m=126487191019612&w=4
> Handled-By	: FUJITA Tomonori <fujita.tomonori@lab.ntt.co.jp>
> Patch		: http://patchwork.kernel.org/patch/75023/
> 
> 

This is fixed by the patch from FUJITA Tomonori - I just confirmed with
my latest build of Linus' tree (which has the patch).

Thanks,

-- 
Kevin Winchester

