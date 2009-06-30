From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13648] nfsd: page allocation failure
Date: Tue, 30 Jun 2009 01:48:11 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0906300143030.16291@chino.kir.corp.google.com>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera> <5Hhc7UkUKEO.A.KGF.HjASKB@chimera> <alpine.DEB.2.00.0906291659550.17663@chino.kir.corp.google.com> <alpine.DEB.2.00.0906300404210.13871@p34.internal.lan>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1246351697; bh=05dSoVauo9bvNEeEw+YPCRxpgZM=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=UmU6eQVTt0X+ki2kjQgW8Qf3Kl2wN3X
	zjXX2cK/AVjkjc7OlJQG6xl9P2l77RVrL/To0cv1+w+aT0MROWrrgKg==
In-Reply-To: <alpine.DEB.2.00.0906300404210.13871-0qmrozcXWo8bm2hyYBkBBg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Justin Piszcz <jpiszcz-BP4nVm5VUdNhbmWW9KSYcQ@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

On Tue, 30 Jun 2009, Justin Piszcz wrote:

> The current value is 10, what value do you suggest I try?
> 
> $ cat /proc/sys/vm/dirty_background_ratio
> 10
> 

Looking at your initial bug report, it doesn't look like a background 
writeout issue:

[415964.022375] Active_anon:154810 active_file:131162 inactive_anon:33447
[415964.022375]  inactive_file:690987 unevictable:0 dirty:112116 writeback:0 unstable:0
[415964.022375]  free:8662 slab:965366 mapped:9316 pagetables:4618 bounce:0
[415964.022375] DMA free:9692kB min:16kB low:20kB high:24kB active_anon:0kB inactive_anon:0kB active_file:0kB inactive_file:0kB unevictable:0kB present:8668kB pages_scanned:0 all_unreclaimable? yes
[415964.022375] lowmem_reserve[]: 0 3246 7980 7980
[415964.022375] DMA32 free:21312kB min:6656kB low:8320kB high:9984kB active_anon:118464kB inactive_anon:23908kB active_file:174708kB inactive_file:1206812kB unevictable:0kB present:3324312kB pages_scanned:0 all_unreclaimable? no
[415964.022375] lowmem_reserve[]: 0 0 4734 4734
[415964.022375] Normal free:3644kB min:9708kB low:12132kB high:14560kB active_anon:500776kB inactive_anon:109880kB active_file:349940kB inactive_file:1557136kB unevictable:0kB present:4848000kB pages_scanned:0 all_unreclaimable? no
[415964.022375] lowmem_reserve[]: 0 0 0 0
...
[415964.022375] 2277376 pages RAM

Ignore the all_unreclaimable information, this is a GFP_ATOMIC allocation 
so we can't reclaim.

You have an 8G machine and only 437K is dirty (which is why pdflush hasn't 
kicked in yet).  You do have over 3.5G of slab allocated, however.

This appears related to http://bugzilla.kernel.org/show_bug.cgi?id=13518, 
but that could be confirmed with slabtop.
