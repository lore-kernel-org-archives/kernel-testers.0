From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #12155] Regression in 2.6.28-rc and 2.6.27-stable - hibernate related
Date: Sun, 7 Dec 2008 21:08:26 +0100
Message-ID: <200812072108.26246.rjw@sisk.pl>
References: <QFIA5HSHV8B.A.2aG.hoxNJB@chimera> <b637ec0b0812061208i9520bd0tfd404f1a9c8a95ba@mail.gmail.com> <b637ec0b0812070539i20684ec2tfc6748f01d99fff9@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <b637ec0b0812070539i20684ec2tfc6748f01d99fff9-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Fabio Comolli <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sunday, 7 of December 2008, Fabio Comolli wrote:
> Hi.
> 
> On Sat, Dec 6, 2008 at 9:08 PM, Fabio Comolli <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> > Hi Rafael.
> >
> > On Thu, Dec 4, 2008 at 9:50 AM, Fabio Comolli <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> >> Hi.
> >>
> >> I'll try -rc7-git probably tonight and 2.6.27.8 when -stable team releases it.
> >>
> >
> > 2.6.28-rc7 survived 7 suspend/resume cycles and then showed the bug.
> 
> 2.6.27.8 got me really scared. After the resume and the usual hang, my
> hard disk did not recover and my rootfilesystem's journal aborted. Of
> course I don't have messages to post as the rootfs was at this point
> mounted readonly. I read those info from dmesg.
> 
> I went back to my dear 2.6.27.4 which is stable and never caused me
> any problems.
> 
> Unless someone jumps in with some ideas, I'm not going to do testings
> anymore. I can't lose my only machine because of this.

OK, thanks for the testing so far.

Please just ignore the subsequent automatic messages about this regression.

Thanks,
Rafael
