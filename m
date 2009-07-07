From: Minchan Kim <minchan.kim-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13665] commit 69c854817566 causes OOMs
Date: Tue, 7 Jul 2009 13:04:50 +0900
Message-ID: <20090707130450.cb14f7b9.minchan.kim@barrios-desktop>
References: <35kKlbXMqWN.A.RXD.D0oUKB@chimera>
	<dWkuWjWDsSB.A.U7E.g0oUKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:in-reply-to:references:x-mailer:mime-version
         :content-type:content-transfer-encoding;
        bh=kc1Qb4drUwgHvW+CcZLfSgyEwHgENa1ffeoYdBwbkEk=;
        b=u9ukwI82nsFVzVQ6ZkZoRxpmSM/eAugP8cij1KmizqJVlgD/TBo84/2ivQd//6h5+d
         HBfrLvR7dVr14Uf+J+SeaXzq0l/bSEJwp9zWut+9UYJTKJ3CN+/PcFFl0TXgp0yXVpq5
         WGL14ZVLvYphV6T2KykVC1S4qMol7I2HxfK7k=
In-Reply-To: <dWkuWjWDsSB.A.U7E.g0oUKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, David Howells <dhowells-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, MinChan Kim <minchan.kim-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Wu Fengguang <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

On Tue,  7 Jul 2009 02:01:03 +0200 (CEST)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.30.  Please verify if it still should be listed and let me know
> (either way).
> 

It should be listed.

I think it is caused by forking process bomb by msgctl11 on LTP. 
We can refer old discussion(http://osdir.com/ml/linux-kernel/2009-07/msg00926.html)

I think this issue can be solved by 
dynamic reclaim throttling patch which is making by Rik.

After he merges it, Let's test again. 

> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13665
> Subject		: commit 69c854817566 causes OOMs
> Submitter	: David Howells <dhowells-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> Date		: 2009-06-27 08:12 (10 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=69c854817566db82c362797b4a6521d0b00fe1d8
> References	: http://lkml.org/lkml/2009/6/27/28
> Handled-By	: Wu Fengguang <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> Patch		: http://patchwork.kernel.org/patch/32740/
> 
> 


-- 
Kind regards,
Minchan Kim
