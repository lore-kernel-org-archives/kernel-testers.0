From: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Subject: Re: [Bug #13411] Barscanner (USB HID Keyboard) stopped functioning
 in kernels >= 2.6.28
Date: Mon, 8 Jun 2009 13:04:22 +0200 (CEST)
Message-ID: <alpine.LNX.2.00.0906081302010.7457@wotan.suse.de>
References: <sIiXQlfwS3D.A.81.dj7KKB@chimera> <AN6kEAA5GQ.A.g8.vj7KKB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <AN6kEAA5GQ.A.g8.vj7KKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Guido <bugzilla.kernel.org-Dy4KJ/v5nlEVgfBnK23ub6xOck334EZe@public.gmane.org>, Remi Cattiau <remi-O/wO+J8fF4JBDgjK7y7TUQ@public.gmane.org>

On Sun, 7 Jun 2009, Rafael J. Wysocki wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.28 and 2.6.29.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.28 and 2.6.29.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13411
> Subject		: Barscanner (USB HID Keyboard) stopped functioning in kernels >= 2.6.28
> Submitter	: Guido <bugzilla.kernel.org-Dy4KJ/v5nlEVgfBnK23ub6xOck334EZe@public.gmane.org>
> Date		: 2009-05-31 12:21 (8 days old)

This is apparently caused by vendor releasing two different hardware 
products under the same VID/PID and just one of them needing blacklist 
entry. Sigh.

Waiting for verbose lsusb output from Remi, so that we could compare it 
with the output provided by the bug reporter, to see what else could be 
done to distinguish the devices from each other.

-- 
Jiri Kosina
SUSE Labs
