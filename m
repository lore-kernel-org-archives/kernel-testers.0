From: Vikram Dhillon <dhillonv10-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14940] cfq-iosched: tiobench regression
Date: Fri, 1 Jan 2010 20:57:35 -0500
Message-ID: <ea6602021001011757y21c6b859ocdbea233070fb31c@mail.gmail.com>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera>
	 <NJVdobuNFNK.A.1VG.EnhOLB@chimera> <20091230091818.GW4489@kernel.dk>
	 <200912302253.53285.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=3yLplaPKlHsrkthMWwtXZntaMOWad2FzH8nQOWPP99Q=;
        b=maaPCinlQCBRxmORDvA4AvKEj3R0Ow4/uMqSISXswB0sTAmgdLAumSkVnMxR0yxmd6
         oJs1nU5MmIPQzp7aninGYakvh1SpL5x7aP9tQ5EBAYQLox1ormSoIv9x0BFUDIs/X0/B
         Hvswi4aTXZgrOGB5lJ+PdgPSNLE1RCgkzN+44=
In-Reply-To: <200912302253.53285.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Corrado Zoccolo <czoccolo-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Gui Jianfeng <guijianfeng-BthXqXjhjHXQFUHtdCDX3A@public.gmane.org>, Shaohua Li <shaohua.li-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Wed, Dec 30, 2009 at 4:53 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> On Wednesday 30 December 2009, Jens Axboe wrote:
>> On Tue, Dec 29 2009, Rafael J. Wysocki wrote:
>> > This message has been generated automatically as a part of a repor=
t
>> > of recent regressions.
>> >
>> > The following bug entry is on the current list of known regression=
s
>> > from 2.6.32. =C2=A0Please verify if it still should be listed and =
let me know
>> > (either way).
>> >
>> >
>> > Bug-Entry =C2=A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D14=
940
>> > Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : cfq-iosched: t=
iobench regression
>> > Submitter =C2=A0 : Shaohua Li <shaohua.li-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
>> > Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2009=
-12-24 0:55 (6 days old)
>> > References =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=3D12616161=
2401994&w=3D4
>>
>> I don't think this should be labelled as a regression. It was alread=
y
>> known that we'd have less throughput for the many clients cases, it =
was
>> a trade off that was made to improve latencies.
>
> OK, I've closed it as "documented".
>
> Rafael
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kerne=
l" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at =C2=A0http://vger.kernel.org/majordomo-info.ht=
ml
> Please read the FAQ at =C2=A0http://www.tux.org/lkml/
>

Thanks for this update, I guess we I can make like a separate category
of documented regressions because this could be helpful to other
distributions as they update to the newer kernels :D

--=20
Regards,
Vikram Dhillon

~~~
There are lots of Linux users who don't care how the kernel works, but
only want to use it. That is a tribute to how good Linux is.
-- Linus Torvalds
