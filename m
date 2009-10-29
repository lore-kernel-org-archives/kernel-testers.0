From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14472] EXT4 corruption
Date: Thu, 29 Oct 2009 22:33:11 +0100
Message-ID: <200910292233.11090.rjw@sisk.pl>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera> <6dRYo8ss7vL.A.haF.Are5KB@chimera> <cb0375e10910291257t1f2f16ciade932bd78689ccc@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <cb0375e10910291257t1f2f16ciade932bd78689ccc-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Andrew Lutomirski <luto-3s7WtUTddSA@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Shawn Starr <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>, Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>

On Thursday 29 October 2009, Andrew Lutomirski wrote:
> On Mon, Oct 26, 2009 at 2:55 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> >
> > The following bug entry is on the current list of known regressions
> > from 2.6.31.  Please verify if it still should be listed and let me know
> > (either way).
> >
> >
> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=14472
> > Subject         : EXT4 corruption
> > Submitter       : Shawn Starr <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
> > Date            : 2009-10-13 2:07 (14 days old)
> > References      : http://marc.info/?l=linux-kernel&m=125539997508256&w=4
> > Handled-By      : Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>
> >
> 
> 
> This but is *not* fixed.  I just triggered it a few minutes ago by
> abusing i915 and drm, which caused a panic.  This is slightly newer
> than 2.6.32-rc5, with a couple of i915 bugfixes thrown in.
> 
> Photos are here:
> http://web.mit.edu/luto/www/ext4_crashphotos/
> 
> This is a very nasty regression, for obvious reasons.

Thanks for the update.

Rafael
