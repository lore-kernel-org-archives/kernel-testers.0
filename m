From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Mon, 22 Sep 2008 18:59:02 -0700 (PDT)
Message-ID: <20080922.185902.80812984.davem@davemloft.net>
References: <Pine.LNX.4.64.0809230010460.27884@twin.jikos.cz>
	<20080922.152815.22060684.davem@davemloft.net>
	<21d7e9970809221826i76081719pdd749237580fc68e@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <21d7e9970809221826i76081719pdd749237580fc68e-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Cc: jkosina-AlSwsSmVLrQ@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org

From: "Dave Airlie" <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date: Tue, 23 Sep 2008 11:26:52 +1000

> On Tue, Sep 23, 2008 at 8:28 AM, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org> wrote:
> > From: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
> > Date: Tue, 23 Sep 2008 00:15:08 +0200 (CEST)
> >
> >> On Mon, 22 Sep 2008, Dave Airlie wrote:
> >>
> >> > Sep 8th I booted my own 2.6.27-rc5 kernel based from
> >> > ec0c15afb41fd9ad45b53468b60db50170e22346
> >> > This got a corrupted e1000e checksum and every kernel since has.
 ...
> It was exactly 2.6.27-rc5 + Fedora at the time but we rarely touch
> these areas, most of the extra code is in other places, and since
> people are seeing it on !Fedora
> also I would assume it wasn't these.
> 
> I think people have seen it on earlier kernels maybe but not sure.

So I went through the changes from 2.6.27-rc5 until the SHA1
ID ec0c15afb41fd9ad45b53468b60db50170e22346 and there were
definitely no E1000 or E1000E changes during that time.

Included in there is the HPET revert and other similarly themed
changes.

commit b4609472116bb806a95e98d04767189406c74c70
Author: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Date:   Fri Aug 29 14:38:03 2008 -0700

    Revert "x86: fix HPET regression in 2.6.26 versus 2.6.25, check hpet against BAR, v3"
    
    This reverts commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd.

Some power management related changes stand out slightly:

commit 9d3593574702ae1899e23a1535da1ac71f928042
Author: John Kacur <jkacur-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date:   Tue Sep 2 14:36:13 2008 -0700

    pm_qos_requirement might sleep

and

commit 74c4633da7994eddcfcd2762a448c6889cc2b5bd
Author: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
Date:   Tue Sep 2 14:36:11 2008 -0700

    rtc-cmos: wake again from S5

The rest of the changes in that range look completely benign.
