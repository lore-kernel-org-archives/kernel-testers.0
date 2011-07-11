From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #38522] address space collision error message on boot
Date: Tue, 12 Jul 2011 00:38:18 +0200
Message-ID: <201107120038.18847.rjw@sisk.pl>
References: <Y7LyOsOBwFM.A.kJG.kBYGOB@chimera> <XNkIyhV6dgF.A.D4G.TCYGOB@chimera> <CAA9_cmeY1Q-L_iMQfsf-KWufZzpkMSWzQ42ep=bQP9XZwyV-Lw@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <CAA9_cmeY1Q-L_iMQfsf-KWufZzpkMSWzQ42ep=bQP9XZwyV-Lw-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Dan Williams <dan.j.williams-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Dave Jiang <dave.jiang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "H. Peter Anvin" <hpa-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Jools Wills <jools-ApNQbik20ZdhgJEaYHuxyvXRex20P6io@public.gmane.org>, bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org

On Monday, July 11, 2011, Dan Williams wrote:
> [ adding Bjorn ]
> 
> On Sun, Jul 10, 2011 at 3:38 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > This message has been generated automatically as a part of a summary report
> > of recent regressions.
> >
> > The following bug entry is on the current list of known regressions
> > from 2.6.39.  Please verify if it still should be listed and let the tracking team
> > know (either way).
> 
> The patch from the bugzilla entry is not yet upstream.
> 
> >
> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=38522
> > Subject         : address space collision error message on boot
> > Submitter       : Jools Wills <jools-ApNQbik20ZdhgJEaYHuxyvXRex20P6io@public.gmane.org>
> > Date            : 2011-06-29 02:28 (12 days old)
> > First-Bad-Commit: http://git.kernel.org/linus/5d94e81f69d4b1d1102d3ab557ce0a817c11fbbb
> 
> Per the commentary in the bugzilla this commit makes the warning
> message appear on 64-bit builds, but 32-bit has the same problem on
> affected platforms (without the commit).
> 
> Bjorn has a proposed patch [1] that just downgrades the warning since
> system operation does not appear to be affected.
> 
> --
> Dan
> 
> [1]: https://bugzilla.kernel.org/attachment.cgi?id=64102

Thanks for the update.

Rafael
