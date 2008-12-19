From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [patch] Re: [Bug #12100] resume (S2R) broken by Intel
	microcode module, on A110L
Date: Sat, 20 Dec 2008 00:30:06 +0100
Message-ID: <20081219233006.GA17984@elte.hu>
References: <1229728524.5122.13.camel@earth>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1229728524.5122.13.camel@earth>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Dmitry Adamushko <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Andreas Mohr <andi-5+Cda9B46AM@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


* Dmitry Adamushko <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:

> Hi,
> 
> 
> This is in response to the following bug report:
> 
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12100
> Subject         : resume (S2R) broken by Intel microcode module, on A110L
> Submitter       : Andreas Mohr <andi-5+Cda9B46AM@public.gmane.org>
> Date            : 2008-11-25 08:48 (19 days old)
> Handled-By      : Dmitry Adamushko <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

applied to tip/x86/microcode, thanks Dmitry!

The fix looks right but somewhat intrusive in scope, so i'm a bit 
reluctant to push it towards .28 straight away - without having feedback 
in the bugzilla. If feedback is positive (the bug reported there goes away 
completely) we can cherry-pick it over into x86/urgent, ok? And in any 
case i've marked it as a -stable backport for .28.1.

	Ingo
