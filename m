From: "Alexander E. Patrakov" <patrakov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12406] 2.6.28 thinks that my PS/2 mouse is a touchpad
Date: Thu, 22 Jan 2009 11:29:37 +0500
Message-ID: <49781251.8070807@gmail.com>
References: <KTnguC9mFUC.A.VNB.TJRdJB@chimera> <cX2gZ6Cy9nC.A.HKC.vJRdJB@chimera> <20090120014507.GA1557@adopmeer.homeip.net> <200901200119.59851.dmitry.torokhov@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=Iu7cMa+ervyjsbGOZiGBK+I6Ak8gPXZUbeTsYGoZ7ZM=;
        b=MoFI1wVXmj4pfXeydTnc+M4/MgsuAzTb0H1Quu6Y2MsccYpDJ0GTkRf4mbn6QlHa1/
         1HrtIMJVsIk3hPMpcDcVRaUluB6/hTWVfOUgoRVRc0hIX5GJJgFlFTHszWxTKvEUpiBp
         T77T8FRWg11JjzZsW2RR/a65G/gi46LkXghuA=
In-Reply-To: <200901200119.59851.dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Arjan Opmeer <arjan-OssVvNj1wBysTnJN9+BGXg@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Denys Vlasenko <vda.linux-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>

Dmitry Torokhov wrote:
> Sorry, must have missed that. I think it's gonna be a bit chatty if
> user happens to have Logitech++ device attached, however I think if
> we complement it with the patch below I think it should work OK.

Dmitry, I don't see the effect of your patch. I.e., both the patch by 
Arjan referenced in the bug, and combination of that patch with yours, 
produce a working mouse and this dmesg output:

psmouse serio1: ID: 10 00 64<6>elantech.c: Elantech version query result 
0x00, 0x01, 0x64.
elantech.c: Probably not a real Elantech touchpad. Aborting.
input: ImExPS/2 Logitech Wheel Mouse as /class/input/input18

-- 
Alexander E. Patrakov
