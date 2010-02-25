From: Hugh Dickins <hugh.dickins-IWqWACnzNjwqdlJmJB21zg@public.gmane.org>
Subject: Re: [Bug #15202] lockdep warning during elevator_switch
Date: Thu, 25 Feb 2010 01:03:14 +0000 (GMT)
Message-ID: <alpine.LSU.2.00.1002250051380.4394@sister.anvils>
References: <b_eAfX__uZL.A.lvE.HcagLB@chimera>  <ClJsQB_ZlxO.A.YyG.4dagLB@chimera> <2375c9f91002211730l6835cae1x1693da3d94fccc0c@mail.gmail.com>
Mime-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323584-1347328712-1267059808=:4394"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1267059814; bh=V0fZlmyRLxNUaTZWfRHe15E7C5I=;
	h=Sender:Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type;
	b=e8PSpNhpetGKVmMRmKFyNBo4fWQ0NqmieLKCb90KfLqXVV9+e32O5mHklEdpOeTUa
	 T9MUM0kTIOBbgfDPaW06g==
In-Reply-To: <2375c9f91002211730l6835cae1x1693da3d94fccc0c-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Americo Wang <xiyou.wangcong-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, "Eric W. Biederman" <ebiederm-aS9lmoZGLiVWk0Htik3J/w@public.gmane.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323584-1347328712-1267059808=:4394
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Mon, 22 Feb 2010, Am=C3=A9rico Wang wrote:
> On Mon, Feb 22, 2010 at 5:30 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > This message has been generated automatically as a part of a summary re=
port
> > of recent regressions.
> >
> > The following bug entry is on the current list of known regressions
> > from 2.6.32. =C2=A0Please verify if it still should be listed and let t=
he tracking team
> > know (either way).
> >
> >
> > Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.cg=
i?id=3D15202
> > Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : lockdep warning during elevator_s=
witch
> > Submitter =C2=A0 =C2=A0 =C2=A0 : Hugh Dickins <hugh.dickins-IWqWACnzNjxTgsEVMPZbmg@public.gmane.org=
uk>
> > Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2010-01-31 23:55 (22 da=
ys old)
> > References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=
=3D126498212613051&w=3D4
> >
>=20
> This should be fixed by:
> http://lkml.org/lkml/2010/2/11/329

This regression does still need to be listed for 2.6.33-rc8-git.

Americo is right that the warning goes away if I apply those patches from E=
ric,
but they look like more than we'd be adding into 2.6.33 at this stage ...
and bootup of latest git plus those patches gave me 71 messages of the form
BUG: key fxxxxxxx not in .data!

Hugh
--8323584-1347328712-1267059808=:4394--
