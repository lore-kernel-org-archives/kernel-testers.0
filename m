From: David Smith <dsmith-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #12602] CRED changes causing setuid failures
Date: Wed, 04 Feb 2009 12:09:07 -0600
Message-ID: <4989D9C3.7060408@redhat.com>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera> <pWZw1SZjMCH.A.lpE.3uYiJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <pWZw1SZjMCH.A.lpE.3uYiJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, David Howells <dhowells-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, James Morris <jmorris-gx6/JNMH7DfYtjvyW6yDsg@public.gmane.org>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> (either way).
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12602
> Subject		: CRED changes causing setuid failures
> Submitter	: David Smith <dsmith-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> Date		: 2009-01-29 21:35 (7 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=d84f4f992cbd76e8f39c488cf0c5d123843923b1
> References	: http://marc.info/?l=linux-kernel&m=123326501813668&w=4

I've verified this still exists in 2.6.29-rc3.

(git describe says I'm at v2.6.29-rc3-495-gdcf6a79)

-- 
David Smith
dsmith-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org
Red Hat
http://www.redhat.com
256.217.0141 (direct)
256.837.0057 (fax)
