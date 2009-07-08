From: Matthew Garrett <mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>
Subject: Re: Intel BIOS - Corrupted low memory at ffff880000004200
Date: Wed, 8 Jul 2009 12:39:49 +0100
Message-ID: <20090708113949.GA8960@srcf.ucam.org>
References: <4A5210A2.2080301@fisher-privat.net> <4A52254F.8080103@fisher-privat.net>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <4A52254F.8080103-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Richard A. Holden III" <aciddeath-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On Mon, Jul 06, 2009 at 06:24:47PM +0200, Alexey Fisher wrote:
> Hallo Ingo, Richard.
>
> I'm getting "Corrupted low memory" trace with my Intel DG45ID board
> after resume. This board  has different dmi-bios-vendor... so probably
> it will be nice to have it in your patch.

I'm beginning to think that we should be doing this on all hardware, 
perhaps with a kernel option to disable it for embedded devices that 
really need that 64K. The low-memory corruption issue seems to be very 
widespread.

-- 
Matthew Garrett | mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org
