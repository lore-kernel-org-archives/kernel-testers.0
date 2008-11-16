From: Maxim Levitsky <maximlevitsky-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.28-rc5: Reported regressions from 2.6.27
Date: Sun, 16 Nov 2008 23:40:54 +0200
Message-ID: <49209366.3060500@gmail.com>
References: <VwdsQNEjR_C.A.CiD.9_FIJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=cGALKmtvFjYxdMbSRtYdNxYZjLqGI/b1kURcZW0AU1w=;
        b=M9v2aPOXvGraTnAXfi3vI/+NpmsC8Q+oxRDkUl/ySxBEyMWsBgaJg/OVsyB28hSKmL
         yrVIUXEYXqnKfF5FAbBwpY7DIcA5g6cSW9qRrD7J4SBP37jgosniPx8y4DKXysrXLqJ6
         s9MVqgv4a2wdfrJT4rAPMcOgkvv0l3AD1Gieg=
In-Reply-To: <VwdsQNEjR_C.A.CiD.9_FIJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Network Development <netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux ACPI <linux-acpi-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux PM List <linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>, Linux SCSI List <linux-scsi-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Just to note, here on acer aspire one suspend to disk is broken too.
System suspends, and then hangs.

If I shutdown the system, and then attempt resume, it resumes, and then hangs.

Best regards,
	Maxim Levitsky
