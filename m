From: Cyrill Gorcunov <gorcunov@gmail.com>
Subject: Re: [Bug #14270] Cannot boot on a PIII Celeron
Date: Fri, 2 Oct 2009 18:05:13 +0400
Message-ID: <20091002140512.GA5645@lenovo>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera> <COE24pZSBH.A.7sH.xMTxKB@chimera> <aa79d98a0910020130p4d3c5b5fh9597ea435db7f872@mail.gmail.com> <4AC5C42E.9070909@msgid.tls.msk.ru> <4AC5D810.3080307@msgid.tls.msk.ru> <aa79d98a0910020355r31b37ea0v1fef7286f7a71508@mail.gmail.com> <4AC5DCFD.4010107@msgid.tls.msk.ru>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753769AbZJBOFQ@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=BKkxB+1arogLkMzdMb0u8FZ/nvlZMviWQThsLGbOipc=;
        b=qam5aQ2P+B3NvHIVmqnvNkoInUtkoE2aswnH7Q4F772ii1swDyza0BsRbJix5BqATT
         sOtRN+I/I96l0HCBfue94nL4b1EK+WNytmldVlzoXE75YqJh3dyvB4/8f0AA8wVqr2ZB
         CDN2LjgOQDwQBcC5qMVCvB1fJ+aWrloXhHGSA=
Content-Disposition: inline
In-Reply-To: <4AC5DCFD.4010107@msgid.tls.msk.ru>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Michael Tokarev <mjt@tls.msk.ru>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

[Michael Tokarev - Fri, Oct 02, 2009 at 02:59:09PM +0400]
...
>
> Please hold on for a while.
>
> I switched to BZIP2, it booted fine.  I switched back to LZMA -
> and that one now boots too.  Original bzImage, which were built
> by the same compiler from the same source using the same
> options reboots.
>
> So um... I'm now trying to reproduce it ;)
>
> /mjt
>

ok, perhaps it was indirect error or cosmic rays

	-- Cyrill
