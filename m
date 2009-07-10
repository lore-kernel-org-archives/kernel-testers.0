From: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Subject: Re: Intel BIOS - Corrupted low memory at ffff880000004200
Date: Fri, 10 Jul 2009 16:44:56 +0200
Message-ID: <4A5753E8.9040704@fisher-privat.net>
References: <4A5210A2.2080301@fisher-privat.net> <4A52254F.8080103@fisher-privat.net> <20090708113949.GA8960@srcf.ucam.org> <20090710115238.GA8812@elte.hu> <4A573131.40601@fisher-privat.net> <alpine.LFD.2.00.0907101504030.2768@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.00.0907101504030.2768-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Matthew Garrett <mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>, Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, "Pallipadi, Venkatesh" <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Suresh Siddha <suresh.b.siddha-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Richard A. Holden III" <aciddeath-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

Thomas Gleixner schrieb:
> On Fri, 10 Jul 2009, Alexey Fisher wrote:
>> Ingo Molnar schrieb:
>>> * Matthew Garrett <mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org> wrote:
>>>
>>>> On Mon, Jul 06, 2009 at 06:24:47PM +0200, Alexey Fisher wrote:
>>>>> Hallo Ingo, Richard.
>>>>>
>>>>> I'm getting "Corrupted low memory" trace with my Intel DG45ID board
>>>>> after resume. This board has different dmi-bios-vendor... so probably it
>>>>> will be nice to have it in your patch.
>>>> I'm beginning to think that we should be doing this on all hardware,
>>>> perhaps with a kernel option to disable it for embedded devices that
>>>> really need that 64K. The low-memory corruption issue seems to be very
>>>> widespread.
>>> The problem is that the BIOS corrupted memory that it also marked as
>>> 'usable' in its E820 map it gave to the kernel. If that memory is not
>>> usable, it should not have been marked as such. Also, some of the reports
>>> showed corruption beyond this range so the workaround is not universal.
>>>
>>> So i'd really like to know what is happening there, instead of just zapping
>>> support for 64K of RAM on the majority of Linux systems.
>>>
>>> We might end up doing the same thing in the end (i.e. disable that 64k of
>>> RAM) - but it should be an informed decision, not a wild stab in the dark.
>>>
>>> 	Ingo
>> If i make memory dump like "dd if=/dev/mem of=memdump.dd bs=64k count=1"
>> before and after suspend. Will it help you find out whats happening.
> 
> The corrupted low memory printks contain the modifications. Can you
> post them please ?
> 
> Thanks,
> 
> 	tglx

I dumped all between 0000000 - 00ffff0
and there is changes at:
0004200 ->  this know one
003c000 - 003fff0 -> this was empty and now it looks like VBIOS
00d18a0 -> i don't know

cat /proc/iomem
00000000-0000ffff : reserved
00010000-0009e7ff : System RAM
0009e800-0009ffff : reserved
000e0000-000fffff : reserved
00100000-bd90dfff : System RAM
   01000000-014b1f1b : Kernel code
   014b1f1c-0171265f : Kernel data
   01794000-01842c07 : Kernel bss
.....
