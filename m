From: Wim Van Sebroeck <wim-IQzOog9fTRqzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [Bug #12162] Commit 7cd5b08be3 breaks startup on Toshiba Portege R500
Date: Thu, 4 Dec 2008 23:45:47 +0100
Message-ID: <20081204224547.GA2212@infomag.infomag.iguana.be>
References: <QFIA5HSHV8B.A.2aG.hoxNJB@chimera> <bfPM5B8Tx2B.A.bmG.moxNJB@chimera> <alpine.LFD.2.00.0812031632420.3256@nehalem.linux-foundation.org> <20081204080537.GI7017@infomag.infomag.iguana.be>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20081204080537.GI7017-flHiHfN8CTx+UeId83wJPCEMzqIPX00as0AfqQuZ5sE@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>

Hi All,

> I will test the watchdog part tonight on an ICH4 and ICH9 chipset.
> I indeed moved the code over from the supermicro_old_pre_stop code.
> And I'm sure this fix indeed needs to go in.

Test on ICH4 is OK.
Test on ICH9 -> the watchdog timer runs but doesn't reboot the system anymore.
The following bits are active in SMI_EN and thus need to be investigated:
	13 - TCO_EN (Not relevant since we set/unset this allready)
	 5 - APMC_EN
	 4 - SLP_SMI_EN
	 3 - LEGACY_USB_EN
	 1 - End Of SMI
	 0 - GBL_SMI_EN

A first test indicated that if bit 0 is forced to 0, the system reboots again.
The second test reveals that setting bits 5, 4, 3 and 1 to 0 doesn't help the rebooting of the ICH9 chipset.
So the real issue with ICH9 and rebooting has to do with the GBL_SMI_EN bit.

So next step will be to create an additional patch and then test it with Rafael and Frans...

Kind regards,
Wim.
