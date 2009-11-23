From: Kristoffer Ericson <kristoffer.ericson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14267] Disassociating atheros wlan
Date: Mon, 23 Nov 2009 14:20:48 +0100
Message-ID: <20091123142048.83200933.kristoffer.ericson@gmail.com>
References: <7qTjLRFNcGF.A.eSE.kCACLB@chimera>
	<mYW9sxtWd2G.A.EnF.gDACLB@chimera>
	<4B08258E.9050607@gmail.com>
	<1258886823.7094.101.camel@johannes.local>
	<20091122162936.ac603ad1.kristoffer.ericson@gmail.com>
	<1258969366.7094.136.camel@johannes.local>
	<20091123105433.d0eb2477.kristoffer.ericson@gmail.com>
	<1258972425.7094.144.camel@johannes.local>
	<20091123114832.0a7730a7.kristoffer.ericson@gmail.com>
	<1258973421.7094.152.camel@johannes.local>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:in-reply-to:references:x-mailer:mime-version
         :content-type:content-transfer-encoding;
        bh=8u0flbKlZij7S7nXfTa22VEN6BWk0rkSexRzKP9yH18=;
        b=t+se7r5vvRYQFMtI2too/+BEowJf03Ezty0ledVZYW5jmZu3/ZmB1XIjmq1zuivCLS
         Aw8IdH+QBiU6TmFVP/OBbdeKhpQsl8+OJAXr5pjo4T3obttPEq8ZI6pC3zBHS788O7x9
         VPCiJ8Y3SsSGPj81yTX597dRVb87vwdSu5G40=
In-Reply-To: <1258973421.7094.152.camel-YfaajirXv2244ywRPIzf9A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Cc: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>

On Mon, 23 Nov 2009 11:50:21 +0100
Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org> wrote:

> On Mon, 2009-11-23 at 11:48 +0100, Kristoffer Ericson wrote:
> > On Mon, 23 Nov 2009 11:33:45 +0100
> > Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org> wrote:
> > 
> > > On Mon, 2009-11-23 at 10:54 +0100, Kristoffer Ericson wrote:
> > > 
> > > > > > > +	hw->wiphy->ps_default = false;
> > > > > > > +
> > > 
> > > > I tried the patch last night as I said, thought that it was working. But not long after
> > > > sending that email I started seeing those disassociations again (that not appear at all in 2.6.30).
> > > > So doesnt seem like it was due to that after all. :(
> > > 
> > > But then how reliable is your bisect result? The effect of the patch in
> > > question would've been completely disabled by this line.
> > 
> > Will have to ask Justin about that. 
> 
> Oh, sorry. Maybe you're just running into different bugs that have the
> same visible effect?

Its quite possible I guess. I will do an bisect and see if I can
get anymore output.


> 
> johannes


-- 
Kristoffer Ericson <kristoffer.ericson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
