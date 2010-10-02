From: Ted Ts'o <tytso-3s7WtUTddSA@public.gmane.org>
Subject: Re: [Bug #17361] Watchdog detected hard LOCKUP in
 jbd2_journal_get_write_access
Date: Sat, 2 Oct 2010 12:52:15 -0400
Message-ID: <20101002165215.GK21129@thunk.org>
References: <MEG5YPP-fxC.A.vnD.So6nMB@chimera>
 <sQALkqF1FWE.A.IiE.Qp6nMB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <sQALkqF1FWE.A.IiE.Qp6nMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Christian Casteyde <casteyde.christian-GANU6spQydw@public.gmane.org>

On Sun, Sep 26, 2010 at 10:04:13PM +0200, Rafael J. Wysocki wrote:
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=17361
> Subject		: Watchdog detected hard LOCKUP in jbd2_journal_get_write_access
> Submitter	: Christian Casteyde <casteyde.christian-GANU6spQydw@public.gmane.org>
> Date		: 2010-08-29 19:59 (29 days old)

See my latest comment here:

    https://bugzilla.kernel.org/show_bug.cgi?id=17361#c14

This subject line is highly misleading, since after -rc4, the stack
traces are in places all over the kernel, in other places other than
ext4/jbd2.  So I fear no one is looking at this bug report given the
highly misleading subject line.

It looks like you have spinlock debugging, and yet there wan't any
spinlocks listed on the initial ext4 might_sleep() warning.  So
something looks highly confused.

The fact that you closed other bugs as duplicates of this one that
relate to kmemcheck makes me wonder if this is really a kmemcheck bug.
(If so, the subject line here is doubly, doubly misleading.)

Do you see any symptoms if you turn off kmemcheck?  Are you sure this
isn't just only a kmemcheck bug?

					- Ted
