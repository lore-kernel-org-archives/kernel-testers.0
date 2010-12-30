From: carlos palma <carlos.palma-sh/6fXdz2Rs@public.gmane.org>
Subject: Re: [Bug #25402] kernel (2.6.37-8-generic_amd64) panic on boot (with
 message "map_single: bounce buffer is not DMA'ble) - possible regression
 !!!
Date: Thu, 30 Dec 2010 22:33:13 +0100
Message-ID: <4D1CFA99.1070701@ono.com>
References: <96DQe4a_2tH.A.4RE.497GNB@chimera> <sV7shrPOroO.A.txE.R-7GNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <sV7shrPOroO.A.txE.R-7GNB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

I can confirm that this "regression" still exists with the kernel 
2.6.37-rc8.
The Call Trace is basically the same:

...
Kernel panic - not syncing: map_single ...
Pid 935, comm: NetworkManager Tainted
call trace
panic+oxbf/0x200
? default_spin_lock_flags+0x9/0x10
?swiotlb_tlb_map_single+0x1ce/0x250
?map_single+0x46/0x60
swiotlb_map_page+0xa6/0xf
... and then the FREEZE ... only a hard reset brings to live (with 
2.6.36-2) Linux.

carlos.


On 12/30/2010 12:07 AM, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.36.  Please verify if it still should be listed and let the tracking team
> know (either way).
>
>
> Bug-Entry	:http://bugzilla.kernel.org/show_bug.cgi?id=25402
> Subject		: kernel (2.6.37-8-generic_amd64) panic on boot (with message "map_single: bounce buffer is not DMA'ble) - possible regression !!!
> Submitter	: carlos<carlos.palma-sh/6fXdz2Rs@public.gmane.org>
> Date		: 2010-12-21 19:58 (9 days old)
>
>
>
