From: Thomas Backlund <tmb@mandriva.org>
Subject: Re: [Bug #14482] kernel BUG at fs/dcache.c:670 +lvm +md +ext3
Date: Mon, 01 Feb 2010 17:47:42 +0200
Message-ID: <4B66F79E.1040606@mandriva.org>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera> <de962C6zBxL.A.85G.9HiZLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <de962C6zBxL.A.85G.9HiZLB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Alexander Clouter <alex@digriz.org.uk>

01.02.2010 02:43, Rafael J. Wysocki skrev:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> be listed and let me know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14482
> Subject		: kernel BUG at fs/dcache.c:670 +lvm +md +ext3
> Submitter	: Alexander Clouter<alex@digriz.org.uk>
> Date		: 2009-10-23 10:30 (101 days old)
> References	: http://lkml.org/lkml/2009/10/23/50
>
>

Afaik this is the same issue as the one referenced here:

http://lkml.org/lkml/2010/1/28/292

The patch in the above thread should fix the issue.

--
Thomas
