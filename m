From: "Jeff Kirsher" <jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Tue, 23 Sep 2008 15:12:43 -0700
Message-ID: <9929d2390809231512w160d221axa2923a6b293a041@mail.gmail.com>
References: <alpine.LNX.1.10.0809231229460.4671@pegasus.suse.cz>
	 <20080923.140519.268233735.davem@davemloft.net>
	 <21d7e9970809231409r3fdd640h53a72a808266d220@mail.gmail.com>
	 <20080923.150722.141587696.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:sender
         :to:subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references
         :x-google-sender-auth;
        bh=cOrhJCYMZ2x9vaOXxx/4Ci7vCUwyzX2UHCGp7vIAF3M=;
        b=I2yzfp3RezJ4z2xA2cVcVnQ4N/560kdpv6dxpOhTMg9qT82ij6YPdIUeq3KtPsDSVW
         pR4wyW8RaTHbdXHBOJuZIaxJ5J3LH/m3Vt36+JerIvs5dy1do3LkJ41e0tGJaM8ZUxKZ
         puroP37S7yhv6wJEitYObjECXaW39N+kOeDMI=
In-Reply-To: <20080923.150722.141587696.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, jkosina-AlSwsSmVLrQ@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org

On Tue, Sep 23, 2008 at 3:07 PM, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org> wrote:
> From: "Dave Airlie" <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date: Wed, 24 Sep 2008 07:09:09 +1000
>
>> On Wed, Sep 24, 2008 at 7:05 AM, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org> wrote:
>> > From: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
>> > Date: Tue, 23 Sep 2008 16:29:16 +0200 (CEST)
>> >
>> >> On Mon, 22 Sep 2008, David Miller wrote:
>> >>
>> >> > So I went through the changes from 2.6.27-rc5 until the SHA1
>> >> > ID ec0c15afb41fd9ad45b53468b60db50170e22346 and there were
>> >> > definitely no E1000 or E1000E changes during that time.
>> >>
>> >> Some recent comments on [1] seem to indicate that this is somehow coupled
>> >> into prior problems/panics with Intel graphics.
>> >
>> > My current suspicion in all of this is either the GEM kernel patches
>> > or recent X server.
>> >
>>
>> I don't think OpenSUSE was shipping any of the GEM bits.
>
> Good data point, can someone confirm this?  Also, what X server version
> is the effected OpenSUSE shipping?
> --


OpenSuSE 11 ships x server version 7.3.

-- 
Cheers,
Jeff
