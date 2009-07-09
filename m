From: Jesse Barnes <jbarnes@virtuousgeek.org>
Subject: Re: [Bug #13667] drm: display arifacts when X.Org is stopped
Date: Thu, 9 Jul 2009 10:09:14 -0700
Message-ID: <20090709100914.2502763a@jbarnes-g45>
References: <35kKlbXMqWN.A.RXD.D0oUKB@chimera>
	<200907080700.33120.elendil@planet.nl>
	<21d7e9970907081642l3ef6df5blde31df656cd74432@mail.gmail.com>
	<200907090328.53643.elendil@planet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753743AbZGIRJ1@vger.kernel.org>
In-Reply-To: <200907090328.53643.elendil@planet.nl>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Frans Pop <elendil@planet.nl>
Cc: Dave Airlie <airlied@gmail.com>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, "Siddha, Suresh B" <suresh.b.siddha@intel.com>, "Pallipadi, Venkatesh" <venkatesh.pallipadi@intel.com>

On Thu, 9 Jul 2009 03:28:52 +0200
Frans Pop <elendil@planet.nl> wrote:

> On Thursday 09 July 2009, Dave Airlie wrote:
> > > [1] I'd even go so far as to feel it should be a standard test
> > > case for video driver developers, given that this is the third
> > > time it's shown regressions :-) For the third case the bug was in
> > > the X.Org i830 driver:
> > > http://bugs.freedesktop.org/show_bug.cgi?id=14481.
> >
> > It might surprise you to learn this, but vesafb has never been
> > considered supportable by the X.org community, and you'll notice not
> > very many distros ship with it enabled, it breaks suspend/resume on
> > many machines for example.
> 
> I beg to disagree.
> - Debian does have it enabled by default.
> - I have always used it on all my machines without any problems.
> - Both my laptops and my desktop suspend and resume perfectly with
> vesafb and X.Org.
> - Jesse Barnes seems to disagree with you. To quote from the BR cited
>   above (comment #11): "and you're right, making things work with
> vesafb isn't unreasonable".

Since my ears are burning I figured I'd better qualify this: I made
that statement before we had KMS upstream.  Supporting the case where
multiple drivers try to bang on the same device has always been a big
pain.  In a KMS configuration we don't support it at all.

> Yes, and I really welcome the great progress being made there. But
> for me it's not yet an option as I run Debian stable on these boxes.

Sounds like that's not an option for you though... which means
debugging where the interaction is going wrong...

Jesse
