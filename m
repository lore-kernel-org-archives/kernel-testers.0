From: Pekka Paalanen <pq-X3B1VOXEql0@public.gmane.org>
Subject: Re: [Bug #12154] Mmiotrace regression in 2.6.28-rc6
Date: Thu, 4 Dec 2008 21:02:34 +0200
Message-ID: <20081204210234.4c9971aa@daedalus.pq.iki.fi>
References: <QFIA5HSHV8B.A.2aG.hoxNJB@chimera>
	<bfPM5B8Tx2B.A.RWH.1oxNJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:in-reply-to:references:x-mailer:mime-version
         :content-type:content-transfer-encoding:sender;
        bh=NH73z0jIXC15/mJBk5ikmMIAVa9v2httAJVIA7z73RQ=;
        b=g0xbDoyHwvppjUM7qK6oNDWdPYvp+PHvSbUFX5VRulmbNFGvSh9FAEMjwrMV9Li5RI
         BIz0AWDyY8iPYBwwmqLjALcCPcHJpPwQ/qomlABgawB1ZjAVprCfDtZF6SUaW5I92/tk
         klWocOPX0RF08l5XPYU9o7XlWsjcemml+n/dc=
In-Reply-To: <bfPM5B8Tx2B.A.RWH.1oxNJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>

On Wed,  3 Dec 2008 22:58:03 +0100 (CET)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.27.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12154
> Subject		: Mmiotrace regression in 2.6.28-rc6
> Submitter	: Pekka Paalanen <pq-X3B1VOXEql0@public.gmane.org>
> Date		: 2008-11-23 13:41 (11 days old)
> References	: http://marc.info/?l=linux-kernel&m=122744774317151&w=4

This is fixed:

http://marc.info/?l=linux-kernel&m=122746837006707&w=2

http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=7ee1768ddb3075ae3a0801cc2d0ea4195530a7db

Thanks.

-- 
Pekka Paalanen
http://www.iki.fi/pq/
