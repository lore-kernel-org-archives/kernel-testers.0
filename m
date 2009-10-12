From: Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Mon, 12 Oct 2009 16:46:41 -0700
Message-ID: <20091012234641.GF8345@core.coreip.homeip.net>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera> <L6tb-VyKHZK.A.PaB.Ozl0KB@chimera> <C4F8B19E-F4B4-47F3-AE5B-4581C8E3F3AE@gmail.com> <87ljjgfcbu.fsf@spindle.srvr.nix> <20091013003841.6c2988d0@lxorguk.ukuu.org.uk>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=ERrg5BJv3nf4weOYzZpno3E/pH11B6oPKMrP5MJR1wI=;
        b=wMvSfbDcSIgxbcT/qNB48A3LR7Bm6GVR1kUMx4ZzN1TNUIQoy/lxt1LbMRE3xs7DDn
         aXLwgFfZ9PoVgILLvVM43Dwa/mSMZZPH3vUmKHvwDXOcxjXppL9IdHAftsRo4BmAwN+/
         gh/vXsmh39A1mLp2gD953Z5951TsH13MharHs=
Content-Disposition: inline
In-Reply-To: <20091013003841.6c2988d0-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
Cc: Nix <nix-dKoSMcxRz+Te9xe1eoZjHA@public.gmane.org>, "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Boyan <btanastasov-/E1597aS9LT10XsdtD+oqA@public.gmane.org>, Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>, =?iso-8859-1?B?RnLpZOlyaWMgTC4gVy4=?= Meunier <fredlwm-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>

On Tue, Oct 13, 2009 at 12:38:41AM +0100, Alan Cox wrote:
> > So it seems likely to me that this is a kernel bug, somewhere, and the
> > TTY layer seems like a good place to look (OK, a horrible place, but a
> > *likely* place).
> 
> Somewhere around 2.6.29-30 various things went funny in the keyboard
> layer for me - notably characters "bleeding" across console switches.
> 

What do you mean by "bleeding"? Are you sure it is not autorepeat
kicking in?

> > 
> > I'm about to try reverting the suggested commit and will report back. I
> > see this failure about once a day, so I'll give it three days to go
> > wrong and then (if it doesn't) will presume it works and so inform you.
> > 
> > 
> > (Of course with this commit reverted Emacsen start dropping data from
> > their ptys, and as bad luck would have it I live in (X)Emacs, but that's
> > on a different machine! so I can have my compile buffer data *and* not
> > destroy X ;} )
> 
> X doesn't touch the pty layer. It touches vt (extensively) and the input
> layers. It's vt/kbd access is also very raw so bypasses much of that
> layer. That isn't to say tty isn't the cause but look for input layer
> changes too.

-- 
Dmitry
