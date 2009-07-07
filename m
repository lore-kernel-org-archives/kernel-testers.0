From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Mon, 6 Jul 2009 23:29:50 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0907062302540.10840@chino.kir.corp.google.com>
References: <tSdKBEwEOhE.A.2wF.s_oUKB@chimera> <bXZeuxPQAWE.A.Y2.2BpUKB@chimera> <4A529F60.7010509@lwfinger.net>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1246948195; bh=ABAe3mohnR37V9RjU9Lbm3JZ6vA=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=WNMxls58hoWl6dE+t7IrVr8dc97JCKb
	6CxJXHeBGQrGU2Jd2g834Zo7GUKUAtDBqanCO1R50zUdo9AiDW6ZD2Q==
In-Reply-To: <4A529F60.7010509-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>

On Mon, 6 Jul 2009, Larry Finger wrote:

> I have not seen the fix yet, but one is being prepared. I think the
> bug can be closed.
> 

http://patchwork.kernel.org/patch/34385 should fix your issue (try with 
CONFIG_SLUB_DEBUG_ON still enabled and slub_debug=O on the command line).

Pekka indicated he wanted this fixed in 2.6.31, so he'll probably push it 
to Linus before the 2.6.31-rc3.
