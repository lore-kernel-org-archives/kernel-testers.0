From: =?utf-8?Q?Am=C3=A9rico?= Wang <xiyou.wangcong-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15137] NULL pointer dereference in vlan_skb_recv
Date: Mon, 25 Jan 2010 21:43:46 +0800
Message-ID: <20100125134346.GA3749@hack>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera> <hE3x9c-4KZM.A.W0E.4JMXLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=b2X+5aJbcBrb4soj/IXdRoKqM1+KBeCx/0+WmW4uTlM=;
        b=XkIsaTQjkTYxzEZubBUFZGBaeTfcr39fPJMNwAx/8QE81ZdYkDY0r2cPr8JAmcflfJ
         IyxWx3BMx8yNeia1JWtKszbEyaW6l6qKEcZm5+9HjSW9WnoTdWj1T9TnYM27zJ0geB1m
         ej01Ea6tDNP8RAFh+UoJV6PztxHfR2QOIQ7l0=
Content-Disposition: inline
In-Reply-To: <hE3x9c-4KZM.A.W0E.4JMXLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="macroman"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Bruno =?utf-8?Q?Pr=C3=A9mont?= <bonbons-ud5FBsm0p/xEiooADzr8i9i2O/JbrIOy@public.gmane.org>, Eric Dumazet <eric.dumazet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sun, Jan 24, 2010 at 11:04:41PM +0100, Rafael J. Wysocki wrote:
>This message has been generated automatically as a part of a report
>of recent regressions.
>
>The following bug entry is on the current list of known regressions
>from 2.6.32.  Please verify if it still should be listed and let me kn=
ow
>(either way).
>
>
>Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D15137
>Subject		: NULL pointer dereference in vlan_skb_recv
>Submitter	: Bruno Pr=C3=A9mont <bonbons-ud5FBsm0p/xEiooADzr8i9i2O/JbrIOy@public.gmane.org>
>Date		: 2010-01-23 15:56 (2 days old)
>References	: http://marc.info/?l=3Dlinux-kernel&m=3D126426286507497&w=3D=
4
>Handled-By	: Eric Dumazet <eric.dumazet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>Patch		: http://patchwork.kernel.org/patch/74999/
>		  http://patchwork.kernel.org/patch/75002/
>

This one can be closed, patch from Eric is already applied by David Mil=
ler.


--=20
Live like a child, think like the god.
=20
