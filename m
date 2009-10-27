From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14474] restorecond going crazy on 2.6.31.4 - inotify regression?
Date: Tue, 27 Oct 2009 09:24:40 +0100
Message-ID: <200910270924.41037.rjw@sisk.pl>
References: <G2WU8XrUVpF.A.lxF.Ref5KB@chimera> <vX3ILojF2dJ.A.H8F.Yef5KB@chimera> <51f3faa70910261648h242a9a2dp42cdf554a9eb1342@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <51f3faa70910261648h242a9a2dp42cdf554a9eb1342-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Robert Hancock <hancockrwd-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Tuesday 27 October 2009, Robert Hancock wrote:
> On Mon, Oct 26, 2009 at 1:32 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.30 and 2.6.31.
> >
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.30 and 2.6.31.  Please verify if it still should
> > be listed and let me know (either way).
> >
> >
> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=14474
> > Subject         : restorecond going crazy on 2.6.31.4 - inotify regression?
> > Submitter       : Robert Hancock <hancockrwd-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date            : 2009-10-16 0:03 (11 days old)
> > References      : http://marc.info/?l=linux-kernel&m=125565159520489&w=4
> 
> This is definitely reproducible on 2.6.31.4 on CentOS 5.4, I'll likely
> try 2.6.31.5 shortly, but it doesn't seem like any of the 2.6.31.5
> patches touch inotify..

Thanks for the update.

Rafael
