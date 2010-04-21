From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #15589] 2.6.34-rc1: Badness at fs/proc/generic.c:316
Date: Wed, 21 Apr 2010 06:57:18 +0200
Message-ID: <201004210657.18864.rjw@sisk.pl>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh> <20100421155547.GA4222@x200> <1271809299.13262.6.camel@concordia>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1271809299.13262.6.camel@concordia>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: michael-Gsx/Oe8HsFggBc27wqDAHg@public.gmane.org
Cc: Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Christian Kujau <lists-AanptEQQ3TL9uQeqpI+JUg@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linuxppc-dev-mnsaURCQ41sdnm+yROfE0A@public.gmane.org, schwab-Td1EMuHUCqxL1ZNQvxDV9g@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Wednesday 21 April 2010, Michael Ellerman wrote:
> On Wed, 2010-04-21 at 18:55 +0300, Alexey Dobriyan wrote:
> > On Tue, Apr 20, 2010 at 10:18:18PM +1000, Michael Ellerman wrote:
> > > On Mon, 2010-04-19 at 23:45 -0700, Christian Kujau wrote:
> > > --- a/fs/proc/proc_devtree.c
> > > +++ b/fs/proc/proc_devtree.c
> > > @@ -175,6 +175,24 @@ retry:
> > >         return fixed_name;
> > >  }
> > >  
> > > +static const char *unslash_name(const char *name)
> > > +{
> > > +       char *p, *fixed_name;
> > > +
> > > +       fixed_name = kstrdup(name);
> > > +       if (!fixed_name) {
> > > +               printk(KERN_ERR "device-tree: Out of memory trying to unslash "
> > > +                               "name \"%s\"\n", name);
> > > +               return name;
> > > +       }
> > > +
> > > +       p = fixed_name;
> > > +       while ((p = strstr(p, "/")))
> > > +               *p++ = '_';
> > 
> > This is wasteful. :-)
> 
> Whatever, patches welcome :)
> 
> > Also, I hope we won't spit message every time allocation fail.
> 
> We do. Your system is mostly hosed anyway, but feel free to rate limit
> it or something.

OK

Is anyone going to post a clean patch for that with a sign-off?

Rafael
