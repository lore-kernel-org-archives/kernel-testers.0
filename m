From: Pekka Enberg <penberg-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #39412] Win Vista and Win2K8 guests' network breaks down
Date: Mon, 15 Aug 2011 16:50:32 +0300
Message-ID: <1313416232.32391.13.camel@jaguar>
References: <xuTC4jRtHbB.A.l4H.gMCSOB@chimera>
	 <bkwpSnItbJM.A.nx.VNCSOB@chimera>
	 <CAOJsxLEToaQe3DrhUQx5FizMnzATxwG8XGCPwZpRFpuBQpq1ug@mail.gmail.com>
	 <4E49215A.5080103@redhat.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4E49215A.5080103-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Jay Ren <yongjie.ren-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, stefanha-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org, KVM General <kvm-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Mon, 2011-08-15 at 06:38 -0700, Avi Kivity wrote:
> On 08/15/2011 03:33 AM, Pekka Enberg wrote:
> > On Sun, Aug 14, 2011 at 10:07 PM, Rafael J. Wysocki<rjw-KKrjLPT3xs0@public.gmane.org>  wrote:
> > >  This message has been generated automatically as a part of a report
> > >  of regressions introduced between 2.6.39 and 3.0.
> > >
> > >  The following bug entry is on the current list of known regressions
> > >  introduced between 2.6.39 and 3.0.  Please verify if it still should
> > >  be listed and let the tracking team know (either way).
> > >
> > >
> > >  Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=39412
> > >  Subject         : Win Vista and Win2K8 guests' network breaks down
> > >  Submitter       : Jay Ren<yongjie.ren-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> > >  Date            : 2011-07-15 15:31 (31 days old)
> >
> > The bugzilla report claims that this commit fixes the regression:
> >
> > http://git.kernel.org/?p=virt/kvm/kvm.git;a=commitdiff;h=e72ef590a3ef3047f6ed5bcb8808a9734f6c4b32
> >
> > The commit, however, is not in mainline nor does it seem to be tagged
> > for -stable.
> 
> That commit is completely unrelated.

Heh, sorry about that, that's the commit SHA mentioned in the above
bugzilla report. :-)
