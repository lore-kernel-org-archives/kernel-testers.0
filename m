From: Heinz Diehl <htd-iEI8Y0CNJBYdnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #19632] 2.6.36-rc6: modprobe Not tainted warning
Date: Sun, 19 Dec 2010 14:54:49 +0100
Message-ID: <20101219135449.GA13734@fritha.org>
References: <ZRNlsjykcOD.A.b-F.20fDNB@chimera>
 <xqq2Z3iR9HJ.A.1bH.l2fDNB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <xqq2Z3iR9HJ.A.1bH.l2fDNB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On 19.12.2010, Rafael J. Wysocki wrote: 

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.35 and 2.6.36.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.35 and 2.6.36.  Please verify if it still should
> be listed and let the tracking team know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=19632
> Subject		: 2.6.36-rc6: modprobe Not tainted warning
> Submitter	: Heinz Diehl <htd-iEI8Y0CNJBYdnm+yROfE0A@public.gmane.org>
> Date		: 2010-09-30 18:25 (81 days old)
> Message-ID	: <20100930182516.GA15089-iEI8Y0CNJBYdnm+yROfE0A@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=128587114004680&w=2

There's a fix pending which should have made it into 2.6.37:
https://patchwork.kernel.org/patch/240661/

At least, it fixes the problem for me.


