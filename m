From: Torsten Kaiser <just.for.lkml-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: Re: 2.6.35-rc6: Reported regressions from 2.6.34
Date: Fri, 23 Jul 2010 22:36:12 +0200
Message-ID: <AANLkTimK4XaXLNJtSFEsy3wygRK02BcLK=OZDJfAW63t@mail.gmail.com>
References: <Lupw7pePXBO.A.fZH.G2XSMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:in-reply-to
         :references:date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=cSwnNhdpRbFn6sOH3bvHXjIwWkd1fIMfvGkBZ4lb30Q=;
        b=PDonl3c9DRNq0cUFOu3pk9JLPdZOqC3yCu3JUPrh1Rr3u8z31X0WtekVGlYVTpuqM+
         j8sB/c8LQnovSWX4Qxj2IwAM0wSX418dPhIJO5BzU1kr3fNi9e9jeT+cVog9Tua3rvI7
         iW2sBnotF87toHOCyH8Ws7RwtkGTCA2PVLxXw=
In-Reply-To: <Lupw7pePXBO.A.fZH.G2XSMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, DRI <dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org>

On Fri, Jul 23, 2010 at 1:42 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
16372
> Subject =A0 =A0 =A0 =A0 : Regression 2.6.34->2.6.35-rc4: radeaon KMS =
an RS690 broken
> Submitter =A0 =A0 =A0 : Torsten Kaiser <just.for.lkml-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2010-07-11 19:56 (13 days old)
> Message-ID =A0 =A0 =A0: <AANLkTimkNg81yzxSHTcAa1QlTE9SYmvzL4eOTVHApWq=
3@mail.gmail.com>
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D127887=
822407672&w=3D2

I just installed 2.6.35-rc6 and can confirm, that this bug is fixed.

Thanks!

Torsten
