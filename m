From: Greg KH <gregkh-l3A5Bk7waGM@public.gmane.org>
Subject: Re: [Bug #22562] Regression in 2.6.37-rc1 - logs spammed with
 "unable to enumerate USB port" - bisected to commit 3df7169e
Date: Sun, 19 Dec 2010 08:34:27 -0800
Message-ID: <20101219163427.GA22994@suse.de>
References: <wNJKqSoEutL.A.lKD.odfDNB@chimera>
 <6Ue85L6pKCJ.A.MoF.2ffDNB@chimera>
 <4D0E2DD7.4060607@lwfinger.net>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <4D0E2DD7.4060607-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>

On Sun, Dec 19, 2010 at 10:07:51AM -0600, Larry Finger wrote:
> On 12/19/2010 06:34 AM, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a summary report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.36.  Please verify if it still should be listed and let the tracking team
> > know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=22562
> > Subject		: Regression in 2.6.37-rc1 - logs spammed with "unable to enumerate USB port" - bisected to commit 3df7169e
> > Submitter	: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
> > Date		: 2010-11-02 22:32 (48 days old)
> > First-Bad-Commit: http://git.kernel.org/linus/3df7169e73fc1d71a39cffeacc969f6840cdf52b
> > Message-ID	: <4CD09166.4060202-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
> > References	: http://marc.info/?l=linux-kernel&m=128873713207906&w=2
> 
> Yes, this regression is still present in 2.6.37-rc6. I'm trying to debug this
> with very little success.

To be fair, you seem to have the only machine with this problem :(
