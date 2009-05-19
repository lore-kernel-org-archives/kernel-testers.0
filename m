From: Oleg Nesterov <oleg-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13107] LTP 20080131 causes defunct processes w/2.6.30-rc1
Date: Tue, 19 May 2009 15:32:45 +0200
Message-ID: <20090519133245.GB14782@redhat.com>
References: <_AjETDMbIoL.A.DcH.RYzDKB@chimera> <385Pu-agh7M.A.K7C._ZzDKB@chimera> <alpine.LFD.2.01.0905171206330.3301@localhost.localdomain> <20090518144132.GA18607@redhat.com> <20090519091631.GB31404@elte.hu>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090519091631.GB31404-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kumar Gala <galak-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>, Sukadev Bhattiprolu <sukadev-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, Roland McGrath <roland-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

On 05/19, Ingo Molnar wrote:
>
> * Oleg Nesterov <oleg-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org> wrote:
>
> > And I don't think the kernel is buggy, this is expected behaviour.
> > With this commit (actually, there were several patches) /sbin/init
> > respects SIGSTOP if the caller has rights to send it, this change
> > is intentional. I'd even say this is fix.
> >
> > Note that even root can't stop init, SIGSTOP should be sent from
> > the parent namespace, or from ptracer. And ptracer could obviously
> > ptrace_stop() init even before this patch.
>
> There's one important aspect here: _if_ a change results in
> user-space visible behavioral change, it does not matter how correct
> it is in the grand scheme of things. (beyond plain bugfixes solving
> crashes, etc.) What matters is whether there's any app out there
> that might possibly rely on the old behavior.
>
> The LTP testcase might be synthetic, and it could be fixed and the
> commit might even end up being correct - but some thought should be
> expended on compatibility and real-life impact (and scope) here -
> not just on strict 'correctness'.

Yes, agreed.

But hopefully in this case we can't break the user-space. Because the
tracing of /sbin/init is special, and this was forbidden till 2.6.25.
Not only you can make the system unusable, it is very easy to crash
the kernel if you trace init. I don't think any "good" app can rely
on the wrong old behaviour, but of course any behavioral change is
dangerous.

And please note that the old behaviour was known to be wrong. If we
take the sub-namespace inits into account, it was very wrong. Of course,
we can add the special is_global_init() hack to preserve the current
behaviour at least for the root namespace, but this doesn't look good.

Oleg.
