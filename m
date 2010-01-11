From: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Subject: Re: [linux-pm] 2.6.33-rc3-git3: Reported regressions 2.6.31 -> 2.6.32
Date: Mon, 11 Jan 2010 10:15:20 -0500 (EST)
Message-ID: <Pine.LNX.4.44L0.1001111008080.2873-100000@iolanthe.rowland.org>
References: <nzLqtSp97aP.A.RGB.hglSLB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <nzLqtSp97aP.A.RGB.hglSLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Fruhwirth Clemens <clemens-Yy/aLhJqNSaEi8DpZVb4nw@public.gmane.org>

On Sun, 10 Jan 2010, Rafael J. Wysocki wrote:

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14841
> Subject	: unable to enumerate USB device on port X after suspend/resume
> Submitter	: Fruhwirth Clemens <clemens-Yy/aLhJqNSaEi8DpZVb4nw@public.gmane.org>
> Date		: 2009-12-19 11:45 (23 days old)

This bug has been resolved as WILL NOT FIX.  It ended up having nothing
to do with suspend or resume, it was caused by strange behavior in the
device hardware.

Alan Stern
