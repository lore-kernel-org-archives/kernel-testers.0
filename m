From: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Subject: Re: [linux-pm] 2.6.38-rc7-git4: Reported regressions from 2.6.37
Date: Sun, 6 Mar 2011 10:47:05 -0500 (EST)
Message-ID: <Pine.LNX.4.44L0.1103061041440.13175-100000@netrider.rowland.org>
References: <t0W8Ea1iKeB.A.6xD.Lp3cNB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <t0W8Ea1iKeB.A.6xD.Lp3cNB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux PM List <linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sun, 6 Mar 2011, Rafael J. Wysocki wrote:

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=29902
> Subject		: System suspend failed after 1-2 successful resumes
> Submitter	: Alex Terekhov <a.terekhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2011-02-25 22:24 (10 days old)

As far as I know, this isn't a regression.  Most likely it is present 
in earlier kernels too, but the OP hasn't tried any.

Anyway, it appears to be a combination of problems.  One is a bug, for 
which a patch has been written and will be submitted soon.  The other 
is unclear, it is probably a hardware issue.

Alan Stern
