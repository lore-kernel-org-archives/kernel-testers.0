From: "Dave Airlie" <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Wed, 24 Sep 2008 07:09:09 +1000
Message-ID: <21d7e9970809231409r3fdd640h53a72a808266d220@mail.gmail.com>
References: <21d7e9970809221826i76081719pdd749237580fc68e@mail.gmail.com>
	 <20080922.185902.80812984.davem@davemloft.net>
	 <alpine.LNX.1.10.0809231229460.4671@pegasus.suse.cz>
	 <20080923.140519.268233735.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=gmo7ML0ujz7Y18odpfNxsRqszeblf+idRlBD5I5BfsQ=;
        b=BZ/qoxam6ndFhRz5xxMCj9QsTjiOGQo7m3kejZPTdjkKXTpZOkjJhGp5gRNGHcHlvp
         tZnoEOzhTQc4hTDqW7Lj2jxeG/IeWiWlg3s2NHkOB3wxt/3JFSOYsEVwN9zDhYLFS+GW
         u3Y1R1kQZ6LmJYj8/2HfW2IqjCMJepwipuYvw=
In-Reply-To: <20080923.140519.268233735.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: jkosina-AlSwsSmVLrQ@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org

On Wed, Sep 24, 2008 at 7:05 AM, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org> wrote:
> From: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
> Date: Tue, 23 Sep 2008 16:29:16 +0200 (CEST)
>
>> On Mon, 22 Sep 2008, David Miller wrote:
>>
>> > So I went through the changes from 2.6.27-rc5 until the SHA1
>> > ID ec0c15afb41fd9ad45b53468b60db50170e22346 and there were
>> > definitely no E1000 or E1000E changes during that time.
>>
>> Some recent comments on [1] seem to indicate that this is somehow coupled
>> into prior problems/panics with Intel graphics.
>
> My current suspicion in all of this is either the GEM kernel patches
> or recent X server.
>

I don't think OpenSUSE was shipping any of the GEM bits.

Dave.

> However, the eeprom/nvram programming sequence seems non-trivial on
> the e1000e.  You have to execute a set of precise register writes
> and register polls to successfully write things out to the nvram.
>
> This makes something like a random scribble out to MMIO space less
> likely to cause this problem.
>
> Is there some linear mapping of the nvram that could be written to
> on these cards?
>
