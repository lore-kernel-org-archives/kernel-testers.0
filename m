From: tytso-3s7WtUTddSA@public.gmane.org
Subject: Re: [Bug #14619] ext3/jbd oops in journal_start
Date: Fri, 20 Nov 2009 10:06:48 -0500
Message-ID: <20091120150648.GB4921@thunk.org>
References: <GUZt44bIwCE.A.vLF.pSdALB@chimera>
 <xXQGFmujPl.A.wQG.8SdALB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <xXQGFmujPl.A.wQG.8SdALB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Chris Mason <chris.mason-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, Dmitry Monakhov <rjevskiy-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Sage Weil <sage-BnTBU8nroG7k1uMJSBkQmQ@public.gmane.org>

On Mon, Nov 16, 2009 at 11:37:46PM +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.31.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14619
> Subject		: ext3/jbd oops in journal_start
> Submitter	: Sage Weil <sage-BnTBU8nroG7k1uMJSBkQmQ@public.gmane.org>
> Date		: 2009-10-31 6:14 (17 days old)
> References	: http://marc.info/?l=linux-kernel&m=125696970418300&w=4
> 

Sage, any updates on this?  What was the last kernel version where you
weren't having this problem?  Sounds like you can't mount any ext3
file systems at all?

					- Ted
