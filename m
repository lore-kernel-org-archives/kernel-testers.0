From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #11954] sysprof tracer ABI regression in 2.6.28rc1
Date: Mon, 17 Nov 2008 17:24:31 +0100
Message-ID: <20081117162431.GG12081@elte.hu>
References: <VwdsQNEjR_C.A.CiD.9_FIJB@chimera> <Q7OAnAv0V3D.A.MbF.8AGIJB@chimera> <ye8k5b2eetz.fsf@camel11.daimi.au.dk>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <ye8k5b2eetz.fsf-DjOboVYaZglJJDyRqOZFmmSdvHPH+/yF@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Soeren Sandmann <sandmann-SSQ8kajmRZpknbxzx/v8hQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>


* Soeren Sandmann <sandmann-SSQ8kajmRZpknbxzx/v8hQ@public.gmane.org> wrote:

> There are no ABI guarantees for the sysprof tracer at this point, 
> given that it is in debugfs [...]

to avoid situations like this, it would be nice to print out the 
format string itself in the trace header, in printf format string 
style. That way if there's a trivial expansion in trace format, it can 
be detected (and even followed) by user-space - without some ugly 
version based API.

	Ingo
