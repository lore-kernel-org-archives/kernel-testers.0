From: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Subject: Re: [linux-pm] 3.3-rc6: Reported regressions from 3.2
Date: Mon, 5 Mar 2012 11:04:38 -0500 (EST)
Message-ID: <Pine.LNX.4.44L0.1203051056560.1847-100000@iolanthe.rowland.org>
References: <FNlNbnGKWLP.A.dME.3F9UPB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <FNlNbnGKWLP.A.dME.3F9UPB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Greg KH <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sun, 4 Mar 2012, Rafael J. Wysocki wrote:

> Bug-Entry	: https://bugzilla.kernel.org/show_bug.cgi?id=42683
> Subject		: WARN... Device 'cpu1' does not have a release() function, it is broken and must be fixed. when doing 'xl vcpu-set <guest_id> 1'
> Submitter	: Konrad Rzeszutek Wilk <konrad.wilk-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
> Date		: 2012-01-23 18:06 (42 days old)
> Message-ID	: <20120123180601.GA24553-6K5HmflnPlqSPmnEAIUT9EEOCMrvLtNR@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=132734233916154&w=2

This has been fixed by commits 2885e25c422fb68208f677f944a45fce8eda2a3c
and 29bb5d4fd3140a7d5d02d858118c74a45f15c296, plus probably one more
that I can't identify.

Alan Stern
