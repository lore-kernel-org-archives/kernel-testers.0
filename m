From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: 2.6.27-rc2: suspend regression on EeePC
Date: Wed, 06 Aug 2008 19:59:27 +0100
Message-ID: <4899F48F.2090100@tuffmail.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:content-type
         :content-transfer-encoding:sender;
        bh=extFN9p9g4cbFwv1hWA+g5R7GPf/o6bt1pdDIpfXuuU=;
        b=FH/zb4mdGqs1LZlSH7maYC+e6jImTRsEpL5P2X1PxVrQD5M5Z61Cq5EEN6kPoKijXB
         UmpgNgPd2vpc2yyTJpeHD+4hkvD6IEi4y+ft2gAWz5mSLGrbMplxCdrjs/BriagDr/cV
         00cnQcWd0tk0OYC5A9vmY3CUUemyYY9UEpd8M=
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: ath5k-devel-xDcbHBWguxEUs3QNXV6qNA@public.gmane.org
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

I'm very pleased to see ath5k support for my EeePC (AR2425) in 
2.6.27-rc2.  That said, there seems to be a regression with suspend to 
ram.  This is relative to the version I tested from Nicks 
compat-wireless-2008-07-03-ath5k snapshot.

The driver doesn't blow up; it just doesn't behave as expected.  This 
might be a generic issue; it might even be a bad interaction with 
eeepc-laptop being moved to rfkill support.  But I'm asking you guys 
about this first :-).

Expected behaviour (as seen previously):
After resume, a scan is performed automatically.  Unpriviledged users 
can run "iwlist ath0 scan" to see the results.  NetworkManager (0.6.6) 
presumably picks up the scan results, and reconnects without user 
intervention.

Actual behaviour:
After resume, no scan is performed.  Unpriviledged users running "iwlist 
ath0 scan" are told "no results".  It is necessary to run "iwlist ath0 
scan" *as root*; only then will NetworkManager reconnect.

Thanks
Alan
