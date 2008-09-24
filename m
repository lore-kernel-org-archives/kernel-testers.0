From: "Dave Airlie" <airlied@gmail.com>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Wed, 24 Sep 2008 18:59:34 +1000
Message-ID: <21d7e9970809240159u6db747eex51892061846b2251@mail.gmail.com>
References: <alpine.LNX.1.10.0809240014390.4671@pegasus.suse.cz>
	 <20080923.211215.193696086.davem@davemloft.net>
	 <21d7e9970809232245x6a91c6e2l552ff039d07e2017@mail.gmail.com>
	 <20080924.003638.71148740.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754589AbYIXI7x@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=097yn4ryTx3wl23jpCnfJTY0Nm50QOkrwMyRebeXmuA=;
        b=KyGc+joiJz+9RXft4I4tioOB+otteKAz+oZwhTfR+sftQXG0nYbokLCeC4+PUlR/jR
         ccZPiKACwauKZcaOaTwRQ6Fi7LkQH0dtNj6lPBypCe02bnaTU2uLIhYx/2ON3QxwT7YP
         awrj3VODgg9eZ6IwV71r5I1yZZqiv5/CPDMEM=
In-Reply-To: <20080924.003638.71148740.davem@davemloft.net>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Miller <davem@davemloft.net>
Cc: jkosina@suse.cz, jeffrey.t.kirsher@intel.com, david.vrabel@csr.com, rjw@sisk.pl, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, chrisl@vmware.com

On Wed, Sep 24, 2008 at 5:36 PM, David Miller <davem@davemloft.net> wrote:
> From: "Dave Airlie" <airlied@gmail.com>
> Date: Wed, 24 Sep 2008 15:45:46 +1000
>
>> I'm still dubious about this, wouldn't we see other wierdass side
>> effects if X was trashing the BARs on other devices?
>
> Sure.  My theory is that it's a recent xorg change causing this,
> so I've been going through GIT history for xserver, libpciaccess,
> and the intel driver for the past year looking for clues.
>
> If there is usually a gap after the video device, there would just
> be no response from the PCI bus, and the way that's handled is
> chipset specific.  At least a while back, most x86 systems would
> silently ignore writes and return all 1's in such a case, but
> they may be generating bus error events these days.  I simply don't
> know.

The only thing I can think off then is either the pciaccess conversion
of the intel Xorg driver,
or maybe something going wrong since PAT support was added.

>
>> I think tglx is on the right path, same problem as e1000, code is
>> stupid, it can reenter the nvram read/write code from irq
>> context, and pwn itself.
>
> The e1000e side here is reproducable way too easily for it to be the
> same case, as far as I see it.
>
> The e1000 driver has probably had this problem for years and we've
> only recently had some concrete cases of it triggering.
>
> Also, what utility are you running on your system that is even
> accessing the NVRAM on the e1000e card?  Knowing that might help
> us understand why this problem has appeared now.  Maybe there is
> some diagnostic or monitoring tool that is now becoming prevalent
> in these distributions where it triggers.

The driver seems quite happy to access the NVRAM, I think Thomas has
some backtraces that show
it clearly doing silly reentrant things...

>
> This problem started happening seemingly "all of a sudden", even to
> people who have been keeping sort-of recent with their kernels, such
> as yourself.
>
> Yet we can't get any sense yet what range of kernel versions are in
> use when the problem triggers.

I've seen it reported at least at 2.6.27-rc1 and maybe even one of
Fedora's -rc0 kernels.

Dave.

>
> I'm about to leave for a week or so in Paris for the netfilter
> workshop, so I hope that someone other than myself will do some data
> mining like I have instead of (merely) tossing theories around and
> finger pointing.
>
