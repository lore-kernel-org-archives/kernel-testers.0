From: Fabio Comolli <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13943] WARNING: at net/mac80211/mlme.c:2292 with ath5k
Date: Fri, 2 Oct 2009 23:37:32 +0200
Message-ID: <b637ec0b0910021437l5a011f13qfa4dd541607a6dfb@mail.gmail.com>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera>
	 <COE24pZSBH.A.A5C.VOTxKB@chimera>
	 <b637ec0b0910020012n57e110cbl180aa5bda318e5d5@mail.gmail.com>
	 <200910021917.31509.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type;
        bh=wge7bqAn3Cwn+Byfelyac6AAUaAjk2MaNHbnCx7oxHE=;
        b=FM1/i3ykMjBhwYwDO4cU3tiyxPqk0JImaDz0KRJxJD4q6YBAtT1J6RFha1jQzECyMd
         NHVGdrBODD1slGQi+hmAqsM8JOYTi/Jv5fT6+rlauUboqrIYLLZrX6IHl2lXVAyifULf
         4vN/1ezh182X9vEySf+61Eze+dAasJitf/fa0=
In-Reply-To: <200910021917.31509.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Luis R. Rodriguez" <mcgrof-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

Hi.

On Fri, Oct 2, 2009 at 7:17 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> On Friday 02 October 2009, Fabio Comolli wrote:
>> Hi.
>> I suppose this is still valid. I had to work around it by rfkill-ing
>> the device during the suspend process and reenabling at resume time.
>
> Thanks for the update.
>
>> I can try to reproduce it with 2.6.31.1 if you want it.
>
> In fact I'm more interested in whether or not it's still present in the Linus'
> tree.
>

Well, I just tried 2.6.32-rc1-git3 and I have to say that it's mostly
useless with my eeepc. The warning didn't show up after resume but it
was impossible to reassociate with my AP and after some tentative the
screen went blank.

I was able to poweroff the netbook using the power button but I'm a
little scared to try again.

Maybe I'll try with -rc3 or something.

> Thanks,
> Rafael
>

Regards,
Fabio
