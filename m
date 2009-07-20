From: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #13554] linux-image-2.6.30-1-686, KMS enabled: black
 screen, no X window
Date: Mon, 20 Jul 2009 14:35:49 -0700
Message-ID: <20090720143549.b0aee3a9.akpm@linux-foundation.org>
References: <tSdKBEwEOhE.A.2wF.s_oUKB@chimera>
	<bXZeuxPQAWE.A.lOH.aApUKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <bXZeuxPQAWE.A.lOH.aApUKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, wolput-kN7GrHn7egj0B9fh5IxImPP6llvjuJOh@public.gmane.org, Nico Schottelius <nico-linux-20090706-xuaVFQXs+5hIG4jRRZ66WA@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, dri-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org

On Tue,  7 Jul 2009 02:00:46 +0200 (CEST)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.29 and 2.6.30.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.29 and 2.6.30.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13554
> Subject		: linux-image-2.6.30-1-686, KMS enabled: black screen, no X window
> Submitter	: Jos van Wolput <wolput-kN7GrHn7egj0B9fh5IxImPP6llvjuJOh@public.gmane.org>
> Date		: 2009-06-17 06:28 (20 days old)

Nico reported a black-screen regression too.  Subject:

	2.6.31-r2: Xorg: Black screen


  Compared to the other normal brightness problems, with 2.6.31-r2
  xorg starts, but there is no image displayed (neither on internal nor
  external monitor).

  Switching back to console does not change the status, though
  hitting ctrlaltdel reboots the system (i.e.  still up and running
  fine).

  It works with 2.6.30-rc7 (besides sometimes the brightness is
  broken there).


This looks like it might be a post-2.6.30 regression, in which case it
might have a separate cause.


We're having a lot of problems in this area.
