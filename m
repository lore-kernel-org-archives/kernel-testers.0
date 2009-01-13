From: "Jeff Chua" <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12422] 2.6.28-git can't resume from str
Date: Tue, 13 Jan 2009 09:20:29 +0800
Message-ID: <b6a2187b0901121720s1f9b12ednb76a90dcc7eddc81@mail.gmail.com>
References: <XU-8icArWLM.A.UpG.8GfaJB@chimera>
	 <b6a2187b0901110813s5429573cm7d78f39e288f70a3@mail.gmail.com>
	 <20090111162949.GA15338@elte.hu>
	 <200901111736.24350.borntraeger@de.ibm.com>
	 <20090111163904.GA21806@elte.hu>
	 <b6a2187b0901110856j3f2ff6fepc19a816178e38a95@mail.gmail.com>
	 <20090111180714.GB15326@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=r5Z71cADfgjW4U3h/61c1JjUzFDSrJj1dWNlFcI/YDQ=;
        b=muRdbTkMbTDvtJCj7B/xhoTJxH2BecQ65IwKhSuhdVikTX4eg92c42nfH/SnkdayjC
         nSJ+Igya04UycB3iSg0qBHi4ZVjSUX6T7+CFXuLZb8w2CbCFVkI0Q8t2JjbJd9v40lcS
         XAYa73SK5YU9/KL/8Y4JoxvPbrSyK5S1Y1McE=
In-Reply-To: <20090111180714.GB15326-X9Un+BFzKDI@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Christian Borntraeger <borntraeger-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>, Daniel Drake <dsd-aBrp7R+bbdUdnm+yROfE0A@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Phil Dibowitz <phil-LijsOF1cAEA@public.gmane.org>

On Mon, Jan 12, 2009 at 2:07 AM, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:
>> Everything in-between should have
>> a0e280e0f33f6c859a235fb69a875ed8f3420388 applied?
> not necessarily - if an intermediate tree that is checked happened to have
> been based on some earlier -rc, it might have that bug included. Safest is
> to always cherry-pick that commit. (if it has no dependencies)

Thanks for pointing this out. My bisect was thrown off course because
I didn't "cherry-pick" that commit.

After cherry picking, I ended up with the same commit as was reported by
Christian Borntraeger -- "Regression 2.6.28-git: suspend/resume
failure. git bisected to usb suspend/resume patch".

I was trying to bisect further, but ended up with this strange behavior...

# start with a "fresh linux git download".
# ls
.               ..             .git     .gitignore   .mailmap  COPYING
CREDITS         Documentation  Kbuild   MAINTAINERS  Makefile  README
REPORTING-BUGS  arch           block    crypto       drivers   firmware
fs              include        init     ipc          kernel    lib
mm              net            samples  scripts      security  sound
usr             virt

# git bisect bad ae04d1401577bb63151480a053057de58b8e10bb
# git bisect good a3a798c88a14b35e5d4ca30716dbc9eb9a1ddfe2
Bisecting: 579 revisions left to test after this
[079899c2384023cd8efcd3806680b4f1d2abbd54] Btrfs: Change
find_extent_buffer to use TestSetPageLocked

# ls
.  ..  .git  fs

Is this a bug or a feature?


Jeff.
