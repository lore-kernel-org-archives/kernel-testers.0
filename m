From: =?utf-8?Q?Am=C3=A9rico?= Wang <xiyou.wangcong-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15308] 2.6.33-rc8 breaks UML with Restrict initial stack
	space expansion to rlimit
Date: Sat, 20 Feb 2010 22:48:10 +0800
Message-ID: <20100220144810.GF3000@hack>
References: <Z5cmiqDComP.A.gyF.OiIeLB@chimera> <4un6Gst5rKB.A.u_F.UiIeLB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=YbSCoeLeONTqBgH3fbRxfroAGWfCGYU7taPOh/SwZWA=;
        b=dK3WUJhoVK1xf4M0/KVUwdPjd5Sl3Nr31qeEzy3AoK6XgRwXPGy8a4yzXENnbuqjxx
         PxbO09BAvQ+89iaxxWcQvBR1ywQFVaZTyGqP7V1a6paaTwNEZBn81v3DatGyNadCxE1R
         /PyDLSor/awdWIQ/1gmWEMikCZl62AmgUpMJM=
Content-Disposition: inline
In-Reply-To: <4un6Gst5rKB.A.u_F.UiIeLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Jouni Malinen <j@w1.fi>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Michael Neuling <mikey-/owAOxkjmzZAfugRpC6u6w@public.gmane.org>

On Mon, Feb 15, 2010 at 12:38:37AM +0100, Rafael J. Wysocki wrote:
>This message has been generated automatically as a part of a summary report
>of recent regressions.
>
>The following bug entry is on the current list of known regressions
>from 2.6.32.  Please verify if it still should be listed and let the tracking team
>know (either way).
>
>
>Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15308
>Subject		: 2.6.33-rc8 breaks UML with Restrict initial stack space expansion to rlimit
>Submitter	: Jouni Malinen <j@w1.fi>
>Date		: 2010-02-14 16:40 (1 days old)
>First-Bad-Commit: http://git.kernel.org/git/linus/803bf5ec259941936262d10ecc84511b76a20921
>Message-ID	: <20100214164023.GA2726-mgr6C1c9aYeHXe+LvDLADg@public.gmane.org>
>References	: http://marc.info/?l=linux-kernel&m=126616751807902&w=4
>Handled-By	: Michael Neuling <mikey-/owAOxkjmzZAfugRpC6u6w@public.gmane.org>
>

It should be fixed by this patch:

http://lkml.org/lkml/2010/2/15/61
