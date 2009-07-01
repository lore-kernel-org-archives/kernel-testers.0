From: Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13663] suspend to ram regression (IDE related)
Date: Wed, 1 Jul 2009 22:31:24 +0800
Message-ID: <b6a2187b0907010731k510150b5u1c7fce8cbed7c33b@mail.gmail.com>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera>
	 <5Hhc7UkUKEO.A.RvE.BjASKB@chimera> <4A489775.6020102@numericable.fr>
	 <20090629.033730.193709457.davem@davemloft.net>
	 <4A48E307.2010208@numericable.fr>
	 <b6a2187b0906290921w15afd443qccb943ccfd48688b@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=/YrGF0IDyesHZBsrpbqJ3EjpYHx8wsk4xjgsGUVQOTo=;
        b=nNAsDi3UnBKeleoIgKOc/e/1nH7DMIcPfEX7s4B06n/Ci7WbdGA0WTKIXrwKCSByUe
         r0YHjo+vhSbO9OXUUTQpieXUY6Laqb3GAkrYGmjJLRqnvtnMzB/9A33QzCxzfDK3BTTt
         9v2Ls0azPV7tbgqlKC7220cMr1MnNzgFPmweM=
In-Reply-To: <b6a2187b0906290921w15afd443qccb943ccfd48688b-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Etienne Basset <etienne.basset-Bf/eaXMDFuuXqB7oj33eUg@public.gmane.org>
Cc: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org

On Tue, Jun 30, 2009 at 12:21 AM, Jeff Chua<jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:

> I just tried, and it "seems" to work. Will try a few more cycles.

STD/STR survived quite a few cycles now. Patch seems to be doing the
right thing.

On Mon, Jun 29, 2009 at 11:51 PM, Etienne
Basset<etienne.basset-Bf/eaXMDFuuXqB7oj33eUg@public.gmane.org> wrote:

> To have STR/resume work with current git, I have to :

> 1) apply Bart's patch

This is not yet in Linus's tree. And much needed to really fix the problem.

> 2) revert this commit : a1317f714af7aed60ddc182d0122477cbe36ee9b

This is already in Linus's tree.


Thanks,
Jeff.
