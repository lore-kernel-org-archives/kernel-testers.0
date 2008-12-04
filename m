From: "Fabio Comolli" <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12155] Regression in 2.6.28-rc and 2.6.27-stable - hibernate related
Date: Thu, 4 Dec 2008 09:50:13 +0100
Message-ID: <b637ec0b0812040050g58f3e28dxba5bca8c77bb5a94@mail.gmail.com>
References: <QFIA5HSHV8B.A.2aG.hoxNJB@chimera>
	 <bfPM5B8Tx2B.A.MQH.zoxNJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=fT5AId3SQJWp+EyzbjbIiVr51larnAdmmRomWLxcy80=;
        b=gfHpihrmccmzJeFf4ht42sPtKKxd0ovMFFPzWK0psoXikhDxdhiJeh7xOy+WwOK5YD
         qtBzK/hBUKTGDOCDqcFW6AYEW0eoYMW/R26zTPvgRDYK+XGdVyFUHoAeg2VsxllfQlAn
         uBmxO4Lyecas3dmFjqjyrpSmoDc5Zgjeze5Io=
In-Reply-To: <bfPM5B8Tx2B.A.MQH.zoxNJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Hi.

On Wed, Dec 3, 2008 at 10:58 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.27.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12155
> Subject         : Regression in 2.6.28-rc and 2.6.27-stable - hibernate related
> Submitter       : Fabio Comolli <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date            : 2008-11-23 16:17 (11 days old)
> References      : http://marc.info/?l=linux-kernel&m=122745709926361&w=4
>

Unfortunately I don't have much time to test but yes, it was present
last time I tried.
I'll try -rc7-git probably tonight and 2.6.27.8 when -stable team releases it.
