From: John Daiker <daikerjohn-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Building vmlinux without date/timestamp bits
Date: Fri, 12 Jun 2009 15:15:26 -0700
Message-ID: <4A32D37E.40507@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:content-type
         :content-transfer-encoding;
        bh=ybh9jd9ZixcWQrpXPWw23gcfjTV5vgo/U36qeWXnLVE=;
        b=CNmL9XvBw/DMqlPFUGQbYw6QhBYhbjFivoCpdM5U7khLOZaXmm3J8ZLOkrgQjyeljM
         cKP8fGBFVJ7WgxtLcWY8z/MAbPZkU46mNq++bYX6lVZXG0nwkGjnxAK/artVi3oTCR5K
         i3jPRMhLOkGwXPLyDCw5vaYeUtnqorx9AaJKs=
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernel-janitors-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

I'm working on various trivial patches (mainly whitespace and 
checkpatch.pl cleanups).

I read quite some time ago that it's best to md5sum the vmlinux file 
before and after these trivial patches are applied (to ensure that no 
executable code has changed, modules on a binary level are identical, etc).

So far, I have no problems producing identical .o and .ko files with my 
trivial patches.  My problem lies in the resulting vmlinux and vmlinux.o 
file, though.

I know the files are different due to date/timestamping the kernel, but 
I'm not sure where this happens (and how I can prevent it).  Are there 
pieces of code and/or Makefile that I can comment out so that the 
resulting vmlinux file isn't timestamped (and thus would be an exactly 
identical before and after).  I know it can be done... I've done it 
before (years ago), but seem to have forgotten the trick.

Thanks for the help!

John Daiker
