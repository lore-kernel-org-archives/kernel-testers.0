From: Randy Dunlap <rdunlap-/UHa2rfvQTnk1uMJSBkQmQ@public.gmane.org>
Subject: Re: Try to compile nv_backlight.c gets an compilation error!
Date: Wed, 3 Nov 2010 08:51:20 -0700
Message-ID: <20101103085120.95fb77b5.rdunlap@xenotime.net>
References: <201011031249.15609.sirtimid@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201011031249.15609.sirtimid-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Dimitris Orfanos <sirtimid-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Wed, 3 Nov 2010 12:49:15 +0200 Dimitris Orfanos wrote:

> Hello,
> 
> I try to use the checkpatch.pl script on drivers/nvidia/nv_backlight.c but 
> before this I tried to compile the code with make nv_backlight.o I get the 
> following error:
> 
> nv_backlight.c:12:29: fatal error: linux/backlight.h: No such file or 
> directory
> compilation terminated.
> 
> The backlight.h file does not exist. What to do?
> --

The file include/linux/backlight.h does indeed exist in my kernel trees.

What kernel version are you using?  Could it be corrupted?

---
~Randy
*** Remember to use Documentation/SubmitChecklist when testing your code ***
