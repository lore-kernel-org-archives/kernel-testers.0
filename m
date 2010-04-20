From: Borislav Petkov <bp@alien8.de>
Subject: Re: [Bug #15730] Ugly rmap NULL ptr deref oopsie on hibernate (was
 Linux 2.6.34-rc3)
Date: Tue, 20 Apr 2010 07:27:40 +0200
Message-ID: <20100420052740.GA20482@liondog.tnic>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh>
 <YeFfFNFyTSF.A.K_G.dRSzLB@tosh>
Mime-Version: 1.0
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=alien8.de; s=alien8;
	t=1271741264; bh=nTd7xOVSyxKFTrghP1hPR8VtWKaxUD1VQFFsv6Kwibc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To; b=t2TpFtV4sp0sog0ty4gnZxWjDHIm6tNGIWUXxj
	X0a1Y3m9llO6i1erZxQRkYzGX4Pj3RmSTtrfwP9Ihgndh2wkMYdtfFM09j9O/oa8m/6
	rSq2lUwUWlhAwyJ15iBrPgfAMfIgJz4RGcYDcau/qEMrxKnkE7BrO4H7Hs8UIt/og8=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=alien8.de; s=alien8;
	t=1271741264; bh=nTd7xOVSyxKFTrghP1hPR8VtWKaxUD1VQFFsv6Kwibc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To; b=t2TpFtV4sp0sog0ty4gnZxWjDHIm6tNGIWUXxj
	X0a1Y3m9llO6i1erZxQRkYzGX4Pj3RmSTtrfwP9Ihgndh2wkMYdtfFM09j9O/oa8m/6
	rSq2lUwUWlhAwyJ15iBrPgfAMfIgJz4RGcYDcau/qEMrxKnkE7BrO4H7Hs8UIt/og8=
Content-Disposition: inline
In-Reply-To: <YeFfFNFyTSF.A.K_G.dRSzLB@tosh>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>

From: "Rafael J. Wysocki" <rjw@sisk.pl>
Date: Tue, Apr 20, 2010 at 05:19:23AM +0200

> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.33.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15730
> Subject		: Ugly rmap NULL ptr deref oopsie on hibernate (was Linux 2.6.34-rc3)
> Submitter	: Borislav Petkov <bp@alien8.de>
> Date		: 2010-04-02 17:59 (18 days old)
> Message-ID	: <20100402175937.GA19690@liondog.tnic>
> References	: http://marc.info/?l=linux-kernel&m=127023173329741&w=2

Fixed by commit ea90002b0fa7bdee86ec22eba1d951f30bf043a6.

-- 
Regards/Gruss,
    Boris.
