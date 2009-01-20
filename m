From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #12505] 2.6.29-rc1 Firefox crashing on page load
Date: Tue, 20 Jan 2009 09:16:50 +0100
Message-ID: <20090120081650.GA29725@elte.hu>
References: <0GOi9pntEoL.A.iGF.B9QdJB@chimera> <2QN7KFic7LG.A.C4F.Q9QdJB@chimera> <49756F3E.6050304@gawab.com> <20090120074312.GD16426@elte.hu>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090120074312.GD16426-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Justin Madru <jdm64-u1xxEuL7cY4AvxtiuMwx3w@public.gmane.org>, Hiroshi Shimamoto <h-shimamoto-ehU+Cx/zZe18UrSeD/g0lQ@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, Roland McGrath <roland-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>


* Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:

> (added Cc:s)

> Justin, does it work if you apply the patch below instead of the revert?

hm, that patch wont build because the protect_asmlinkage macro is rather 
limited - it cannot deal with structure parameters.

We might be better off with a revert here, and a comment added that points 
out the problem.

	Ingo
