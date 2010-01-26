From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #15040] High cpu temperature with 2.6.32
Date: Tue, 26 Jan 2010 13:43:15 +0100
Message-ID: <201001261343.15685.rjw@sisk.pl>
References: <pYFNu11z2aM.A.pJH.CZMXLB@chimera> <201001252152.33031.rjw@sisk.pl> <20100125214150.1f2e1410@infradead.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100125214150.1f2e1410-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, Dimitrios Apostolou <jimis-hi6Y0CQ0nG0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Tuesday 26 January 2010, Arjan van de Ven wrote:
> On Mon, 25 Jan 2010 21:52:32 +0100
> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> 
> > On Monday 25 January 2010, Dimitrios Apostolou wrote:
> > > I will let you know when this bug is fixed in a regular kernel
> > > release. I just tested 2.6.32.5 and the bug persists. BTW, Arjan, I
> > > think this bug will be biting other people too, see the following
> > > thread: http://bugs.archlinux.org/task/17771
> > 
> > I don't think it's fixed, I haven't seen the Arjan's patch anywhere
> > close to the mainline.
> > 
> > Arjan, perhaps send it directly to Linus, please (unless it's already
> > waiting somewhere for merging)?
> 
> I sent it to Len and Andrew (Len as maintainer, Andrew as maintainer of
> last resort)..... what more would I need?

Well, Andrew, do you have the patch at http://patchwork.kernel.org/patch/71962/
in your queue?  It's a regression fix.

Rafael
