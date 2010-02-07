From: =?utf-8?q?Mat=C4=9Bj_Laitl?= <strohel@gmail.com>
Subject: Re: [Bug #15114] X.org hang with [drm:i915_gem_do_execbuffer] *ERROR* in dmesg
Date: Mon, 8 Feb 2010 00:16:35 +0100
Message-ID: <201002080016.36393.strohel@gmail.com>
References: <4Ht3jFrT7uE.A.JI.-nzbLB@chimera> <445R0ey9hAI.A.1tB.7ozbLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:from:organization:to:subject
         :date:user-agent:cc:references:in-reply-to:mime-version:content-type
         :content-transfer-encoding:message-id;
        bh=dF/BY4e/nIfqc/DiCAYb83fjnadhCLIO4N8z+qhp5vI=;
        b=HTgQrvHO1QqSfX3jx7va2MNEbXpyhI/ieZ9uZePxCCCdxQhaIudgQxB5LJ9edMVwpN
         Dmu1TY2kbxiIuzYTb1SzFJh0spby4TvWKoeLkCma+UoNeKUzVQw5uQbOODdusff6iGcd
         Sun8hNNClhaO1j4wG8RxV6Ej4w1p+MAZKOQA8=
In-Reply-To: <445R0ey9hAI.A.1tB.7ozbLB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>

On Sunday 07 February 2010 23:28:50 Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.32.  Please verify if it still should be listed and let the
> tracking team know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15114
> Subject		: X.org hang with [drm:i915_gem_do_execbuffer] *ERROR* in dmesg
> Submitter	: Matej Laitl <strohel@gmail.com>
> Date		: 2010-01-23 19:54 (16 days old)

I confirm the regression still exists in 2.6.33-rc6-00228-g56dca4c

Regards,
		Matej Laitl
