From: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Subject: Re: [Bug #34002] [REGRESSION] [2.6.39-rc3] Wrong resolution in
 framebuffer and X Window
Date: Wed, 15 Jun 2011 11:46:14 -0700
Message-ID: <20110615114614.054df25f@jbarnes-desktop>
References: <9NVbY1BZ_5D.A.2lE.jzS9NB@chimera>
	<kTLfM29CaqB.A.P3F.a1S9NB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <kTLfM29CaqB.A.P3F.a1S9NB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On Sun, 12 Jun 2011 23:12:08 +0200 (CEST)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.38 and 2.6.39.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.38 and 2.6.39.  Please verify if it still should
> be listed and let the tracking team know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=34002
> Subject		: [REGRESSION] [2.6.39-rc3] Wrong resolution in framebuffer and X Window
> Submitter	: Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2011-04-17 16:04 (57 days old)
> Message-ID	: <201104171804.04664.maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> References	: http://marc.info/?l=linux-fbdev&m=130305625114863&w=2

Did you ever bisect this issue? As Chris says it sounds like an EDID
problem; we detect the outputs and attach some modes, but they sound
like the wrong ones for your config.  Maybe we broke EDID fetching for
your config?

-- 
Jesse Barnes, Intel Open Source Technology Center
