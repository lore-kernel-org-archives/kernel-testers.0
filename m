From: Grant Likely <grant.likely-s3s/WqlpOiPyB63q8FvJNQ@public.gmane.org>
Subject: Re: [Bug #15589] 2.6.34-rc1: Badness at fs/proc/generic.c:316
Date: Sun, 13 Jun 2010 13:57:40 -0600
Message-ID: <AANLkTily7ZDG16uE2vSsq8t3mssuATwtHnr8OajX8oga@mail.gmail.com>
References: <g77CuMUl7QI.A.5wF.V5OFMB@chimera> <YPGdyfWGvNK.A.C8B.d9OFMB@chimera> 
	<201006131722.44062.s.L-H@gmx.de> <alpine.DEB.2.01.1006131103590.3964@bogon.housecafe.de>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.2.01.1006131103590.3964-uKsf7x9sgtqQ/Pez2Lbyp4QuADTiUCJX@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Christian Kujau <lists-AanptEQQ3TL9uQeqpI+JUg@public.gmane.org>
Cc: Stefan Lippers-Hollmann <s.L-H-Mmb7MZpHnFY@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Michael Ellerman <michael-Gsx/Oe8HsFggBc27wqDAHg@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, mchehab-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org

On Sun, Jun 13, 2010 at 12:10 PM, Christian Kujau <lists@nerdbynature.d=
e> wrote:
> On Sun, 13 Jun 2010 at 17:22, Stefan Lippers-Hollmann wrote:
>> Still existing in 2.6.34 and 2.6.35 HEAD, however a patch fixing the=
 issue
>> for b2c2-flexcop/ flexcop-pci has been posted last week:
>
> So, now we have two patches for slightly different issues?
>
> * http://lkml.indiana.edu/hypermail/linux/kernel/1006.0/00137.html
> =A0...fixes the flexcop-pci.c driver.
>
> * http://patchwork.ozlabs.org/patch/52978/
> =A0...fixes "some bogus firmwares include properties with "/" in thei=
r
> =A0name". I'm not sure if this would make the flexcop-pci.c badness g=
o
> =A0away too.
>
> Anyway, both patches are not upstream yet, but Michael mentioned that
> Grant Likely or Ben might push it eventually.

On brief review, they look like completely different issues.  I doubt
the second patch will fix the flexcop-pci issue.  I'll pick up the
device tree patch, but the flexcop-pci patch should go in by the
v4l/dvb tree.

g.
