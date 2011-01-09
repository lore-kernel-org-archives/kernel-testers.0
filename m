From: carlos palma <carlos.palma-sh/6fXdz2Rs@public.gmane.org>
Subject: Re: [Bug #25402] kernel (2.6.37-8-generic_amd64) panic on boot (with
 message "map_single: bounce buffer is not DMA'ble) - possible regression
 !!!
Date: Sun, 09 Jan 2011 02:16:19 +0100
Message-ID: <4D290C63.9040005@ono.com>
References: <96DQe4a_2tH.A.4RE.497GNB@chimera> <sV7shrPOroO.A.txE.R-7GNB@chimera> <4D1CFA99.1070701@ono.com> <201012302351.48156.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201012302351.48156.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

Hi Rafael.
I've found the same bug reported in redhat 
(https://bugzilla.redhat.com/show_bug.cgi?id=668088).
carlos


On 12/30/2010 11:51 PM, Rafael J. Wysocki wrote:
> On Thursday, December 30, 2010, carlos palma wrote:
>> I can confirm that this "regression" still exists with the kernel
>> 2.6.37-rc8.
>> The Call Trace is basically the same:
>>
>> ...
>> Kernel panic - not syncing: map_single ...
>> Pid 935, comm: NetworkManager Tainted
>> call trace
>> panic+oxbf/0x200
>> ? default_spin_lock_flags+0x9/0x10
>> ?swiotlb_tlb_map_single+0x1ce/0x250
>> ?map_single+0x46/0x60
>> swiotlb_map_page+0xa6/0xf
>> ... and then the FREEZE ... only a hard reset brings to live (with
>> 2.6.36-2) Linux.
> Thanks for the info.
>
> Why did you put "regression" into double quotes?
>
> Rafael
>
