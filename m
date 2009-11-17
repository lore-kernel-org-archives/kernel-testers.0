From: Minchan Kim <minchan.kim-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14618] OOM killer, page fault
Date: Tue, 17 Nov 2009 17:40:25 +0900
Message-ID: <28c262360911170040r4313ca2bs9716b9271946f082@mail.gmail.com>
References: <GUZt44bIwCE.A.vLF.pSdALB@chimera>
	 <xXQGFmujPl.A.nXG.-SdALB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=kWf+gEUlPGGfvBjI1lGf29pJF/PO8c68ADab3cTJgRg=;
        b=gz9O65jrLE2ct2A5DouCjUPq3YkIhRZRT2SZ8/N5DuWUPhKDdF+aZrv5G5h6+wV6XF
         ILpDpAfYbRp78NsNOygU4lV6LMFnMaAAptygb4PPWiVfFq1+3KV1EzFq2NJ6yQnAe4x4
         GrNerBj5O1VrQQP2mRRIO8l+ii/uFWFmZRRAo=
In-Reply-To: <xXQGFmujPl.A.nXG.-SdALB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Norbert Preining <preining-DX+603jRYB8@public.gmane.org>

I think we can ignore this bug.
We can see the mm_fault_error in stack trace.
I guess it's from returning VM_FAULT_OOM of any driver.

As I know, It happens very rarely. Norbert, right?

In addition, I don't see the any similar report.

So I think It would be better to ignore this bug
until we can meet similar report again.


On Tue, Nov 17, 2009 at 7:37 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.31. =C2=A0Please verify if it still should be listed and let=
 me know
> (either way).
>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D14618
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : OOM killer, page fault
> Submitter =C2=A0 =C2=A0 =C2=A0 : Norbert Preining <preining-DX+603jRYB8@public.gmane.org>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2009-10-30 6:32 (18 d=
ays old)
> References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=
=3D125688434909582&w=3D4
> Handled-By =C2=A0 =C2=A0 =C2=A0: Minchan Kim <minchan.kim-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>
>
>



--=20
Kind regards,
Minchan Kim
