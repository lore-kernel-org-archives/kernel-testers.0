From: =?ISO-8859-1?Q?Fr=E9d=E9ric_Weisbecker?= <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13374] reiserfs blocked for more than 120secs
Date: Mon, 3 Aug 2009 03:01:22 +0200
Message-ID: <c62985530908021801r2e302dfel86f69f62143cabc0@mail.gmail.com>
References: <upey9ZSfnaF.A.-oE.rpgdKB@chimera>
	 <7ixSg7D88bK.A.guG.mrgdKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=Ioa1wpebriSkRMHfJOyHEeNo7fj8dQMpffqn2i+mkiM=;
        b=rKz6v2TP4tixnusbOKsRMo/6vlpszXt5k4LZCOOFSOozHnodtAZd/uHuToQ2b31TBg
         YTGKsswiNtmFlF7o/mKJALr7jcjNT6XzYe3gY1596vtur+uiSIeV0aowlXa+ED9YdKn9
         gUErfSKyMWYxeefi25kdRbKWlwT5D4v7FTISk=
In-Reply-To: <7ixSg7D88bK.A.guG.mrgdKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Harald Dunkel <harald.dunkel-zqRNUXuvxA0b1SvskN2V4Q@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Jeff Mahoney <jeffm-IBi9RG/b67k@public.gmane.org>

Harald,

Does it still happen with 2.6.31-rc5 ?

If so, do you have further informations that could help us reproducing =
it?

Thanks,
=46rederic.

2009/8/2 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.29 and 2.6.30.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.29 and 2.6.30. =A0Please verify if it still sh=
ould
> be listed and let me know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
13374
> Subject =A0 =A0 =A0 =A0 : reiserfs blocked for more than 120secs
> Submitter =A0 =A0 =A0 : Harald Dunkel <harald.dunkel-zqRNUXuvxA0b1SvskN2V4Q@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-05-23 8:52 (72 days old)
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D124306=
880410811&w=3D4
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0http://lkml.org/lkml/2009/5/29/389
>
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kerne=
l" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at =A0http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at =A0http://www.tux.org/lkml/
>
