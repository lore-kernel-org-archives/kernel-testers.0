From: Russell King <rmk+lkml@arm.linux.org.uk>
Subject: Re: [Bug #14625] Commit d451564 breaks ARM
Date: Sun, 24 Jan 2010 23:29:12 +0000
Message-ID: <20100124232912.GA10805@flint.arm.linux.org.uk>
References: <pYFNu11z2aM.A.pJH.CZMXLB@chimera> <q60Z28d_9yH.A.5sB.QbMXLB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752541Ab0AXX31@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=arm.linux.org.uk; s=caramon; h=Date:From:To:Cc:Subject:
	Message-ID:References:MIME-Version:Content-Type:In-Reply-To:
	Sender; bh=biPMv96tNiHLYftCFRM9wLEL/6NA2zGQF9W9cgClxow=; b=QFggj
	+Dgk8YtjFldqAGWfvzEbAp9FjygUwOXVJScEhO/brSjUE/HBLO3Jd9yTzjKbI2I9
	LgSYKiB4pUwKUp/fPpI/ishbESeSG1ELOFskoMic0ygwNGKxSMQF4axhQyW/uxay
	7rynMPkGDivoAIi2PuGzXSYpku47ftdsUE8mlg=
Content-Disposition: inline
In-Reply-To: <q60Z28d_9yH.A.5sB.QbMXLB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Ingo Molnar <mingo@elte.hu>, Soeren Sandmann <sandmann@daimi.au.dk>

On Sun, Jan 24, 2010 at 11:22:52PM +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> be listed and let me know (either way).

Fixed by 4ff1fa2.

-- 
Russell King
 Linux kernel    2.6 ARM Linux   - http://www.arm.linux.org.uk/
 maintainer of:
