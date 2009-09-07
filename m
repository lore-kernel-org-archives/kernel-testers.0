From: "Tomas M." <tmezzadra-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13836] suspend script fails, related to stdout?
Date: Mon, 07 Sep 2009 00:28:56 -0300
Message-ID: <4AA47DF8.80302@gmail.com>
References: <2ehA7xoGvXL.A.4PB.3eBpKB@chimera> <Vm51Upp4EV.A.b4D.bgBpKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=zzeRcwj7qpxtxtEcdPy1KMuiMdogKCybk5zzIxTPXFE=;
        b=cGotwuMh1c+ZnjIzkllaavyHiCUc4SyzJ16dAA7VKCZqbYrXbgZG0q3LNNDDOLcC+1
         OgiTJF5uk94TTfjZodPeot+HyLFj8gE/tatODdlNgWTA5N0flvrZQTaZynV9OoJUBqhs
         oBR01UEwrUogsMpmHo37mwaoFjD+C35VN8Fq0=
In-Reply-To: <Vm51Upp4EV.A.b4D.bgBpKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

tested rc9 and its still there.

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.30.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13836
> Subject		: suspend script fails, related to stdout?
> Submitter	: Tomas M. <tmezzadra-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-07-17 21:24 (52 days old)
> References	: http://marc.info/?l=linux-kernel&m=124785853811667&w=4
>
>
>   
