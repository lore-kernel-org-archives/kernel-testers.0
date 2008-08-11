From: "Dmitry Adamushko" <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11288] Regression in 2.6.27-rc1 for set_cpus_allowed_ptr
Date: Mon, 11 Aug 2008 10:52:47 +0200
Message-ID: <b647ffbd0808110152s5787bb08k679851f82647df43@mail.gmail.com>
References: <VYYCiQF4qDI.A.BPH.KCjnIB@albercik>
	 <cX_-nNkxKaF.A.bnH.aCjnIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=vv2Nuzu083vQnwPXt+9gSbgsDI/tid7OhBHccivkB3Y=;
        b=E6erIQK5ywKQdJRunrqZsYhHU8jy59umaRw4zPUAtAwiYkKcatHm48RHedlpLxhTvf
         MqD+tTTqdqx3vTXdNcPouKNLVPaJX4d6K/hfdPFPvGQXiH6fOVuLNODyrsskVlOJdZRs
         DUYf89EJuY7lRWYuL+/e0Ueq3rb6/1DHNvYU8=
In-Reply-To: <cX_-nNkxKaF.A.bnH.aCjnIB@albercik>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, "Langsdorf, Mark" <mark.langsdorf-5C7GfCeVMHo@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

2008/8/10 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me know
> (either way).

I've not yet received any feedback from Mark whether the patch
suggested by me does fix a problem for him.


-- 
Best regards,
Dmitry Adamushko
