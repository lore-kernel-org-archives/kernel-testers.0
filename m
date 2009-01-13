From: "Jeff Chua" <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12422] 2.6.28-git can't resume from str
Date: Tue, 13 Jan 2009 12:28:18 +0800
Message-ID: <b6a2187b0901122028w3f85fc9aj41d7c8ac44adb2ed@mail.gmail.com>
References: <XU-8icArWLM.A.UpG.8GfaJB@chimera>
	 <b6a2187b0901110813s5429573cm7d78f39e288f70a3@mail.gmail.com>
	 <20090111162949.GA15338@elte.hu>
	 <200901111736.24350.borntraeger@de.ibm.com>
	 <20090111163904.GA21806@elte.hu>
	 <b6a2187b0901110856j3f2ff6fepc19a816178e38a95@mail.gmail.com>
	 <20090111180714.GB15326@elte.hu>
	 <b6a2187b0901121720s1f9b12ednb76a90dcc7eddc81@mail.gmail.com>
	 <alpine.LFD.2.00.0901121807070.6528@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=kCuexO9EqHGEJqRvisLTbhWYC1QvblwJ/UC8l3DE48c=;
        b=p1fXH263qOYMnikX7fyPAtKpDirCzqviDe/6gccBXaCYXOgnoT2ETFnXd/AWyUcF+P
         pFv0kjRyYXpHct75HDwUPzbx2fU8y6esiJyUM/8RzSZ0ux1hVNg8AJxlU4PhH+NSTxaV
         7GoqSijspiOUg/SXfbx4iiHJqsPFb68JlfC2M=
In-Reply-To: <alpine.LFD.2.00.0901121807070.6528-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Christian Borntraeger <borntraeger-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>, Daniel Drake <dsd-aBrp7R+bbdUdnm+yROfE0A@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Phil Dibowitz <phil-LijsOF1cAEA@public.gmane.org>

On Tue, Jan 13, 2009 at 9:28 AM, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:
> that's a feature - the btrfs history looks like this. You can mark get out
> of that bisection set by doing this:

On Tue, Jan 13, 2009 at 10:08 AM, Linus Torvalds
<torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:
>> Is this a bug or a feature?
> You bisected into the btrfs development chain. Just say "git bisect good"
> when this happens, and you'll be ok.

Ingo, Linus,

Thanks for the explanation. For a while, I was repeating the same
thing just thinking my filesystem was corrupted.

Now, I'm can happily continue to bisect further.

Thanks,
Jeff.
