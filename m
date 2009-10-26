From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14483] WARNING: at drivers/base/sys.c:353 __sysdev_resume+0x54/0xca()
Date: Mon, 26 Oct 2009 13:08:17 -0700
Message-ID: <4AE601B1.7050000@gmail.com>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera> <6dRYo8ss7vL.A.hyE.2qe5KB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=ZdC5p54Gn84OwmmLWov2+c1Tic+21LDeW20cTBmZTTM=;
        b=wnd8Qz2pUhQvqIEij7N1cy9PTuHq/KJUo9W6Jxee2OOMA8Og6MDhONMM4Jp0ZPjuxt
         2JCXRFrmFdWps3nzu0Qa2QpnQ0ecjybAQtdk/KLHanTFrJFhrQut4c3lQmzBBT+BnWmi
         y1VNP7gJWgMJttKs71FcBH/rCDq/AZulXhsoo=
In-Reply-To: <6dRYo8ss7vL.A.hyE.2qe5KB@chimera>
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
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14483
> Subject		: WARNING: at drivers/base/sys.c:353 __sysdev_resume+0x54/0xca()
> Submitter	: Justin Mattock<justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-10-25 19:58 (2 days old)
> References	: http://marc.info/?l=linux-kernel&m=125650070420168&w=4
>
>
>
>    
yeah this happens on the first go of
echo mem > /sys/power/state
for both of my imac's I have here.
(on the second  try, this message does not appear)

Justin P. Mattock
