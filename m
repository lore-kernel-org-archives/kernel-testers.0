From: Stephen Kitt <steve-HEvo97dlh4E@public.gmane.org>
Subject: Re: [Bug #24392] AGP aperture disabled, worked in 2.6.35
Date: Tue, 21 Dec 2010 08:10:39 +0100
Message-ID: <20101221071039.GH7647@sk2.org>
References: <ZRNlsjykcOD.A.b-F.20fDNB@chimera>
 <xqq2Z3iR9HJ.A.cHG.-0fDNB@chimera>
 <201012201214.57068.bjorn.helgaas@hp.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <201012201214.57068.bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, bugzilla-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org, Kulikov Vasiliy <segooon-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

Hi,

On Mon, Dec 20, 2010 at 12:14:56PM -0700, Bjorn Helgaas wrote:
> That's kind of ugly because it's an exception to the normal "call
> pci_enable_device() first" rule, and it leads to bogus "conflicts"
> like this:
> 
>   pnp 00:0d: disabling [mem 0x00000000-0x0009ffff] because it overlaps 0000:00:00.0 BAR 0 [mem 0x00000000-0x07ffffff pref]
> 
> but I think we're stuck with it for now, and the simplest solution
> is to just revert 96576a9e1a.

I'm guessing
http://git.kernel.org/linus/46cfc58a77de5fc8385ad87077f4dc14633e57a7
should also be reverted then...

Regards,

Stephen
