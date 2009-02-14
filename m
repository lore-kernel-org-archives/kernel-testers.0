From: Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12414] iwl4965 cannot use "ap auto" on latest 2.6.28/29?
Date: Sun, 15 Feb 2009 02:46:16 +0800
Message-ID: <b6a2187b0902141046r76f80b9ar6df6a0e2472ef61b@mail.gmail.com>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera>
	 <pWZw1SZjMCH.A.zq.WwYiJB@chimera>
	 <b6a2187b0902140341y2a1da743o7b012e6386583a62@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=/gu8JQjyGRXKCq7///esBda+BnQL8HQ1DKrLF+dHOho=;
        b=kcPT2DoAzklhhhxVtZej0CJccpCKp2nel30GZMUJjGtGiCkDnojPgQE9ZuDIxGJNvY
         gob+aDrSQYwHImpF940hWVfmrM17c65rWMrM4Nky0Wf+pOiTktEVX51b2k0nmL0bGNyL
         NwLxsx/vlAd0iRJPE2SAIInGMbfKVly8J+P7A=
In-Reply-To: <b6a2187b0902140341y2a1da743o7b012e6386583a62-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, reinette.chatre-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org

On Sat, Feb 14, 2009 at 7:41 PM, Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> On Wed, Feb 4, 2009 at 6:23 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
>> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12414
>> Subject         : iwl4965 cannot use "ap auto" on latest 2.6.28/29?
>> Submitter       : Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> Date            : 2009-01-05 4:13 (31 days old)
>> References      : http://marc.info/?l=linux-kernel&m=123112882127823&w=4
>
> I applied the patch
> http://marc.info/?l=linux-wireless&m=123320213115108&w=2 and it seems
> better now. One instant of not association out of 20 tries, but
> reloading the modules seems to make it work again. So, let's just
> close the case?

I tested on another AP (WAG200G ), and this one, it's failing to
associate more often. And I noticed that when it does associate, I
don't get these two lines ...

iwlagn: TX Power requested while scanning!
iwlagn: Error sending TX power (-11)



Here's a good run ...

iwlagn: Intel(R) Wireless WiFi Link AGN driver for Linux, 1.3.27ks
iwlagn: Copyright(c) 2003-2008 Intel Corporation
iwlagn 0000:03:00.0: PCI INT A -> GSI 17 (level, low) -> IRQ 17
iwlagn 0000:03:00.0: setting latency timer to 64
iwlagn: Detected Intel Wireless WiFi Link 4965AGN REV=0x4
iwlagn: Tunable channels: 11 802.11bg, 13 802.11a channels
wmaster0 (iwlagn): not using net_device_ops yet
phy0: Selected rate control algorithm 'iwl-agn-rs'
wlan0 (iwlagn): not using net_device_ops yet
iwlagn 0000:03:00.0: PCI INT A -> GSI 17 (level, low) -> IRQ 17
iwlagn 0000:03:00.0: irq 28 for MSI/MSI-X
iwlagn 0000:03:00.0: firmware: requesting iwlwifi-4965-2.ucode
iwlagn loaded firmware version 228.57.2.23
Registered led device: iwl-phy0:radio
Registered led device: iwl-phy0:assoc
Registered led device: iwl-phy0:RX
Registered led device: iwl-phy0:TX
wlan0: authenticate with AP xxxxxxxxxxxxx
wlan0: authenticate with AP xxxxxxxxxxxxx
wlan0: authenticate with AP xxxxxxxxxxxxx
wlan0: authenticated
wlan0: associate with AP xxxxxxxxxxxx
wlan0: RX AssocResp from xxxxxxxxxxxx (capab=0x471 status=0 aid=1)
wlan0: associated



Thanks,
Jeff.
