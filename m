From: Soeren Sandmann <sandmann-SSQ8kajmRZpknbxzx/v8hQ@public.gmane.org>
Subject: Re: [Bug #11954] sysprof tracer ABI regression in 2.6.28rc1
Date: 17 Nov 2008 13:07:04 +0100
Message-ID: <ye8k5b2eetz.fsf@camel11.daimi.au.dk>
References: <VwdsQNEjR_C.A.CiD.9_FIJB@chimera>
	<Q7OAnAv0V3D.A.MbF.8AGIJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Q7OAnAv0V3D.A.MbF.8AGIJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>

"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> writes:

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.27.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11954
> Subject		: sysprof tracer ABI regression in 2.6.28rc1
> Submitter	: Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>
> Date		: 2008-11-04 22:14 (13 days old)
> Handled-By	: Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>
> Patch		: http://bugzilla.kernel.org/attachment.cgi?id=18683&action=view

There are no ABI guarantees for the sysprof tracer at this point,
given that it is in debugfs and that there is no working userspace
code using it.



Soren
