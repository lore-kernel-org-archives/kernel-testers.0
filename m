From: Kan-Ru Chen <ckanru-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #16307] i915 in kernel 2.6.35-rc3, high number of wakeups
Date: Tue, 31 Aug 2010 10:19:07 +0800
Message-ID: <AANLkTi=bLAr=9E6-nfn8r_qGNfxYCXADoA0M9PzWHLmy@mail.gmail.com>
References: <c1_O4wHrlB.A.63.mbueMB@chimera> <ByD_7B96czP.A.kdD.pgueMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:mime-version:received:in-reply-to
         :references:from:date:message-id:subject:to:cc:content-type
         :content-transfer-encoding;
        bh=SzELcw0cHxIxRItnY/MpTVeZJdy5cO/mCmKZ7xkgdM8=;
        b=eYzJohee+rBBSlWs+DJ3ug4xXCO+i/Y+EHstDlVsPsa92Z5r1YWgFWUYHXaGeq6tAt
         zpASoMunRtkTGwar2EV6ue7EIqnK1v2e9Dqh2wAeExBggAzC4meMr8x0z30cZY9SFewu
         p4qTlnltLX/T53ZRsCWYaIggj3yOQl7e28VFg=
In-Reply-To: <ByD_7B96czP.A.kdD.pgueMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Enrico Bandiello <enban-c0jvKHQHzSzx4jp4WZvp5g@public.gmane.org>

On Mon, Aug 30, 2010 at 7:13 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.34 and 2.6.35.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.34 and 2.6.35. =C2=A0Please verify if it still=
 should
> be listed and let the tracking team know (either way).
>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D16307
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : i915 in kernel 2.6.35-rc3, high=
 number of wakeups
> Submitter =C2=A0 =C2=A0 =C2=A0 : Enrico Bandiello <enban-c0jvKHQHzSzx4jp4WZvp5g@public.gmane.org=
>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2010-06-26 16:57 (65 =
days old)
> Message-ID =C2=A0 =C2=A0 =C2=A0: <<4C26317A.5070309-c0jvKHQHzSzx4jp4WZvp5g@public.gmane.org>>
> References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=
=3D127757403404259&w=3D2

Same with v2.6.36-rc3

$ sudo powertop -d -t 20
=2E..
Wakeups-from-idle per second : 196.2    interval: 20.0s
no ACPI power usage estimate available
Top causes for wakeups:
  25.4% ( 59.6)   [i915@pci:0000:00:02.0] <interrupt>
=2E..

- Kanru
