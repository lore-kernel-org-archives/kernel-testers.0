From: Oliver Neukum <oliver-GvhC2dPhHPQdnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #13682] The webcam stopped working when upgrading from 2.6.29 to 2.6.30
Date: Tue, 7 Jul 2009 09:32:21 +0200
Message-ID: <200907070932.22211.oliver@neukum.org>
References: <tSdKBEwEOhE.A.2wF.s_oUKB@chimera> <bXZeuxPQAWE.A.b0F.x_oUKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <bXZeuxPQAWE.A.b0F.x_oUKB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Nathanael Schaeffer <nathanael.schaeffer-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

Am Dienstag, 7. Juli 2009 02:01:07 schrieb Rafael J. Wysocki:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.29 and 2.6.30.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.29 and 2.6.30.  Please verify if it still should
> be listed and let me know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13682
> Subject		: The webcam stopped working when upgrading from 2.6.29 to 2.6.30
> Submitter	: Nathanael Schaeffer <nathanael.schaeffer-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-06-30 13:34 (7 days old)

This is caused by selecting a format (no longer / not) supported. Please make
an strace of the failing programm so we know what it requests.

	Regards
		Oliver
