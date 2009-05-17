From: Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13118] iptables very slow after commit 784544739a25c30637397ace5489eeb6e15d7d49
Date: Sun, 17 May 2009 14:06:56 +0800
Message-ID: <b6a2187b0905162306u17c07753w8af53b6ed807cf1d@mail.gmail.com>
References: <_AjETDMbIoL.A.DcH.RYzDKB@chimera>
	 <385Pu-agh7M.A.geC.vZzDKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=JfjVyAvfJ88W5sk/6FqEbY27SqUpvI9QlpCKnFlxh8c=;
        b=H65jXYYpDDZ1n7OWEG1nKCOuihNeI3pr2GBY8dh5vo1TSlpZ1HeICmH02fMDV/mpqz
         1tksL57xQfvdAYDVi0Cg/uIXL7aDiqWgFIlc1KtnmeYxGzqUNASYz/IHMputS4YDDUwH
         8ag3VkaMAe0JwIWgVdLtl2x0W1Yf9qBhKJw3g=
In-Reply-To: <385Pu-agh7M.A.geC.vZzDKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>, Patrick McHardy <kaber-dcUjhNyLwpNeoWH0uzbU5w@public.gmane.org>, Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>

On Sun, May 17, 2009 at 3:20 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
13118
> Subject =A0 =A0 =A0 =A0 : iptables very slow after commit 784544739a2=
5c30637397ace5489eeb6e15d7d49
> Submitter =A0 =A0 =A0 : Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-04-10 16:05 (37 days old)
> References =A0 =A0 =A0: http://lkml.org/lkml/2009/4/10/111
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0http://lkml.org/lkml/2009/4/25/83
> Handled-By =A0 =A0 =A0: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>

=46ixed as of Apr 28.

commit 942e4a2bd680c606af0211e64eb216be2e19bf61
Author: Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>
Date:   Tue Apr 28 22:36:33 2009 -0700

    netfilter: revised locking for x_tables


Thanks,
Jeff.
