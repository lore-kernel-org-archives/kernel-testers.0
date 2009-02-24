From: Greg KH <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>
Subject: Re: [stable] 2.6.29-rc6: Reported regressions 2.6.27 -> 2.6.28
Date: Mon, 23 Feb 2009 17:29:59 -0800
Message-ID: <20090224012959.GA25443@kroah.com>
References: <HFSEX4uppGO.A.JSG.2yzoJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <HFSEX4uppGO.A.JSG.2yzoJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org Natalie Protasevich" <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Stable Kernel Team <stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, kpalberg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org

On Mon, Feb 23, 2009 at 11:00:52PM +0100, Rafael J. Wysocki wrote:
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12559
> Subject		: Huawei E169 doesn't work as mass storage anymore
> Submitter	: kpalberg <kpalberg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-01-28 02:34 (27 days old)

I'm pretty sure this has been tracked down to a buggy firmware in the
device itself, and the company (Huawei) is working on updating it to
solve the issue.

This is backed up by the fact that Huawei submitted the patch that is
said to have broken this device :)

thanks,

greg k-h
