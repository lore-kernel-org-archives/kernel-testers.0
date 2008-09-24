From: Jonathan Corbet <corbet-T1hC0tSOHrs@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Wed, 24 Sep 2008 10:27:30 -0600
Message-ID: <20080924102730.31ee305a@bike.lwn.net>
References: <alpine.LNX.1.10.0809240014390.4671@pegasus.suse.cz>
	<20080923.211215.193696086.davem@davemloft.net>
	<21d7e9970809232245x6a91c6e2l552ff039d07e2017@mail.gmail.com>
	<20080924.003638.71148740.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080924.003638.71148740.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, jkosina-AlSwsSmVLrQ@public.gmane.org, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org

On Wed, 24 Sep 2008 00:36:38 -0700 (PDT)
David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org> wrote:

> I'm about to leave for a week or so in Paris for the netfilter
> workshop, so I hope that someone other than myself will do some data
> mining like I have instead of (merely) tossing theories around and
> finger pointing.

A data point, just in case it helps...  I've not had time to update my
desktop system, so this all-Intel, ICH9, e1000e-based box has been stuck
at 2.6.27-rc3.  It has rawhide as of shortly after the floodgates
reopened (but with my own kernel); that means X server 1.5.0 and i810
2.4.2-3.

It's happy as a clam. I'm not sure how often this problem bites, but it
hasn't gotten me.

jon
