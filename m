From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Tue, 7 Jul 2009 09:57:36 +0300
Message-ID: <84144f020907062357m6a75d2eav1589e7f8b4a3d887@mail.gmail.com>
References: <tSdKBEwEOhE.A.2wF.s_oUKB@chimera>
	 <bXZeuxPQAWE.A.Y2.2BpUKB@chimera> <4A529F60.7010509@lwfinger.net>
	 <alpine.DEB.2.00.0907062302540.10840@chino.kir.corp.google.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=iFlGdtWzRJIatXZp08hEzkKwj8bDwy8VkEEoBtrhRUI=;
        b=WDpb2hp+DzzhECt4OXwxVk1oqg3PaejMqGHmb4cFUPaZabjSOz5QrS94keS5ap2WL8
         r1QnA0Lp/INMX9j54c3qRba1KJSL34drNdyeWxfw2s/j7CgASyb7cOw1mPQ8+Vu9HWSo
         2KLFYwd9oO2uTlElE2qv64YOl5XJGHLsv0RNs=
In-Reply-To: <alpine.DEB.2.00.0907062302540.10840-X6Q0R45D7oAcqpCFd4KODRPsWskHk0ljAL8bYrjMMd8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>

Hi,

On Mon, 6 Jul 2009, Larry Finger wrote:
>> I have not seen the fix yet, but one is being prepared. I think the
>> bug can be closed.

On Tue, Jul 7, 2009 at 9:29 AM, David Rientjes<rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org> wrote:
> http://patchwork.kernel.org/patch/34385 should fix your issue (try with
> CONFIG_SLUB_DEBUG_ON still enabled and slub_debug=O on the command line).
>
> Pekka indicated he wanted this fixed in 2.6.31, so he'll probably push it
> to Linus before the 2.6.31-rc3.

Yup, if it's not too much trouble Larry, I'd appreciate if you gave it
a spin before I apply the sucker. Note to regression trackers, I don't
think this should go to -stable because it depends on other patches in
mainline and there's an obvious workaround for the problem (disable
CONFIG_SLUB_DEBUG_ON). Furthermore, it's very unlikely people will hit
this on production configurations anyway.

                        Pekka
