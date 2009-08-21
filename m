From: Alan Jenkins <sourcejedi.lkml-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: Re: [Bug #13620] acpi_enforce_resources broken - conflicting i2c 
	module loaded on some EeePCs
Date: Fri, 21 Aug 2009 10:35:33 +0100
Message-ID: <9b2b86520908210235l7961410ag74200291c7f8e3a5@mail.gmail.com>
References: <xDf-7eSwYsC.A.-6B.klIjKB@chimera>
	 <Era7U-todKF.A.wsC.gmIjKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=Vw6sArOiREdPfb8agfWN1quiaMeHW8/JQjS6+ZP1HkA=;
        b=WihZkyfYY7Oo7WxwZNDRSQ8leRhfNRAvr7YTY4VbRqsLAA2YX1HTLUN4A+qJqBXMLv
         WA8cK0zkxa1GD1VZdxj0YEa994KJCGEJ27OADFX6Wq1PbnAq/bSX29+Kwc7vTt4EOvj9
         xK+BPs6U+g0ppZD9kxamqiHwYprHqOZmlGMOs=
In-Reply-To: <Era7U-todKF.A.wsC.gmIjKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Bob Moore <robert.moore-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On 8/19/09, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.29 and 2.6.30.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.29 and 2.6.30.  Please verify if it still should
> be listed and let me know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13620
> Subject		: acpi_enforce_resources broken - conflicting i2c module loaded on
> some EeePCs
> Submitter	: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
> Date		: 2009-06-25 08:31 (56 days old)
> References	:
> <http://lists.alioth.debian.org/pipermail/debian-eeepc-devel/2009-June/002316.html>
> Handled-By	: Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> Patch		: http://patchwork.kernel.org/patch/33626/

This must have been fixed in -rc6, because someone just complained
about it working again :-).
<http://article.gmane.org/gmane.linux.acpi.devel/40999/>

I confirmed this on my own EeePC; i2c-i801 is now correctly denied
access to the IO resources claimed by ACPI.  Please remove this
regression from your list.

Thanks
Alan
