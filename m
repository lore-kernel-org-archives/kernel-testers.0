From: Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15589] 2.6.34-rc1: Badness at fs/proc/generic.c:316
Date: Tue, 20 Apr 2010 15:54:53 +0000 (UTC)
Message-ID: <20100421155547.GA4222@x200>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh>
 <YeFfFNFyTSF.A.vUB.fSSzLB@tosh>
 <alpine.DEB.2.01.1004192339190.13016@bogon.housecafe.de>
 <1271765898.4324.2.camel@concordia>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=v4NafJD1dpsKSspMNG6vb8zhBVrswd1p8bPd+jr8pTI=;
        b=DWk1m8ChQ3P16CVX5SoOWG0u3tmjKpUV13BbeUyO/FbEUCvBJVnxHhlyh5W/hzcNab
         mQ93R9ycPgD6O6kARVlIVATMHG9pL3vpf6llFRkaiUQ0mzQWYsumDSUbXffW92rFfkOP
         JKWTG+jEJ5dwrhFbXzKbct/3GI6skGChIabOI=
Date: Wed, 21 Apr 2010 18:55:47 +0300
Content-Disposition: inline
In-Reply-To: <1271765898.4324.2.camel@concordia>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Michael Ellerman <michael-Gsx/Oe8HsFggBc27wqDAHg@public.gmane.org>
Cc: Christian Kujau <lists-AanptEQQ3TL9uQeqpI+JUg@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linuxppc-dev-mnsaURCQ41sdnm+yROfE0A@public.gmane.org, schwab-Td1EMuHUCqxL1ZNQvxDV9g@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Tue, Apr 20, 2010 at 10:18:18PM +1000, Michael Ellerman wrote:
> On Mon, 2010-04-19 at 23:45 -0700, Christian Kujau wrote:
> --- a/fs/proc/proc_devtree.c
> +++ b/fs/proc/proc_devtree.c
> @@ -175,6 +175,24 @@ retry:
>         return fixed_name;
>  }
>  
> +static const char *unslash_name(const char *name)
> +{
> +       char *p, *fixed_name;
> +
> +       fixed_name = kstrdup(name);
> +       if (!fixed_name) {
> +               printk(KERN_ERR "device-tree: Out of memory trying to unslash "
> +                               "name \"%s\"\n", name);
> +               return name;
> +       }
> +
> +       p = fixed_name;
> +       while ((p = strstr(p, "/")))
> +               *p++ = '_';

This is wasteful. :-)
Also, I hope we won't spit message every time allocation fail.
