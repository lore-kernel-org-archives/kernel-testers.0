From: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Sat, 16 May 2009 16:36:10 -0700
Message-ID: <20090516163610.8a012268.akpm@linux-foundation.org>
References: <_AjETDMbIoL.A.DcH.RYzDKB@chimera>
	<385Pu-agh7M.A.SU.iYzDKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <385Pu-agh7M.A.SU.iYzDKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Sat, 16 May 2009 21:20:45 +0200 (CEST) "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.29.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13319
> Subject		: Page allocation failures with b43 and p54usb
> Submitter	: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
> Date		: 2009-04-29 21:01 (18 days old)
> References	: http://marc.info/?l=linux-kernel&m=124103897101088&w=4
> Handled-By	: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
> 
> 

Well..  order-1 GFP_ATOMIC allocations are unreliable.  The networking
code should hanlde the situation and recover.  I assume that is
happening in this case?

Perhaps we did something in that code after 2.6.29 which increased the
frequency of the order-1 allocation attempts?  Maybe earlier kernels
used order-0 all the time?  Those are much more reliable.
