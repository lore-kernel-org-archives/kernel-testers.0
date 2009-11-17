From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14487] PANIC: early exception 08 rip 246:10 error ffffffff810251b5
 cr2 0
Date: Mon, 16 Nov 2009 16:40:24 -0800
Message-ID: <4B01F0F8.4040807@gmail.com>
References: <GUZt44bIwCE.A.vLF.pSdALB@chimera> <xXQGFmujPl.A.CnG.JTdALB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=qbedYMHWaxrqoS8Ivr5F4ocLmJll9gbhuoZ1aucELiI=;
        b=orSPyA/e0g/T/EKw/C/K06ON1ZLc32U/VbsSuYKU7bvRETMMaD1l2a+zMyURmuybIH
         guTgywyX4ggM52o74iGbQrNYiTiswL007k6KJfVmnDP3406OINpCR4a9j/FUa0OXH/tv
         RYGBHkDs+vPDjbTVdWuDyMlfMkjjCcnuK5BfQ=
In-Reply-To: <xXQGFmujPl.A.CnG.JTdALB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.31.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14487
> Subject		: PANIC: early exception 08 rip 246:10 error ffffffff810251b5 cr2 0
> Submitter	: Justin P. Mattock<justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-10-23 16:45 (25 days old)
> References	: http://lkml.org/lkml/2009/10/23/252
>
>
>
>    
This one has me a bit dazed i.g. after looking into the issue
I did find a workaround(keep in mind it's not pretty),
by commenting out set_fixmap_nocache and
init_ohci1394_reset_and_init_dma.
(by doing so I was able to load both machines and
execute early debugging in case  a problem occurs).

Now as to what might  be happening, after going through as
much as I can comprehend the only thing in mind was
reading fixmap.h the comments are stating that vsyscalls
only covers 32bit, and that there needs to be another set
for 64, leading me to believe that this is what I might be hitting.
(my system is pure64, taking in no 32bit at all).

At this point I think I need somebody to give me some info on this,
and if the 64bit issue mentioned above is the case, then we can probably
close this and leave it up to the x86_64 builders to create a 64bit
call for this whenever they get to it.(main thing is I'm able to
run dma early in case of an emergency).

Justin P. Mattock
