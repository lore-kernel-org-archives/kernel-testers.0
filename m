From: Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>
Subject: Re: [Bug #39412] Win Vista and Win2K8 guests' network breaks down
Date: Mon, 15 Aug 2011 22:17:05 +0200
Message-ID: <20110815221705.768b56f8@schatten.dmk.lab>
References: <xuTC4jRtHbB.A.l4H.gMCSOB@chimera>
	<bkwpSnItbJM.A.nx.VNCSOB@chimera>
	<CAOJsxLEToaQe3DrhUQx5FizMnzATxwG8XGCPwZpRFpuBQpq1ug@mail.gmail.com>
	<4E49215A.5080103@redhat.com>
	<1313416232.32391.13.camel@jaguar>
	<4E4928A1.1050104@redhat.com>
	<20110815163142.0182ce35@schatten.dmk.lab>
	<4E496E7C.30303@redhat.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4E496E7C.30303-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: Pekka Enberg <penberg-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jay Ren <yongjie.ren-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, stefanha-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org, KVM General <kvm-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Mon, 15 Aug 2011 12:07:40 -0700
Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org> wrote:

> On 08/15/2011 07:31 AM, Florian Mickler wrote:
> > On Mon, 15 Aug 2011 07:09:37 -0700
> > Avi Kivity<avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>  wrote:
> >
> > >  On 08/15/2011 06:50 AM, Pekka Enberg wrote:
> > >  >  Heh, sorry about that, that's the commit SHA mentioned in the above
> > >  >  bugzilla report. :-)
> > >  >
> > >  >
> > >
> > >  Think of it as 'git bisect good' input, rather than output.
> > >
> >
> > Can you post a comment to the bug when Linus pulled that tree?
> 
> Most likely kvm.git got that commit from Linus - I don't think the fix 
> came from kvm.git.
> 

Hm ok. But the tree tested by the reporter is contained in kvm/master
and kvm/next and not in Linus tree. 

Anyhow, Rafael did ask the correct question on the bug to resolve
this. :)

Regards,
Flo
