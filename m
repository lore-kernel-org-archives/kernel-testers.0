From: brot <schnitzelkuchen-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: Re: USB scanner not working with 2.6.26-rc3
Date: Mon, 26 May 2008 12:06:20 +0200
Message-ID: <483A8B9C.5000601@googlemail.com>
References: <48399143.2030100@googlemail.com> <20080525204724.GM1791@cs181133002.pp.htv.fi>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:user-agent:mime-version:to:cc:subject:references:in-reply-to:content-type:content-transfer-encoding;
        bh=AvUXcSmc5n2DsFyFP4nSNVIjKPxnfzHNrtpMh45bcjk=;
        b=ZP/f4T84+AMVTUeje9G5f3aKm4YZn2wrWDjX2qicDAbaob6nMBQsRfN6bB5QKhNNJN29+tnSQjRwirz2kSsZbJuJbbsXOfFwUV0MJC78R6KiQm7o1sRlUINHfOHftURJHVwgKD2SAbQWM7JjiMk/Zb7HL/wCulZjBnW9i5JVdVI=
In-Reply-To: <20080525204724.GM1791-Aar9JVdAhcRoA3hw4S0G5QR5/fbUUdgG@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Well, the kernel is only tainted because of the nvidia driver. which i have in every kernel. It seems like my printer/scanner or usb controller is
having problems atm, as it is causing problems on 2.6.25.3 where it should work.

Another question: http://lkml.org/lkml/2008/5/9/229 - it doesnt seem that anyone looked at this bug, or am i wrong ? maybe one should point ingo or
peter at it.


Have a nice day.

brot
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
