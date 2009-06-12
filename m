From: Peter Huewe <PeterHuewe-Mmb7MZpHnFY@public.gmane.org>
Subject: Re: Building vmlinux without date/timestamp bits
Date: Sat, 13 Jun 2009 01:43:18 +0200
Message-ID: <200906130143.19206.PeterHuewe@gmx.de>
References: <4A32D37E.40507@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4A32D37E.40507-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: John Daiker <daikerjohn-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: kernel-janitors-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Hi John,

check include/linux/compile.h and scripts/mkcompile_h

In compile.h is exactly your timestamped information which gets built into the 
kernel (cmp. output of uname -s)

If the include/linux/compile.h is not present or needs an update it is 
generated using the scripts/mkcompile_h script.

--> You can either supply an identical compile.h for both or change the 
behavior of the mkcompile_h script.

Best regards,
Peter




Am Samstag 13 Juni 2009 00:15:26 schrieb John Daiker:
> I'm working on various trivial patches (mainly whitespace and
> checkpatch.pl cleanups).
>
> I read quite some time ago that it's best to md5sum the vmlinux file
> before and after these trivial patches are applied (to ensure that no
> executable code has changed, modules on a binary level are identical, etc).
>
> So far, I have no problems producing identical .o and .ko files with my
> trivial patches.  My problem lies in the resulting vmlinux and vmlinux.o
> file, though.
>
> I know the files are different due to date/timestamping the kernel, but
> I'm not sure where this happens (and how I can prevent it).  Are there
> pieces of code and/or Makefile that I can comment out so that the
> resulting vmlinux file isn't timestamped (and thus would be an exactly
> identical before and after).  I know it can be done... I've done it
> before (years ago), but seem to have forgotten the trick.
>
> Thanks for the help!
>
> John Daiker
> --
> To unsubscribe from this list: send the line "unsubscribe kernel-janitors"
> in the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
