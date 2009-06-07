From: Martin Bammer <mrb74-RbZlAiThDcE@public.gmane.org>
Subject: Re: [Bug #13366] About 80% of shutdowns fail (blocking)
Date: Sun, 07 Jun 2009 18:02:39 +0200
Message-ID: <1244390559.4219.1.camel@localhost>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera>
	 <D9VoutSOyXP.A.NPH.lZ7KKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <D9VoutSOyXP.A.NPH.lZ7KKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Since i disabled most of the debug options this problem has gone. IMHO
this issue has been caused by kdbg.

Am Sonntag, den 07.06.2009, 11:52 +0200 schrieb Rafael J. Wysocki:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.29.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13366
> Subject		: About 80% of shutdowns fail (blocking)
> Submitter	: Martin Bammer <mrb74-RbZlAiThDcE@public.gmane.org>
> Date		: 2009-05-23 00:58 (16 days old)
> 
> 
