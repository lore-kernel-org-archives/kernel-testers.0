From: Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13627] Tunnel device ignores TCP/UDP traffic
Date: Wed, 1 Jul 2009 22:34:10 +0800
Message-ID: <b6a2187b0907010734w7e7a5bbfm271f44e57e12d1b4@mail.gmail.com>
References: <ij4ZQY4URcP.A.F3B.vIASKB@chimera>
	 <6JJ2m5kyucK.A.AtD.NJASKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=fi4E5cnOvhrJGbe/r1VvrUh5wfood3JQDwfim/VHCY8=;
        b=lDltVsX/NLxNLRdmWomFDHuSwhvxY4sX2/2i/64VnpcrG7sWas3jYTK3nxF2ICXozQ
         jr8wH72AwkIO9/5iYIxUF5d/6G7+eE/7TONJ8QlWDjILbPZ/eLLa7PmwoCK8DsYs52PU
         V0evPThXHRsS4yY6G0rDqWhx/LAN34tgmnF9M=
In-Reply-To: <6JJ2m5kyucK.A.AtD.NJASKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, Herbert Xu <herbert-lOAM2aK0SrRLBo1qDEOMRrpzq4S04n8Q@public.gmane.org>, Paul Martin <pm-8fiUuRrzOP0dnm+yROfE0A@public.gmane.org>

On Mon, Jun 29, 2009 at 8:11 AM, Rafael J. Wysocki<rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
13627
> Subject =A0 =A0 =A0 =A0 : Tunnel device ignores TCP/UDP traffic
> Submitter =A0 =A0 =A0 : Paul Martin <pm-8fiUuRrzOP0dnm+yROfE0A@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-06-26 14:45 (3 days old)

I think I'm having the same issue here. Both vpnc and KVM (using tap0)
not working on 2.6.31-rc1. I think it worked before <2.6.30.

i've tried the patches as mentioned in
http://bugzilla.kernel.org/show_bug.cgi?id=3D13627, but still not
working.

Thanks,
Jeff.
