From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14472] EXT4 corruption
Date: Tue, 17 Nov 2009 23:32:42 +0100
Message-ID: <200911172332.43018.rjw@sisk.pl>
References: <GUZt44bIwCE.A.vLF.pSdALB@chimera> <xXQGFmujPl.A.EOH.XTdALB@chimera> <9872C96C-FAE8-46E8-9588-25D917AF0EAD@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <9872C96C-FAE8-46E8-9588-25D917AF0EAD-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Andy Lutomirski <amluto-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andy Lutomirski <luto-3s7WtUTddSA@public.gmane.org>, "Aneesh Kumar K.V" <aneesh.kumar-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, Shawn Starr <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>, Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>

On Tuesday 17 November 2009, Andy Lutomirski wrote:
> I'm think this was the journal checksumming bug, which is fixed.

Thanks for the update.


> On Nov 16, 2009, at 5:37 PM, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> 
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> >
> > The following bug entry is on the current list of known regressions
> > from 2.6.31.  Please verify if it still should be listed and let me  
> > know
> > (either way).
> >
> >
> > Bug-Entry    : http://bugzilla.kernel.org/show_bug.cgi?id=14472
> > Subject        : EXT4 corruption
> > Submitter    : Shawn Starr <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
> > Date        : 2009-10-13 2:07 (35 days old)
> > References    : http://marc.info/?l=linux-kernel&m=125539997508256&w=4
> > Handled-By    : Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>

I'm going to close the bug.

Rafael
