From: Jesse Brandeburg <jesse.brandeburg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15042] socket(PF_INET6 hangs when ipv6 not yet initialized
Date: Mon, 8 Feb 2010 23:29:43 -0800
Message-ID: <4807377b1002082329h957d2d0u38be88fdd940ceac@mail.gmail.com>
References: <2uzMDuY-7_O.A.M1G.7X1bLB@chimera>
	 <iuJeop2ribM.A.o7H.jY1bLB@chimera>
	 <4807377b1002081543p33e13f0bv140141316ff6278f@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=m9ExFGfxhgjitpjnEjp0meNPFvyiQWBy+tLZHJL50og=;
        b=ouMjrhPZPobgmtT+FWsxghlEB7BlkH8AWyZZSbsYhNVxBQxNbLypk5GCLeLS6XJWAG
         8FIw7SejTGPffKF6OlC/MCV1SHDvqdp+8bBu/ZB5+Wgy27T0GHA2O7qCebi3Axie7zLW
         9dQHTMYsizLweVM+aQkdZDq/URCn8KlcmHuHQ=
In-Reply-To: <4807377b1002081543p33e13f0bv140141316ff6278f-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Marc Haber <mh+linux-kernel-ciUMMiFYEj8OIzVOb1FTxg@public.gmane.org>

On Mon, Feb 8, 2010 at 3:43 PM, Jesse Brandeburg
<jesse.brandeburg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
15042
>> Subject =A0 =A0 =A0 =A0 : socket(PF_INET6 hangs when ipv6 not yet in=
itialized
>> Submitter =A0 =A0 =A0 : Marc Haber <mh+linux-kernel-ciUMMiFYEj8OIzVOb1FTxg@public.gmane.org>
>> Date =A0 =A0 =A0 =A0 =A0 =A0: 2010-01-10 14:28 (29 days old)
>> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D12631=
3553029280&w=3D4
>
> probably fixed by this patch:
> http://marc.info/?l=3Dlinux-netdev&m=3D126565759512718&w=3D2

wow, scratch that, wrong bug I picked to reply to.  sorry!
