From: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Subject: Re: [regression][x86_64] 2.6.26-02962-g4515889, kernel panic on
	boot.
Date: Mon, 21 Jul 2008 02:16:07 +0200
Message-ID: <1216599367.4629.4.camel@zwerg>
References: <1216291089.6158.13.camel@zwerg>
	 <1216317806.6341.15.camel@zwerg>
	 <86802c440807171119g6da184c6p4df5a1896d70c815@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <86802c440807171119g6da184c6p4df5a1896d70c815-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, jeremy-TSDbQ3PG+2Y@public.gmane.org, gcosta <gcosta-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

Am Donnerstag, den 17.07.2008, 11:19 -0700 schrieb Yinghai Lu:
> can you connect serial console and boot with
> debug apic=verbose console=uart8250,io,0x03f8,115200n8?
i didn't get tty to work, seems like it crashed before console was
enabled. but it's not important anymore. i found the patch braking boot
for me, so i'll report it to author.
Thank you for your time.
