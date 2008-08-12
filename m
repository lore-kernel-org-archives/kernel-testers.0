From: Andy Whitcroft <apw@shadowen.org>
Subject: Re: [Bug #11275] [BUG] hugetlb: sleeping function called from
	invalid context
Date: Tue, 12 Aug 2008 15:48:41 +0100
Message-ID: <20080812144841.GA16724@brain>
References: <VYYCiQF4qDI.A.BPH.KCjnIB@albercik> <cX_-nNkxKaF.A.Fm.6CjnIB@albercik>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754568AbYHLOsu@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <cX_-nNkxKaF.A.Fm.6CjnIB@albercik>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Gerald Schaefer <gerald.schaefer@de.ibm.com>

On Sun, Aug 10, 2008 at 12:43:51AM +0200, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11275
> Subject		: [BUG] hugetlb: sleeping function called from invalid context
> Submitter	: Gerald Schaefer <gerald.schaefer@de.ibm.com>
> Date		: 2008-08-06 14:43 (4 days old)
> References	: http://marc.info/?l=linux-mm&m=121803401427843&w=4
> Handled-By	: Andy Whitcroft <apw@shadowen.org>
> Patch		: http://marc.info/?l=linux-kernel&m=121804949526359&w=4

This patch was superceeded by a newer version:
	http://marc.info/?l=linux-kernel&m=121819389913563&w=2

Currently this is in -mm, awaiting merge.

-apw
