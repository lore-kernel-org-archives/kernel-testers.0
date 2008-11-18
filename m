From: Soeren Sandmann <sandmann-SSQ8kajmRZpknbxzx/v8hQ@public.gmane.org>
Subject: Re: [Bug #11954] sysprof tracer ABI regression in 2.6.28rc1
Date: 18 Nov 2008 13:17:53 +0100
Message-ID: <ye8bpwd6xe6.fsf@camel04.daimi.au.dk>
References: <VwdsQNEjR_C.A.CiD.9_FIJB@chimera>
	<Q7OAnAv0V3D.A.MbF.8AGIJB@chimera>
	<ye8k5b2eetz.fsf@camel11.daimi.au.dk> <20081117162431.GG12081@elte.hu>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081117162431.GG12081-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>

Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> writes:

> * Soeren Sandmann <sandmann-SSQ8kajmRZpknbxzx/v8hQ@public.gmane.org> wrote:
> 
> > There are no ABI guarantees for the sysprof tracer at this point, 
> > given that it is in debugfs [...]
> 
> to avoid situations like this, it would be nice to print out the 
> format string itself in the trace header, in printf format string 
> style. That way if there's a trivial expansion in trace format, it can 
> be detected (and even followed) by user-space - without some ugly 
> version based API.

It's not clear to me that sysprof userspace could realistically do
runtime detection. It would require (a) using sscanf() to parse the
output and (b) that only the types changed, not the actual content or
ordering. (a) is likely a non-starter performance-wise (the first
version actually did this and it was too slow), and (b) means there
are strict limits to what could be changed anyway.


Soren
