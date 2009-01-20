From: "Alex Riesen" <raa.lkml-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12468] Crash in acpi_cpufreq_init
Date: Tue, 20 Jan 2009 01:33:24 +0100
Message-ID: <81b0412b0901191633y130c4cf0w5531af81c3749ee2@mail.gmail.com>
References: <0GOi9pntEoL.A.iGF.B9QdJB@chimera>
	 <2QN7KFic7LG.A.sgH.t9QdJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=3EJnxICuR1zFnDKCJrsk/nhj3n/5h39L6NMLvjZdF8s=;
        b=E43KsjPnvwaJme8RiHkmYfs/0Op2t96+mHsgdKuzdV7oIiku2smc38rw9Jv3K7k5I/
         QhR7zbeVH/2Vwws17WfXLebgzkmhTzzphG8LCErwQo9e/jFcgQXJu4YTA2L7iy10HOa6
         OM67mI4XppDkZGNNZa3Y6r45wm4QafLDhe1+w=
In-Reply-To: <2QN7KFic7LG.A.sgH.t9QdJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alex Riesen <fork0-iA+eEnwkJgzk1uMJSBkQmQ@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

2009/1/19 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> (either way).
>

The regression is still present.

>
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12468
> Subject         : Crash in acpi_cpufreq_init
> Submitter       : Alex Riesen <fork0-iA+eEnwkJgzk1uMJSBkQmQ@public.gmane.org>
> Date            : 2009-01-17 10:47 (3 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=50c668d678fd01284799a6e4f1b91829d83cb9ed
>
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/
>
