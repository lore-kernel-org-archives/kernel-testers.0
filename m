From: Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
Subject: Re: PM: resume devices took 9.176 seconds
Date: Sat, 18 Jul 2009 13:49:14 +0200
Message-ID: <20090718114913.GF1433@ucw.cz>
References: <4A52247B.4040204@fisher-privat.net>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <4A52247B.4040204-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, David Brownell <dbrownell-Rn4VEauK+AKRv+LV9MX5uipxlwaOVQ5f@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>

On Mon 2009-07-06 18:21:15, Alexey Fisher wrote:
> Hallo all,
> it testing a lot git tree especially suspend and resume. With my new  
> Intel DG45ID board i get always this trace:
>
> ============================================
> [  176.763922] PM: resume devices took 9.176 seconds
> [  176.763924] ------------[ cut here ]------------
> [  176.763930] WARNING: at kernel/power/suspend_test.c:52  
> suspend_test_finish+0x7c/0x80()
>
> this is related with the commit:
>    commit 77437fd4e61f87cc94d9314baa5cbf50e3ccdf54
> Author: David Brownell <dbrownell-Rn4VEauK+AKRv+LV9MX5uipxlwaOVQ5f@public.gmane.org>
> Date:   Wed Jul 23 21:28:33 2008 -0700
>
> probobly it's depend  on this message:
> [  173.076075] ata1: link is slow to respond, please be patient (ready=0)
>
> so it's looks normal for this board and harddrive. I think it should be  
> some way to change default TEST_SUSPEND_SECONDS by .config or  
> kernel-parameter. I changed default settings to 10 in  
> kernel/power/suspend_test.c but this is not the way it should be done.

I'm not sure if that's normal. Does it also delay on boot?

-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
