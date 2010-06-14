From: Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15589] 2.6.34-rc1: Badness at fs/proc/generic.c:316
Date: Mon, 14 Jun 2010 09:39:48 +0300
Message-ID: <20100614063948.GA3999@x200>
References: <g77CuMUl7QI.A.5wF.V5OFMB@chimera>
 <YPGdyfWGvNK.A.C8B.d9OFMB@chimera>
 <201006131722.44062.s.L-H@gmx.de>
 <alpine.DEB.2.01.1006131103590.3964@bogon.housecafe.de>
 <AANLkTily7ZDG16uE2vSsq8t3mssuATwtHnr8OajX8oga@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=hWJxat9GfcR2qYrhO3vs/Cy8vc9Z7p4OL393nukN4xc=;
        b=xSdeujFheLljiBgu9kX10gNceR07aL1h+C5i8pB4tdOVENdITomEIfZOlU4OTrJ7UZ
         dn9EkUBTFemRKo2VVuJD9S8yJjjqdkPtaEPnLI3xg+vuiBDKyZhA7cjZUVjb7Ur1JxFh
         FtThjxZdRR0Nkai9LgIgCN8Wb4DK+ARz4g1D0=
Content-Disposition: inline
In-Reply-To: <AANLkTily7ZDG16uE2vSsq8t3mssuATwtHnr8OajX8oga-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Grant Likely <grant.likely-s3s/WqlpOiPyB63q8FvJNQ@public.gmane.org>
Cc: Christian Kujau <lists-AanptEQQ3TL9uQeqpI+JUg@public.gmane.org>, Stefan Lippers-Hollmann <s.L-H-Mmb7MZpHnFY@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Michael Ellerman <michael-Gsx/Oe8HsFggBc27wqDAHg@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, mchehab-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org

On Sun, Jun 13, 2010 at 01:57:40PM -0600, Grant Likely wrote:
> On brief review, they look like completely different issues.  I doubt
> the second patch will fix the flexcop-pci issue.

It will, see how name wht slashes propagated by request_irq()
