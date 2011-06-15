From: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Subject: Re: [Bug #36332] Intel gpu turns external monitor off when X starts
Date: Wed, 15 Jun 2011 11:48:49 -0700
Message-ID: <20110615114849.2e7a1174@jbarnes-desktop>
References: <9NVbY1BZ_5D.A.2lE.jzS9NB@chimera>
	<kTLfM29CaqB.A.lDF.8zS9NB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <kTLfM29CaqB.A.lDF.8zS9NB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, rocko <rockorequin-PkbjNfxxIARBDgjK7y7TUQ@public.gmane.org>

On Sun, 12 Jun 2011 23:12:10 +0200 (CEST)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.38 and 2.6.39.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.38 and 2.6.39.  Please verify if it still should
> be listed and let the tracking team know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=36332
> Subject		: Intel gpu turns external monitor off when X starts
> Submitter	: rocko <rockorequin-PkbjNfxxIARBDgjK7y7TUQ@public.gmane.org>
> Date		: 2011-05-31 02:53 (13 days old)

Possibly more DPMS confusion; Chris what's the latest on that?

rocko, did you ever bisect this to a particular commit (sounds like
between .38 and .39)?

-- 
Jesse Barnes, Intel Open Source Technology Center
