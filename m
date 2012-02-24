From: Konrad Rzeszutek Wilk <konrad.wilk-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #42683] WARN... Device 'cpu1' does not have a release()
 function, it is broken and must be fixed. when doing 'xl vcpu-set <guest_id>
 1'
Date: Thu, 23 Feb 2012 23:33:00 -0500
Message-ID: <20120224043300.GB23568@phenom.dumpdata.com>
References: <y44pDJ8xoDC.A.08E.h8rRPB@chimera>
 <qCQH7HfZS8E.A.AHG.E9rRPB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <qCQH7HfZS8E.A.AHG.E9rRPB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On Thu, Feb 23, 2012 at 11:55:57PM +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 3.2.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=42683
> Subject		: WARN... Device 'cpu1' does not have a release() function, it is broken and must be fixed. when doing 'xl vcpu-set <guest_id> 1'
> Submitter	: Konrad Rzeszutek Wilk <konrad.wilk-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
> Date		: 2012-01-23 18:06 (32 days old)
> Message-ID	: <20120123180601.GA24553-6K5HmflnPlqSPmnEAIUT9EEOCMrvLtNR@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=132734233916154&w=2

Fixed.
