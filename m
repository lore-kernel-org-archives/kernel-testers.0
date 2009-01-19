From: Michal Suchanek <hramrach-aRb0bU7PRFPrBKCeMvbIDA@public.gmane.org>
Subject: Re: [PATCH] x86: vm86: fix preemption bug
Date: Mon, 19 Jan 2009 15:55:09 +0100
Message-ID: <a5d587fb0901190655o76688b2ar667861f75e94436f@mail.gmail.com>
References: <nn3SOLVZ28H.A.bY.CafaJB@chimera>
	 <nHCfeC0YLrE.A.WKC.qafaJB@chimera>
	 <alpine.LFD.2.00.0901132117270.3549@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=tv7FTEFcT5Wiu+j6OrAQPiPjsDVYzTSYFdQtR+70T6I=;
        b=nSBv/w5BHJgBivtnyIcVq8Ni2LzcvraX42kZ/OXtE5kW4Fkk+AxDrqtVDiEXFrZESt
         xd4aWlXV9+XcNqpBRSfHRVHQPOzEIK7wLsdmfAFwzKBgQpdQJrnTvRkysWjcz0dvv02O
         h7BOBcEelRHG4YHLsmI7liTUcvdji36Fnf/q4=
In-Reply-To: <alpine.LFD.2.00.0901132117270.3549-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alexander van Heukelum <heukelum-97jfqw80gc6171pxa8y+qA@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On 13/01/2009, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org> wrote:
> Impact: fix scheduling while atomic bug
>
>  commit 3d2a71a596bd9c761c8487a2178e95f8a61da083 (x86, traps: converge
>  do_debug handlers) changed the preemption disable logic of do_debug()
>  so vm86_handle_trap() is called with preemption disabled resulting in:
>

The patch seems to fix the the problem for me.

However, the patch does not apply automatically neither to 2.6.28 nor
2.6.29-rc1.

Thanks

Michal
