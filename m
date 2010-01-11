From: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Subject: Re: [Bug #14896] REGRESSION for RT2561/RT61 in 2.6.32, related to
 power saving
Date: Mon, 11 Jan 2010 09:58:32 -0500 (EST)
Message-ID: <Pine.LNX.4.44L0.1001110957440.2873-100000@iolanthe.rowland.org>
References: <CXIfLt-ygXM.A.1GC.1glSLB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <CXIfLt-ygXM.A.1GC.1glSLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Gertjan van Wingerde <gwingerde-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sun, 10 Jan 2010, Rafael J. Wysocki wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14896
> Subject		: REGRESSION for RT2561/RT61 in 2.6.32, related to power saving
> Submitter	: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
> Date		: 2009-12-06 22:12 (36 days old)
> References	: http://marc.info/?l=linux-kernel&m=126013756829691&w=4
> Handled-By	: Gertjan van Wingerde <gwingerde-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Patch		: http://patchwork.kernel.org/patch/67338/

This has been fixed by commit 93b6bd26b74efe46b4579592560f9f1cb7b61994.

Alan Stern
