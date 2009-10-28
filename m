From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14474] restorecond going crazy on 2.6.31.4 - inotify regression?
Date: Wed, 28 Oct 2009 19:47:31 +0100
Message-ID: <200910281947.31777.rjw@sisk.pl>
References: <G2WU8XrUVpF.A.lxF.Ref5KB@chimera> <200910272127.40587.rjw@sisk.pl> <4AE84017.7040101@hp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4AE84017.7040101-VXdhtT5mjnY@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: jim owens <jowens-VXdhtT5mjnY@public.gmane.org>
Cc: Eric Paris <eparis-FjpueFixGhCM4zKIHC2jIg@public.gmane.org>, Robert Hancock <hancockrwd-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Wednesday 28 October 2009, jim owens wrote:
> Rafael J. Wysocki wrote:
> > On Tuesday 27 October 2009, Eric Paris wrote:
> >> It's a restorecond bug.  restorecon acted as if watch descriptors
> >> could never be reused.  They weren't on old kernels and it's possible
> >> they are reused now.  Restorecon was fixed.
> >>
> >> http://marc.info/?l=selinux&m=125380417916233&w=2
> >>
> >> a change in the kernel caused a buggy userspace program to break.  I
> >> know how to put the kernel back the way it was, but I don't know if we
> >> call this a regression, you guys tell me.
> > 
> > Yes, we do, AFAICS.  The policy is not to break user space, even if it happens
> > to work by accident.
> 
> But if we make a rule of "never break even bad user programs" then
> we also should never plug security holes because that breaks a
> user program expecting that attack vector :)

Well, that's why this rule is not carved in stone.

Clearly, there are some cases in which we can't afford keeping the buggy user
space happy, not only security-related.

Thanks,
Rafael
