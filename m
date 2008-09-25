From: "Dave Airlie" <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Fri, 26 Sep 2008 07:45:37 +1000
Message-ID: <21d7e9970809251445s216efcc3kaba639d5e29c51aa@mail.gmail.com>
References: <20080923.150722.141587696.davem@davemloft.net>
	 <200809251156.10648.jbarnes@virtuousgeek.org>
	 <alpine.LNX.1.10.0809252218470.3389@pegasus.suse.cz>
	 <200809251236.12287.jbarnes@virtuousgeek.org>
	 <alpine.LNX.1.10.0809252234400.3389@pegasus.suse.cz>
	 <21d7e9970809251406gb2bdacbuf9ff1bde3d118cdb@mail.gmail.com>
	 <4807377b0809251442x67e4e9eia706b70ae1c177ca@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=C/pPyoso/2mzfrnxqgtsouCNTH1bilzsSY1Tcp99GW4=;
        b=rcBoVuFUoWVnkJS9/4SVSG4RB4gUnGiFiXwWGEqBZG66beFCmt/IvTaVxsoxYS9p2p
         aOnVST98q3TCIFPsdPmH+DNkmQiGNoUdJHBQuQiFtv4cBUIE+7Uu4/6yDmFpg8dSb8wc
         kFXCGlOQTsshVLKhyrrA16Bvy5NmpjqSRni/g=
In-Reply-To: <4807377b0809251442x67e4e9eia706b70ae1c177ca-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jesse Brandeburg <jesse.brandeburg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On Fri, Sep 26, 2008 at 7:42 AM, Jesse Brandeburg
<jesse.brandeburg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> On Thu, Sep 25, 2008 at 2:06 PM, Dave Airlie <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>> I'd target three areas PAT, pciaccess and e1000e itself.
>
> ubuntu has CONFIG_X86_PAT disabled for at least i386 arch, maybe that
> is relevant.
>

It rules out PAT I suppose, they have seen the issue as well.

Dave.
