From: "Justin Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11552] Disabling IRQ #23
Date: Mon, 22 Sep 2008 09:20:55 -0700
Message-ID: <dd18b0c30809220920j7bd47167ibcc4ca72bae239f0@mail.gmail.com>
References: <dd18b0c30809211616g658b50c8k2ea9f9953f1de96f@mail.gmail.com>
	 <Pine.LNX.4.44L0.0809220651080.13379-100000@netrider.rowland.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=g5vLG6Bkw8lh74cqnMRyrdPGJStw5AUwTIIqAmtoycc=;
        b=og9Qs1Ph0xvtFIkysNpjVkxsWWiky2VESeNtoYjsYl+9xf2GYAkPkFoYpfzCOmbOr5
         TIs5uQaZucUE2YXyfnaho9IPLgEUekRD++DfQcpO4ZgqVY5KohSKuO4sVlII7v8MLDNc
         3H+4kA5taHf0dnxJ3fhCR97+np4lG0nJyFRdw=
In-Reply-To: <Pine.LNX.4.44L0.0809220651080.13379-100000-pYrvlCTfrz9XsRXLowluHWD2FQJk+8+b@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, David Brownell <david-b-yBeKhBN/0LDR7s880joybQ@public.gmane.org>

On Mon, Sep 22, 2008 at 3:53 AM, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org> wrote:
> On Sun, 21 Sep 2008, Justin Mattock wrote:
>
>> From over here, I did a bad install
>> of isight-firmware-tools, causing hal and udev
>> to clash.  After making sure the package was either
>> using hal or udev, there is no message of disable irq #23.
>> If its not too much trouble is there a way to verify that this was
>> the case, i.g. if udev creates a dev, then hal creates the same device
>> will this cause ehci_hcd to have messages of this kind? If so
>> then thats what happened, if not then theres something else causing this.
>
> You didn't read what I wrote earlier, did you?  The "HC died" message
> should NEVER occur!  It doesn't matter what games you play with hal and
> udev -- it should NEVER occur.  Not ever.
>
> And since the "HC died" is what causes IRQ #23 to be disabled, that
> shouldn't happen either.
>
> Alan Stern
>
>

appologize for not fully understanidng,
I'm just getting confused with why and what is causing this
to occur. The only reason for playing with hal and udev
is to have this message appear, if I leave them out of the picture
the system runs fine.
Anyways, I'm up to trying anything at this point, and again
appologize for causing any heat.

-- 
Justin P. Mattock
