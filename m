From: Kristoffer Ericson <kristoffer.ericson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14267] Disassociating atheros wlan
Date: Mon, 23 Nov 2009 11:48:32 +0100
Message-ID: <20091123114832.0a7730a7.kristoffer.ericson@gmail.com>
References: <7qTjLRFNcGF.A.eSE.kCACLB@chimera>
	<mYW9sxtWd2G.A.EnF.gDACLB@chimera>
	<4B08258E.9050607@gmail.com>
	<1258886823.7094.101.camel@johannes.local>
	<20091122162936.ac603ad1.kristoffer.ericson@gmail.com>
	<1258969366.7094.136.camel@johannes.local>
	<20091123105433.d0eb2477.kristoffer.ericson@gmail.com>
	<1258972425.7094.144.camel@johannes.local>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:in-reply-to:references:x-mailer:mime-version
         :content-type:content-transfer-encoding;
        bh=UOSbuZagQCVw5615WyFvt6Uw5QgjOjIktq8HiFRJDOY=;
        b=Yw0jCNd5U+qUqrWGtskCwh9RbnoyeK6LvT4YG4grrKUyrFEWEDkFt3180zdDKsVOLR
         TTEe4vTZ001YsrDP2selhhGANMNbf6mvPYNpYnOiByb/BCQ+sD+EdmjsvGXEbPkLUbQB
         ADcwmcS4vdScmvweQ2u8yTCjfiGn8VZJEkNVU=
In-Reply-To: <1258972425.7094.144.camel-YfaajirXv2244ywRPIzf9A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Cc: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>

On Mon, 23 Nov 2009 11:33:45 +0100
Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org> wrote:

> On Mon, 2009-11-23 at 10:54 +0100, Kristoffer Ericson wrote:
> 
> > > > > +	hw->wiphy->ps_default = false;
> > > > > +
> 
> > I tried the patch last night as I said, thought that it was working. But not long after
> > sending that email I started seeing those disassociations again (that not appear at all in 2.6.30).
> > So doesnt seem like it was due to that after all. :(
> 
> But then how reliable is your bisect result? The effect of the patch in
> question would've been completely disabled by this line.

Will have to ask Justin about that. 

> 
> johannes


-- 
Kristoffer Ericson <kristoffer.ericson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
