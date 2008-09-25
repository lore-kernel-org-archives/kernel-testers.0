From: "Jesse Brandeburg" <jesse.brandeburg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Thu, 25 Sep 2008 14:42:34 -0700
Message-ID: <4807377b0809251442x67e4e9eia706b70ae1c177ca@mail.gmail.com>
References: <20080923.150722.141587696.davem@davemloft.net>
	 <200809251156.10648.jbarnes@virtuousgeek.org>
	 <alpine.LNX.1.10.0809252218470.3389@pegasus.suse.cz>
	 <200809251236.12287.jbarnes@virtuousgeek.org>
	 <alpine.LNX.1.10.0809252234400.3389@pegasus.suse.cz>
	 <21d7e9970809251406gb2bdacbuf9ff1bde3d118cdb@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=Yi+r6tVcHH4B+yTdSzhj1U+HRQqxOtZ5qmldDX0KNoA=;
        b=KrjazPpRTWmoQ0peA3vLFVA0QxhvtM+7pubEkgG4JbvlHP/7GDUg7/++vVijawESs/
         0AUkpIBy4d3LKSqCBkYW6+usm9clfJiymFSJaqXEr+yZIHWwCg/J1WkLjCOHIa1GwSk0
         WNTtKW3WJ3qoIHq/6Xop7jva8+JzPp+3kl1f4=
In-Reply-To: <21d7e9970809251406gb2bdacbuf9ff1bde3d118cdb-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Dave Airlie <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On Thu, Sep 25, 2008 at 2:06 PM, Dave Airlie <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> I'd target three areas PAT, pciaccess and e1000e itself.

ubuntu has CONFIG_X86_PAT disabled for at least i386 arch, maybe that
is relevant.
