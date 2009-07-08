From: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Wed, 08 Jul 2009 08:18:19 -0500
Message-ID: <4A549C9B.4060702@lwfinger.net>
References: <tSdKBEwEOhE.A.2wF.s_oUKB@chimera>	 <bXZeuxPQAWE.A.Y2.2BpUKB@chimera> <4A529F60.7010509@lwfinger.net>	 <alpine.DEB.2.00.0907062302540.10840@chino.kir.corp.google.com> <84144f020907062357m6a75d2eav1589e7f8b4a3d887@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; q=dns/txt; d=att.net; s=dkim01;
      i=larry.finger-fOdFMYwuEsI@public.gmane.org; a=rsa-sha256; c=relaxed/relaxed;
      t=1247059089; h=Content-Transfer-Encoding:Content-Type:
     In-Reply-To:References:Subject:CC:To:MIME-Version:From:Date:
     Message-ID; bh=uVRdFiJRYwip7O9Rbk0GczSr58tFWE79MMjv4ML743U=; b=A6F
     Z9sUQZt+bZFxjcM1LPW9kKDd6W6baXaaZhTnIMQe7pMcJmforbZnSLeHrgAVyaZWm2/
     tI8rPk5BUTdIOMjg==
In-Reply-To: <84144f020907062357m6a75d2eav1589e7f8b4a3d887-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>

Pekka Enberg wrote:
> 
> Yup, if it's not too much trouble Larry, I'd appreciate if you gave it
> a spin before I apply the sucker. Note to regression trackers, I don't
> think this should go to -stable because it depends on other patches in
> mainline and there's an obvious workaround for the problem (disable
> CONFIG_SLUB_DEBUG_ON). Furthermore, it's very unlikely people will hit
> this on production configurations anyway.

Pekka,

I have been running the patch for ~24 hours with slub_debug=0 as a
boot option. So far, no problems. My workload has not involved as many
network operations as some times, but my memory has not fragmented.
The output of 'cat /proc/buddyinfo' is as follows:

Node 0, zone      DMA      8      5      5      4      5      5      5
     4      3      0      1
Node 0, zone    DMA32   1804   1585   3007     36      0      0      0
     0      1      0      0

As might be expected, the high-order fragments are gone, but the O(1)
pieces have not been depleted.

Larry
