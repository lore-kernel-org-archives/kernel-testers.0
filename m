From: Paul Gortmaker <paul.gortmaker-CWA4WttNNZF54TAoqtyWWQ@public.gmane.org>
Subject: Re: [Bug #42713] Regression in skge that started around acb42a3 (so
 past v3.3-rc1)
Date: Sun, 4 Mar 2012 20:03:09 -0500
Message-ID: <CAP=VYLqMhmtFvoB3td4E4gZ2hjOKriEgGoqChWkwtsJVZN9ZrQ@mail.gmail.com>
References: <FNlNbnGKWLP.A.dME.3F9UPB@chimera>
	<hq7dqombK_C.A.gMF.WG9UPB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date
         :x-google-sender-auth:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=oOs8EY6T2d9WOTNAcXGbG1EBnhh+vf/Bc0TyX3AaHpA=;
        b=CwPueyCwPvsWHSkgUA1Q9ddROKYxjSSZ1QZts8QcSkgRd832w6wSm0HKQMiwVGyvvI
         /b6OhXGwxV2mDve+qmT1FaYFHhxSJkHlPPCzxvtbHC55JFX/oczwV0PEb8zi2w3F7R2f
         Lfe4sKT0lcvJEkzEUVmHYIOH5WT9DUA1MZP2VwqxvZurzptZLxSqdN5Q3ZglrWrANBEr
         BWbQkNJeDBCS2mi5hcUBe+x5Vu0xPCGk5rVGV68/ElhWcjk2E32tHheWkYNtE+vmSOgn
         dYgqckPljqcHeO8QZFP+51TOA6DBKplfbbO/9ruxv2m3r1xbIVyLfK2Sbrl1SXQsM2sB
         b1Kg==
In-Reply-To: <hq7dqombK_C.A.gMF.WG9UPB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Konrad Rzeszutek Wilk <konrad.wilk-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>

On Sun, Mar 4, 2012 at 3:31 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a summary =
report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 3.2. =A0Please verify if it still should be listed and let the t=
racking team
> know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : https://bugzilla.kernel.org/show_bug.cgi?id=3D=
42713
> Subject =A0 =A0 =A0 =A0 : Regression in skge that started around acb4=
2a3 (so past v3.3-rc1)
> Submitter =A0 =A0 =A0 : Konrad Rzeszutek Wilk <konrad.wilk-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org=
>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2012-01-30 15:58 (35 days old)
> Message-ID =A0 =A0 =A0: <20120130155816.GA1400-6K5HmflnPlqSPmnEAIUT9EEOCMrvLtNR@public.gmane.org>
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D132793=
944220262&w=3D2

This might also be a useful reference:

https://lkml.org/lkml/2012/2/6/486

Paul.
--

>
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kerne=
l" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at =A0http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at =A0http://www.tux.org/lkml/
