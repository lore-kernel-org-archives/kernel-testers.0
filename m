From: ebiederm-aS9lmoZGLiVWk0Htik3J/w@public.gmane.org (Eric W. Biederman)
Subject: Re: [Bug #16173] After uncompressing the kernel, at boot time, the server hangs.
Date: Fri, 23 Jul 2010 05:33:37 -0700
Message-ID: <m1ocdys7ha.fsf@fess.ebiederm.org>
References: <Lupw7pePXBO.A.fZH.G2XSMB@chimera>
	<tneGvaw1wLL.A.zlC.h5XSMB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <tneGvaw1wLL.A.zlC.h5XSMB@chimera> (Rafael J. Wysocki's message of "Fri\, 23 Jul 2010 13\:42\:35 +0200 \(CEST\)")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, David Hill <hilld-HTiBYHdybX7UkGsOFmftXw@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>

"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> writes:

> This message has been generated automatically as a part of a summary report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.34.  Please verify if it still should be listed and let the tracking team
> know (either way).

This one is a mystery.  I have tried and failed to reproduce this on a similar
hardware configuration so I am at a loss as to where to look next to understand
this bug.

Eric



> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16173
> Subject		: After uncompressing the kernel, at boot time, the server hangs.
> Submitter	: David Hill <hilld-HTiBYHdybX7UkGsOFmftXw@public.gmane.org>
> Date		: 2010-06-09 23:25 (45 days old)
> First-Bad-Commit: http://git.kernel.org/linus/cf7500c0ea133d66f8449d86392d83f840102632
> Handled-By	: Eric W. Biederman <ebiederm-aS9lmoZGLiVWk0Htik3J/w@public.gmane.org>
