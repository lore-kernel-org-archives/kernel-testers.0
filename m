From: Kristoffer Ericson <kristoffer.ericson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14267] Disassociating atheros wlan
Date: Tue, 17 Nov 2009 19:13:57 +0100
Message-ID: <20091117191357.7c64ba70.kristoffer.ericson@gmail.com>
References: <ipicVA1QUFF.A.zWB.1mdALB@chimera>
	<OWmO9uyC1hM.A.yiC._ndALB@chimera>
	<4B01F3FE.8040707@gmail.com>
	<20091117113320.8aef894a.kristoffer.ericson@gmail.com>
	<4B02E64D.2010700@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:in-reply-to:references:x-mailer:mime-version
         :content-type:content-transfer-encoding;
        bh=lo+nEBzW6pWYmlfJypHzzytqyrYmolv9ikdavxWtl3U=;
        b=X0Mc7seOS+lsM15H/CvJo57fD3e6FxyfowO/ekihOI52ybf4+CVADs4kRCBx7Fvoo3
         +ClY/cPr5Qk0MtsIe4qrk5JAjq93iZApKKjGXPt8neucr9LtGJYDgsmPWD6g2cyGsLcO
         hNF5MxC4WN/9S9AAmYpVCjKD7CupsaphjTjZ4=
In-Reply-To: <4B02E64D.2010700-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>

On Tue, 17 Nov 2009 10:07:09 -0800
"Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:

> Kristoffer Ericson wrote:
> >
> >
> > Im still hitting this so basicly using 2.6.30 until it get sorted. Will try and make
> > some time to test the different commits. Last time I waited for it to disconnect which
> > could take 10-40min. Since it depends on the network load Im now going to increase
> > the load to see if I hit it quicker (and thus finding the error commit).
> >
> > So in short, its still valid and I will try and make time to fix it :)
> >
> >
> >
> >    
> o.k. so it is something that is enough to
> cause an inconvenience.

Especially if you are using your computer as a router to other computers
and they start screaming every time internet goes down. :(

> 
> Justin P. mattock


-- 
Kristoffer Ericson <kristoffer.ericson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
