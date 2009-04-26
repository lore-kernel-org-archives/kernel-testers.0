From: Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13118] iptables very slow after commit 784544739a25c30637397ace5489eeb6e15d7d49
Date: Sun, 26 Apr 2009 11:24:31 +0800
Message-ID: <b6a2187b0904252024w38530211icd4525e4d2c65dd6@mail.gmail.com>
References: <47KgT3nlbjD.A.lnB.jc48JB@chimera>
	 <Fg2zLW93smL.A.wAE.Xd48JB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=gexpF7pq1sqF8FxgKT+mb+gyfTtTo8ysGAnv9A/1J1U=;
        b=AOBlxSfY4X0OC0UKVWr48b4cObJmbKu8mqPRc1xEqnQc5LXBeFSqhjcBWsZZ/6YWlP
         8cK5+fYEh06HMgDBwCSLwGqOlMcdrWpyK/Nvq2IBPGbO5DiYJ8if2wm5nF+YA9cz+cXQ
         PxA76ki9Gm1Gf1wZ4rf02CYiF83469ayIc7Po=
In-Reply-To: <Fg2zLW93smL.A.wAE.Xd48JB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>, Patrick McHardy <kaber-dcUjhNyLwpNeoWH0uzbU5w@public.gmane.org>, Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>

On Sun, Apr 26, 2009 at 3:31 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
13118
> Subject =A0 =A0 =A0 =A0 : iptables very slow after commit 784544739a2=
5c30637397ace5489eeb6e15d7d49
> Submitter =A0 =A0 =A0 : Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-04-10 16:05 (16 days old)
> References =A0 =A0 =A0: http://lkml.org/lkml/2009/4/10/111
> Handled-By =A0 =A0 =A0: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>

Several iteration of patches are in progress. Latest one being
http://lkml.org/lkml/2009/4/25/83

Thanks,
Jeff
