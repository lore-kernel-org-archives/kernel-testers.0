From: Kristoffer Ericson <kristoffer.ericson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14267] Disassociating atheros wlan
Date: Mon, 23 Nov 2009 10:54:33 +0100
Message-ID: <20091123105433.d0eb2477.kristoffer.ericson@gmail.com>
References: <7qTjLRFNcGF.A.eSE.kCACLB@chimera>
	<mYW9sxtWd2G.A.EnF.gDACLB@chimera>
	<4B08258E.9050607@gmail.com>
	<1258886823.7094.101.camel@johannes.local>
	<20091122162936.ac603ad1.kristoffer.ericson@gmail.com>
	<1258969366.7094.136.camel@johannes.local>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:in-reply-to:references:x-mailer:mime-version
         :content-type:content-transfer-encoding;
        bh=VOOjqv+OKNFmrUV4JgiuFK3TJGEIghAoqBSN4rBxrt8=;
        b=YlQr8jgJzLG6C5sY9A/NcRCn7RPOMIu8+MkfbamuETuGIxAkdaTALoGi5W3rxmj0Jh
         KV8vvsZ4FMQngGuI9462Z3Ppq5B47KKaNvSJr3dWNDaQ7UAkWWsWE9EkWeMEo8MfoQTQ
         eAreo8Jga11irDJrZUytzIjxGyITWsQt1aBq8=
In-Reply-To: <1258969366.7094.136.camel-YfaajirXv2244ywRPIzf9A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Cc: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>

On Mon, 23 Nov 2009 10:42:46 +0100
Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org> wrote:

> On Sun, 2009-11-22 at 16:29 +0100, Kristoffer Ericson wrote:
> 
> > > +	hw->wiphy->ps_default = false;
> > > +
> > >  	hw->queues = 4;
> > >  	hw->max_rates = 4;
> > >  	hw->channel_change_time = 5000;
> > > 
> > > 
> > 
> > Johannes, am I correct in thinking that this also solves the decreased signal strength
> > issue in bug http://bugzilla.kernel.org/show_bug.cgi?id=13807 ?
> 
> Unless the driver is really very broken, that's rather unlikely.

I tried the patch last night as I said, thought that it was working. But not long after
sending that email I started seeing those disassociations again (that not appear at all in 2.6.30).
So doesnt seem like it was due to that after all. :(

> 
> johannes


-- 
Kristoffer Ericson <kristoffer.ericson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
