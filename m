From: Grant Likely <grant.likely-s3s/WqlpOiPyB63q8FvJNQ@public.gmane.org>
Subject: Re: [Bug #15589] 2.6.34-rc1: Badness at fs/proc/generic.c:316
Date: Mon, 14 Jun 2010 09:42:40 -0600
Message-ID: <AANLkTikukzksZJnp1ETRkiSYQYihhmT8nu9-m5zc0dlM@mail.gmail.com>
References: <g77CuMUl7QI.A.5wF.V5OFMB@chimera> <YPGdyfWGvNK.A.C8B.d9OFMB@chimera> 
	<201006131722.44062.s.L-H@gmx.de> <alpine.DEB.2.01.1006131103590.3964@bogon.housecafe.de> 
	<AANLkTily7ZDG16uE2vSsq8t3mssuATwtHnr8OajX8oga@mail.gmail.com> 
	<20100614063948.GA3999@x200>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100614063948.GA3999@x200>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Christian Kujau <lists-AanptEQQ3TL9uQeqpI+JUg@public.gmane.org>, Stefan Lippers-Hollmann <s.L-H-Mmb7MZpHnFY@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Michael Ellerman <michael-Gsx/Oe8HsFggBc27wqDAHg@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, mchehab-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org

On Mon, Jun 14, 2010 at 12:39 AM, Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>=
 wrote:
> On Sun, Jun 13, 2010 at 01:57:40PM -0600, Grant Likely wrote:
>> On brief review, they look like completely different issues. =A0I do=
ubt
>> the second patch will fix the flexcop-pci issue.
>
> It will, see how name wht slashes propagated by request_irq()

I think we've crossed wires.  By second patch I mean the patch that
changes OF code.  That change has absolutely no bearing on the
flexcop-pci driver.  The patch to the flexcop-pci driver looks correct
to me, but it is completely unrelated to the OF badness.

g.
