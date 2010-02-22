From: =?UTF-8?Q?Am=C3=A9rico_Wang?= <xiyou.wangcong-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15319] [BUG]: Possibe recursive locking detected in sysfs
Date: Mon, 22 Feb 2010 09:31:34 +0800
Message-ID: <2375c9f91002211731y354a7975oc863db321375d330@mail.gmail.com>
References: <b_eAfX__uZL.A.lvE.HcagLB@chimera>
	 <ClJsQB_ZlxO.A.S_E.RcagLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=Y5tr7MjncbBHgfMW2vl1w+y9Aq5LK68+yWBLoo0PGg8=;
        b=teI4wA5AjKWWpt3D+vzeGp96Fv8VHNnFrmN/DXtfxlk6V+P9qQp2Lkn/LA/7KJgfU4
         lZ50GVYfaHyDf7B+C0A4n/bLOt2RyFE1nuPsOaBhdFHMbHnCyN0wX6UBIxdSK9jaFaEn
         Vkout1M+US5QzOhWF7kYfwU/cgpV2zPGItKGk=
In-Reply-To: <ClJsQB_ZlxO.A.S_E.RcagLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Eric Biederman <ebiederm-BGArkANP9klv6pq1l3V1OdBPR1lH4CV8@public.gmane.org>, John Kacur <jkacur-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

On Mon, Feb 22, 2010 at 5:30 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a summary =
report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.32. =C2=A0Please verify if it still should be listed and let=
 the tracking team
> know (either way).
>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D15319
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : [BUG]: Possibe recursive lockin=
g detected in sysfs
> Submitter =C2=A0 =C2=A0 =C2=A0 : John Kacur <jkacur-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2010-02-11 17:11 (11 =
days old)
> Message-ID =C2=A0 =C2=A0 =C2=A0: <520f0cf11002110911t3f125649v73062e9=
851e2cfb3-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
> References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=
=3D126590832432598&w=3D2
> Handled-By =C2=A0 =C2=A0 =C2=A0: Eric Biederman <ebiederm@aristanetwo=
rks.com>
>
>

http://lkml.org/lkml/2010/2/11/329
