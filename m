From: Michal Suchanek <hramrach-aRb0bU7PRFPrBKCeMvbIDA@public.gmane.org>
Subject: Re: [Bug #12393] debugging in dosemu causes lots of 'scheduling while 
	atomic'
Date: Thu, 5 Feb 2009 03:44:03 +0100
Message-ID: <a5d587fb0902041844v40f1d441s535d070437aa9823@mail.gmail.com>
References: <a47yn9c9JrF.A.hz.L5YiJB@chimera>
	 <CGyEB0S4BpO.A.C8C.-5YiJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=ptNLV6tiwgVbrZsi5RKbEvEEDUy9kjAu1wNPgoUK5vY=;
        b=RttxiIxtIUSgAkx5MDxx4vzBEOxPCoSjstZU3DCwJGOlA0GdY6irRPpZk5v9i0eTgj
         XaWvw1oIFAeO9gtaAn9cr+8TaIuag9rgZOsLCd/bAe/gLiWpxJGYVuX9JImdyK0mTrNz
         4EAYkpHf7DvJ4z4VtqsddykQotg3iIm1Qpv9o=
In-Reply-To: <CGyEB0S4BpO.A.C8C.-5YiJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

As I said earlier I have received a patch that I applied locally and
that fixes the problem.

As to if and when the patch actually appears in the kernel is out of
my control, and nobody told me that it was applied.

If you believe it was applied to a kernel version that is readily
available for download I am wiling to test such version.

Thanks

Michal

2009/2/4 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.27 and 2.6.28.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.27 and 2.6.28.  Please verify if it still should
> be listed and let me know (either way).
>
>
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12393
> Subject         : debugging in dosemu causes lots of 'scheduling while atomic'
> Submitter       : Michal Suchanek <hramrach-aRb0bU7PRFPrBKCeMvbIDA@public.gmane.org>
> Date            : 2009-01-09 07:28 (27 days old)
>
>
>
