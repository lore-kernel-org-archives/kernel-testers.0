From: Christian Kujau <lists-AanptEQQ3TL9uQeqpI+JUg@public.gmane.org>
Subject: Re: [Bug #15589] 2.6.34-rc1: Badness at fs/proc/generic.c:316
Date: Sun, 13 Jun 2010 11:10:59 -0700 (PDT)
Message-ID: <alpine.DEB.2.01.1006131103590.3964@bogon.housecafe.de>
References: <g77CuMUl7QI.A.5wF.V5OFMB@chimera> <YPGdyfWGvNK.A.C8B.d9OFMB@chimera> <201006131722.44062.s.L-H@gmx.de>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201006131722.44062.s.L-H-Mmb7MZpHnFY@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Stefan Lippers-Hollmann <s.L-H-Mmb7MZpHnFY@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Michael Ellerman <michael-Gsx/Oe8HsFggBc27wqDAHg@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, mchehab-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org

On Sun, 13 Jun 2010 at 17:22, Stefan Lippers-Hollmann wrote:
> Still existing in 2.6.34 and 2.6.35 HEAD, however a patch fixing the issue 
> for b2c2-flexcop/ flexcop-pci has been posted last week:

So, now we have two patches for slightly different issues?

* http://lkml.indiana.edu/hypermail/linux/kernel/1006.0/00137.html
  ...fixes the flexcop-pci.c driver.

* http://patchwork.ozlabs.org/patch/52978/
  ...fixes "some bogus firmwares include properties with "/" in their
  name". I'm not sure if this would make the flexcop-pci.c badness go 
  away too. 

Anyway, both patches are not upstream yet, but Michael mentioned that 
Grant Likely or Ben might push it eventually.

Thanks,
Christian.
-- 
BOFH excuse #363:

Out of cards on drive D:
