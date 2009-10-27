From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14090] WARNING: at fs/notify/inotify/inotify_user.c:394
Date: Tue, 27 Oct 2009 21:24:17 +0100
Message-ID: <200910272124.17796.rjw@sisk.pl>
References: <G2WU8XrUVpF.A.lxF.Ref5KB@chimera> <vX3ILojF2dJ.A.1J.5ff5KB@chimera> <7e0fb38c0910270733g7b05c779m1f593529659a6ff@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <7e0fb38c0910270733g7b05c779m1f593529659a6ff-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Eric Paris <eparis-FjpueFixGhCM4zKIHC2jIg@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Joerg Platte <bugzilla-ilKWAAXSMVN6lmGzAMPh1A@public.gmane.org>

On Tuesday 27 October 2009, Eric Paris wrote:
> On Mon, Oct 26, 2009 at 3:31 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.30 and 2.6.31.
> >
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.30 and 2.6.31.  Please verify if it still should
> > be listed and let me know (either way).
> >
> >
> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=14090
> > Subject         : WARNING: at fs/notify/inotify/inotify_user.c:394
> > Submitter       : Joerg Platte <bugzilla-ilKWAAXSMVN6lmGzAMPh1A@public.gmane.org>
> > Date            : 2009-08-30 15:21 (58 days old)
> 
> should be fixed by: 9f0d793b52eb2266359661369ef6303838904855 in linus' tree

Thanks, closing.

Rafael
