From: =?UTF-8?Q?Am=C3=A9rico_Wang?= <xiyou.wangcong-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15202] lockdep warning during elevator_switch
Date: Mon, 22 Feb 2010 09:30:17 +0800
Message-ID: <2375c9f91002211730l6835cae1x1693da3d94fccc0c@mail.gmail.com>
References: <b_eAfX__uZL.A.lvE.HcagLB@chimera>
	 <ClJsQB_ZlxO.A.YyG.4dagLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=vaZZc6rJ3s+OWGftV5dAekVk/2LqBOJIRLuI3SgIhmM=;
        b=IUwZ57D/zNQhMejXzaxIutjAMtYvndi7h4bpeMmektaVazoziOhRgq78ZHMKjF2GVr
         /Uso1gJnyH7BNycTAoMx8UGeqzwbvc+vOTxQnfR7TXq655/w7HyD5Wb/vZvd3btKJce+
         4KLV0ZyuIhv+p5Tid0t9dEiCko1jUw8o3ZsEs=
In-Reply-To: <ClJsQB_ZlxO.A.YyG.4dagLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Hugh Dickins <hugh.dickins-IWqWACnzNjwqdlJmJB21zg@public.gmane.org>

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
cgi?id=3D15202
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : lockdep warning during elevator=
_switch
> Submitter =C2=A0 =C2=A0 =C2=A0 : Hugh Dickins <hugh.dickins@tiscali.c=
o.uk>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2010-01-31 23:55 (22 =
days old)
> References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=
=3D126498212613051&w=3D4
>

This should be fixed by:
http://lkml.org/lkml/2010/2/11/329
