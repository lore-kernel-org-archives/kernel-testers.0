From: Alexey Dobriyan <adobriyan@gmail.com>
Subject: Re: [Bug #15589] 2.6.34-rc1: Badness at fs/proc/generic.c:316
Date: Tue, 20 Apr 2010 15:55:28 +0000 (UTC)
Message-ID: <20100421155547.GA4222__10989.4281755716$1271778928$gmane$org@x200>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh> <YeFfFNFyTSF.A.vUB.fSSzLB@tosh>
	<alpine.DEB.2.01.1004192339190.13016@bogon.housecafe.de>
	<1271765898.4324.2.camel@concordia>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linuxppc-dev-bounces+glppe-linuxppc-embedded-2=m.gmane.org@lists.ozlabs.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
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
List-Id: <kernel-testers.vger.kernel.org>
List-Unsubscribe: <https://lists.ozlabs.org/options/linuxppc-dev>,
	<mailto:linuxppc-dev-request@lists.ozlabs.org?subject=unsubscribe>
List-Archive: <http://lists.ozlabs.org/pipermail/linuxppc-dev>
List-Post: <mailto:linuxppc-dev@lists.ozlabs.org>
List-Help: <mailto:linuxppc-dev-request@lists.ozlabs.org?subject=help>
List-Subscribe: <https://lists.ozlabs.org/listinfo/linuxppc-dev>,
	<mailto:linuxppc-dev-request@lists.ozlabs.org?subject=subscribe>
Sender: linuxppc-dev-bounces+glppe-linuxppc-embedded-2=m.gmane.org@lists.ozlabs.org
Errors-To: linuxppc-dev-bounces+glppe-linuxppc-embedded-2=m.gmane.org@lists.ozlabs.org
To: Michael Ellerman <michael@ellerman.id.au>
Cc: Christian Kujau <lists@nerdbynature.de>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "Rafael J. Wysocki" <rjw@sisk.pl>, linuxppc-dev@ozlabs.org, schwab@linux-m68k.org, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>

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
