From: "Parag Warudkar" <parag.lkml-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Wed, 24 Sep 2008 18:54:53 -0400
Message-ID: <f7848160809241554n44efa90bldfc656eda2cab66a@mail.gmail.com>
References: <21d7e9970809232245x6a91c6e2l552ff039d07e2017@mail.gmail.com>
	 <20080924.003638.71148740.davem@davemloft.net>
	 <21d7e9970809240159u6db747eex51892061846b2251@mail.gmail.com>
	 <20080924.020116.193720569.davem@davemloft.net>
	 <21d7e9970809240216m4a93a339sb51a5928fcb5f6fb@mail.gmail.com>
	 <alpine.LNX.1.10.0809241829500.4671@pegasus.suse.cz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=IIn0Squ9CDcgP7zv81VJm/8pjvkrrQxluXVXg7gpfvs=;
        b=bNSuRcbFD2hop2rK4GMSNAk+Depvq61n9rqUltKTUiQYzCit7w11dz2P+NW423Aeae
         HYqYdHi9fcse2YsqrBYMHmqcaIGwzDw8m/Gu1CATs9phgVqgdHuaejLdChwTCz8k87Nr
         wBZBzi9v0j59zvuVuBFUzkpjeooqP0y24kgYA=
In-Reply-To: <alpine.LNX.1.10.0809241829500.4671-JCEl3tv+2Z8CVLCxKZUutA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Cc: Dave Airlie <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org

On Wed, Sep 24, 2008 at 12:33 PM, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org> wrote:

> Actually another user has just reported [1] that his e1000e card got
> screwed up exactly at the point when the installer was probing the X
> configuration. So this really seems a lot like some lethal interaction
> between intel graphics and the network card.
>

Another data point in the support of this theory - I've been running
all various 2.6.27-rc releases (including rc7) on my HP machine which
has an embedded 82566 and Radeon x1650 graphics - and so far I have
not seen any problems.

Parag
