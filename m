From: Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13663] suspend to ram regression (IDE related)
Date: Tue, 30 Jun 2009 00:21:23 +0800
Message-ID: <b6a2187b0906290921w15afd443qccb943ccfd48688b@mail.gmail.com>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera>
	 <5Hhc7UkUKEO.A.RvE.BjASKB@chimera> <4A489775.6020102@numericable.fr>
	 <20090629.033730.193709457.davem@davemloft.net>
	 <4A48E307.2010208@numericable.fr>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=dIE2yGpt/15k6JbpP9bBQibw6yKDFWz8tdjmT3XqYdQ=;
        b=To+3uhV0/Nthouy6euxJr3cU/MX9Hgs5fwPgXxe/zPBgibRMG2cEz8Q/MS17HPkPDb
         NgkfT+P56gL5Zmt0OGG0PKVeA173Sumn0s9t/PSIjXkxye472A1Dw6TlpRkkkBt2UmBA
         iCCqHJ0/wEDRzVufnd5GWO57jjx9EiWa4FWeQ=
In-Reply-To: <4A48E307.2010208-Bf/eaXMDFuuXqB7oj33eUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Etienne Basset <etienne.basset-Bf/eaXMDFuuXqB7oj33eUg@public.gmane.org>
Cc: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org

On Mon, Jun 29, 2009 at 11:51 PM, Etienne
Basset<etienne.basset-Bf/eaXMDFuuXqB7oj33eUg@public.gmane.org> wrote:
> i ran a new bisection to identify the commit that cause pain after -rc1
> commit a1317f714af7aed60ddc182d0122477cbe36ee9b
> To have STR/resume work with current git, I have to :
> 1) apply Bart's patch
> 2) revert this commit : a1317f714af7aed60ddc182d0122477cbe36ee9b

I just tried, and it "seems" to work. Will try a few more cycles.

Thanks,
Jeff.
