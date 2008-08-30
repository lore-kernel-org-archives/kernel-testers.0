From: "Yinghai Lu" <yhlu.kernel@gmail.com>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Sat, 30 Aug 2008 01:02:25 -0700
Message-ID: <86802c440808300102nfd878adqc68d53159858f94e@mail.gmail.com>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>
	 <alpine.LFD.1.10.0808291751480.3300@nehalem.linux-foundation.org>
	 <86802c440808291830t4547140dx9b12353649edd975@mail.gmail.com>
	 <alpine.LFD.1.10.0808291919080.3300@nehalem.linux-foundation.org>
	 <alpine.LFD.1.10.0808291954410.3300@nehalem.linux-foundation.org>
	 <86802c440808292007t3588edfnef95b723320ff023@mail.gmail.com>
	 <alpine.LFD.1.10.0808292017440.5010@nehalem.linux-foundation.org>
	 <86802c440808292141g6ffd1329p54e58ee04c26540a@mail.gmail.com>
	 <alpine.LFD.1.10.0808292216310.3290@nehalem.linux-foundation.org>
	 <alpine.LFD.1.10.0808292312120.3290@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752385AbYH3ICr@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=yNociEB3NHYu6IJlPY7jL8DowphkQokSeXEWwacRCKA=;
        b=MuJQcFS9Bubua0aPGGWjzOzax/O0yJd4gay4iKEmiFHCeqY5w158SKEYlK9p7mmkCN
         OTaXJ6s+gtfNEHMNcTl3n+MblU/evwO+YLiHS9WWuGSK1e841e6P0XckxFni5j+ec+ko
         L5c3xvhhoZYVrefxyPbyJF3CblmhSwUcVHsck=
In-Reply-To: <alpine.LFD.1.10.0808292312120.3290@nehalem.linux-foundation.org>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Jeff Garzik <jeff@garzik.org>, Tejun Heo <htejun@gmail.com>, Ingo Molnar <mingo@elte.hu>, David Witbrodt <dawitbro@sbcglobal.net>, Andrew Morton <akpm@linux-foundation.org>, Kernel Testers <kernel-testers@vger.kernel.org>

please check fix v3

[PATCH] x86: split e820 reserved entries record to late v4 - fix v3

try to insert_resource second time, by expand the resource...

for case: e820 reserved entry is partially overlapped with bar res...

hope it will never happen

v3: use reserve_region_with_split() instead to hand overlapping
       with test case by extend 0xe0000000 - 0xeffffff to 0xdd800000 -
       get
               e0000000-efffffff : PCI MMCONFIG 0
                        e0000000-efffffff : reserved
       in /proc/iomem
       get
               found conflict for reserved [dd800000, efffffff], try
to reserve with split
                   __reserve_region_with_split: (PCI Bus #80)
[dd000000, ddffffff], res: (reserved) [dd800000, efffffff]
                   __reserve_region_with_split: (PCI Bus #00)
[de000000, dfffffff], res: (reserved) [de000000, efffffff]
               initcall pci_subsys_init+0x0/0x121 returned 0 after 381 msecs
       in dmesg

YH
