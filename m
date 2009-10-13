From: Fabio Comolli <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13943] WARNING: at net/mac80211/mlme.c:2292 with ath5k
Date: Tue, 13 Oct 2009 10:46:04 +0200
Message-ID: <b637ec0b0910130146u32442b7fvd18a7e2d97c4b727@mail.gmail.com>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera>
	 <L6tb-VyKHZK.A.n4E.T1l0KB@chimera>
	 <b637ec0b0910120024h463c78e5l67f646f262e0c13c@mail.gmail.com>
	 <200910122323.29475.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type;
        bh=t8QcuveV4pTA/B7GAs5e+OxTAHSTf2yKMquu9F1m/t8=;
        b=iRCnZ/Mh5uiRWFjVJmTM2/VPOmrqFWrufCeeIwHz1Nqm2vf6eeTNBvCEV9qLJcm0RM
         vvhHu2jnqwbA+/wVNZCtIRh465ibk3pbbFPU6ZsHTv+WLWTotK9HeTlRZ5FGQDKvZUl6
         phaxWlHYBAuK4V+F6r9ZakgxfNzxUWSsuCgjA=
In-Reply-To: <200910122323.29475.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Luis R. Rodriguez" <mcgrof-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

Hi Rafael.

On Mon, Oct 12, 2009 at 11:23 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> On Monday 12 October 2009, Fabio Comolli wrote:
>> Actually I switched to -32rc so I can't test it anymore... Sorry. I
>> can confirm it for 2.6.31.1.
>
> Does it happen in -32-rc?

Please have a look at my other bug report which applies to 32rc (#14372).
The result is the same (wifi down after resume) but the warning does
not show up.

The "cure" is also the same (rfkill-off followed by rfkill-on).

>
> Rafael
>

Regards,
Fabio
