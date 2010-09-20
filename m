From: "Paul E. McKenney" <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Subject: Re: [Bug #16537] TREE_RCU hangs at boot
Date: Mon, 20 Sep 2010 11:26:27 -0700
Message-ID: <20100920182626.GE2408@linux.vnet.ibm.com>
References: <QnCvudbe2FD.A.XiE.DgSjMB@chimera>
 <p44oKaOqEDM.A.AeF.EhSjMB@chimera>
Reply-To: paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <p44oKaOqEDM.A.AeF.EhSjMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Rolf Eike Beer <eike-kernel-F+mm6HnICJmzQB+pC5nmwQ@public.gmane.org>

On Sun, Sep 12, 2010 at 09:08:42PM +0200, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.34 and 2.6.35.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.34 and 2.6.35.  Please verify if it still should
> be listed and let the tracking team know (either way).
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16537
> Subject		: TREE_RCU hangs at boot
> Submitter	: Rolf Eike Beer <eike-kernel-F+mm6HnICJmzQB+pC5nmwQ@public.gmane.org>
> Date		: 2010-08-07 12:18 (37 days old)
> Handled-By	: Paul E. McKenney <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>

I cannot reproduce this.  The function that is claimed to hang contains
only printk()s.  I have asked the guys who can actually reproduce it
to try a later kernel, and will let you know how this goes.

If you cannot trust printk(), who can you trust?  ;-)

							Thanx, Paul
