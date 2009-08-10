From: Neil Brown <neilb@suse.de>
Subject: Re: [Bug #13944] MD raid regression
Date: Mon, 10 Aug 2009 11:31:05 +1000
Message-ID: <19071.30809.398179.900584@notabene.brown>
References: <AuPdDySr74O.A.5LC.Pj1fKB@chimera>
	<u1L1PAbl8zG.A.RyC.aj1fKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754741AbZHJBa5@vger.kernel.org>
In-Reply-To: message from Rafael J. Wysocki on Sunday August 9
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Mike Snitzer <snitzer@redhat.com>

On Sunday August 9, rjw@sisk.pl wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.30.  Please verify if it still should be listed and let me know
> (either way).

Yes, it still should be listed.  The first patch didn't quite fix it.
A second one probably does.

Thanks.
NeilBrown

> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13944
> Subject		: MD raid regression
> Submitter	: Mike Snitzer <snitzer@redhat.com>
> Date		: 2009-08-05 15:06 (5 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=449aad3e25358812c43afc60918c5ad3819488e7
> References	: http://marc.info/?l=linux-kernel&m=124948481218857&w=4
> Handled-By	: NeilBrown <neilb@suse.de>
> Patch		: http://patchwork.kernel.org/patch/39521/
> 
> 
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/
