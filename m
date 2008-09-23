From: "Dave Airlie" <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Wed, 24 Sep 2008 07:03:53 +1000
Message-ID: <21d7e9970809231403wf766660u39908aca70548ca7@mail.gmail.com>
References: <Pine.LNX.4.64.0809230010460.27884@twin.jikos.cz>
	 <20080922.152815.22060684.davem@davemloft.net>
	 <21d7e9970809221826i76081719pdd749237580fc68e@mail.gmail.com>
	 <20080922.185902.80812984.davem@davemloft.net>
	 <alpine.LNX.1.10.0809231229460.4671@pegasus.suse.cz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=d5srS5wAyF+7i/h+XRkQQAPl+A9Od6sxsXPSGoZxl90=;
        b=BysQg+79UlVxrbLdH6gb2PZ5SawRn2ZLoYSEtVxoxLaYXyLTUgDOUfPhITUPZjmiof
         LVPWxRF493BIXyTElLuQLNr5zth+cjdaVZjEP9ZxXH6Uu0073v+HOp0kTNr9LXaCFvyu
         E1KBIGWOAaPUmEfso4CDrXy/58SpKqErMmsjs=
In-Reply-To: <alpine.LNX.1.10.0809231229460.4671-JCEl3tv+2Z8CVLCxKZUutA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Cc: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org

On Wed, Sep 24, 2008 at 12:29 AM, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org> wrote:
> On Mon, 22 Sep 2008, David Miller wrote:
>
>> So I went through the changes from 2.6.27-rc5 until the SHA1
>> ID ec0c15afb41fd9ad45b53468b60db50170e22346 and there were
>> definitely no E1000 or E1000E changes during that time.
>
> Some recent comments on [1] seem to indicate that this is somehow coupled
> into prior problems/panics with Intel graphics.
>
> David, was this also your case, or did the EEPROM got garbled out of a
> sudden?

I have no evidence in my logs of a graphics panic, but I do do a lot
of graphics devel,
so it might be a possiblity but I'd hate to handwave it away at that.

Dave.

>
> [1] https://bugzilla.novell.com/show_bug.cgi?id=425480
>
> --
> Jiri Kosina
> SUSE Labs
>
