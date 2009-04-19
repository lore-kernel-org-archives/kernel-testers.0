From: Andrew Price <andy-QvJ1taJFSUQwEI6hhNFqhFpr/1R2p/CL@public.gmane.org>
Subject: Re: [Bug #13120] BUG: using rootfstype=ext4 causes oops
Date: Sun, 19 Apr 2009 19:31:43 +0100
Message-ID: <20090419183143.GB24066@sucs.org>
References: <EJaiQ4Wfaz.A.3YG.4v85JB@chimera> <nY3-4PrO6XH.A.zGH.Fw85JB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <nY3-4PrO6XH.A.zGH.Fw85JB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Thu, Apr 16, 2009 at 11:45:07PM +0200, Rafael J. Wysocki wrote:
> The following bug entry is on the current list of known regressions
> from 2.6.29.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13120
> Subject		: BUG: using rootfstype=ext4 causes oops
> Submitter	: Andrew Price <andy-QvJ1taJFSUQwEI6hhNFqhFpr/1R2p/CL@public.gmane.org>
> Date		: 2009-04-15 20:59 (2 days old)
> References	: http://marc.info/?l=linux-kernel&m=123982932807371&w=4
> Handled-By	: Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Patch		: http://marc.info/?l=linux-kernel&m=123991090816794&w=4

Fixed in commit f505d49ffd25ed062e76ffd17568d3937fcd338c "ide: fix
barriers support" (which was merged in
df89f1ba971b3df2b7e1bc46ca7ce867539186fa ).

--
Andrew Price
