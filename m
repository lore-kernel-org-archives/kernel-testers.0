From: Felix Blyakher <felixb-sJ/iWh9BUns@public.gmane.org>
Subject: Re: 2.6.30-rc6: BUG at fs/xfs/support/debug.c:109!
Date: Mon, 1 Jun 2009 12:58:56 -0500
Message-ID: <D7FB8214-6C2B-4D13-9B50-C53CB74885C2@sgi.com>
References: <a4423d670906010822l6e8e112dl3d6f7de9e2179850@mail.gmail.com> <B5660F1A-7940-4E4A-92E8-8C0F93C274BD@sgi.com> <a4423d670906011038qd809ebay22aebca5aaf271a4@mail.gmail.com>
Mime-Version: 1.0 (Apple Message framework v926)
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <a4423d670906011038qd809ebay22aebca5aaf271a4-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"; delsp="yes"
To: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org


On Jun 1, 2009, at 12:38 PM, Alexander Beregalov wrote:

> It was Gentoo's `emerge --metadata`. It reads many small files  
> (ebuilds).
> I am sure it cannot be easily reproduced.

Right. Otherwise many more people would've reported it.

> It runs fine everyday. I do not have a testcase.
> I can try to run it forever in loop if you need.

Yes, that will be good.
The problem is that the traces are confusing. From one
side readdir stack makes sense based on your description
of the load, but OTOH the panic is from xfs_bmapi(), which
doesn't fit in that backtrace at all. It seems like
backtrace is from the concurrently running different thread.
Don't have good idea for this bug atm.

Felix
