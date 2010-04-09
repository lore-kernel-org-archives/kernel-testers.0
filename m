From: Miguel Ojeda <miguel.ojeda.sandonis-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15733] Crash when accessing nonexistent GTT entries in i915
Date: Fri, 9 Apr 2010 13:53:04 +0200
Message-ID: <x2tca2dc2821004090453md93af391wfef3fc3393bc3a43@mail.gmail.com>
References: <cjwJ7Pf9h0L.A.9pB.1DmvLB@chimera>
	 <onZ81XwyNTD.A.eyB.8DmvLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:received:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=q6PMlzkAoh1tGS+P0H0VNqPvYFcMxCy+gvVeB4QmQH8=;
        b=j1W0C/ZWQhOxC1n6mhhs+TDRPRxsYbSy0Zq0Ala8kem9gd15ACU5lyyOfZ5kn3Irhq
         WmoWkDM1OeFM5Dtt3qepbQw1PVF06xRWd4CdUwUC+Q79z9KCNbxtZoFlVMWItXAWSh2g
         YmpjBkuSBeBmpVD52TZt6lODFRxdiN3DrSt4M=
In-Reply-To: <onZ81XwyNTD.A.eyB.8DmvLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Zhenyu Wang <zhenyuw-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>

On Fri, Apr 9, 2010 at 1:04 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.32 and 2.6.33.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.32 and 2.6.33. =A0Please verify if it still sh=
ould
> be listed and let the tracking team know (either way).

It still should be listed.

>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
15733
> Subject =A0 =A0 =A0 =A0 : Crash when accessing nonexistent GTT entrie=
s in i915
> Submitter =A0 =A0 =A0 : Miguel Ojeda <miguel.ojeda.sandonis-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org=
>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2010-03-10 22:09 (30 days old)
> Message-ID =A0 =A0 =A0: <1268258994.2183.14.camel@carter>
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D126825=
901326111&w=3D4
> Handled-By =A0 =A0 =A0: Zhenyu Wang <zhenyuw-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Andrew Morton <akpm@linux-foundati=
on.org>
>
>
>
