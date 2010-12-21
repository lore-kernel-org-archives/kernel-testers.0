From: Kulikov Vasiliy <segooon-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #24392] AGP aperture disabled, worked in 2.6.35
Date: Tue, 21 Dec 2010 11:42:00 +0300
Message-ID: <20101221084200.GA2537@albatros>
References: <ZRNlsjykcOD.A.b-F.20fDNB@chimera>
 <xqq2Z3iR9HJ.A.cHG.-0fDNB@chimera>
 <201012201214.57068.bjorn.helgaas@hp.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=mPqupYqC15H94VpQlLh/DYBwaCqIivqcvl6/ZWevBTg=;
        b=O3PI2rnHyE/N6XkV2eA1Q7S7FI26IUCVxUloj/5pMdWa4ebJpYvhbTB3kZ+1N7HIev
         2IfWgXRISB+iE4A2Z0CMXe7Bio2FjDHe/F1z49DYNDVopx1LiMOtNWU1k75ARJ8AG9QR
         6UP8kW/aiyIPJofpB1N+/OavdO8rtotCGOW80=
Content-Disposition: inline
In-Reply-To: <201012201214.57068.bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Stephen Kitt <steve-HEvo97dlh4E@public.gmane.org>, bugzilla-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org

Hi,

On Mon, Dec 20, 2010 at 12:14 -0700, Bjorn Helgaas wrote:
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=24392
> > First-Bad-Commit: http://git.kernel.org/linus/96576a9e1a0cdb8a43d3af5846be0948f52b4460
...
> That's kind of ugly because it's an exception to the normal "call
> pci_enable_device() first" rule, and it leads to bogus "conflicts"
> like this:

I don't understand rationale, but if standard enable-before-use breaks
the boot then explicit comment _why_ do it is necessary here.


Thanks,

-- 
Vasiliy
