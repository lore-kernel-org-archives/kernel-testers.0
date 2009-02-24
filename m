From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #12660] Linux 2.6.28.3 freezing on a 32-bits x86 Thinkpad
	T43p
Date: Tue, 24 Feb 2009 08:29:02 +0100
Message-ID: <20090224072902.GA20098@elte.hu>
References: <GVhknozYwrL.A.hiC.rozoJB@chimera> <vP9hdyF4fL.A.IkE.cpzoJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <vP9hdyF4fL.A.IkE.cpzoJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>


* Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12660
> Subject		: Linux 2.6.28.3 freezing on a 32-bits x86 Thinkpad T43p
> Submitter	: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
> Date		: 2009-02-04 21:11 (20 days old)
> References	: http://marc.info/?l=linux-kernel&m=123378196022258&w=4
> Handled-By	: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

Mathieu, this bug is very weird and makes little sense. Could 
you please reproduce it with vanilla -git too (without any LTT 
patches applied) and send the full boot+crash log?

	Ingo
