From: "Holger Hoffstaette" <holger.hoffstaette@googlemail.com>
Subject: Re: [Bug #14923] Regression in 2.6.32.2: segfault on halt
Date: Tue, 29 Dec 2009 19:39:49 +0100
Message-ID: <pan.2009.12.29.18.39.47.926000@googlemail.com>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera> <NJVdobuNFNK.A._IH.RnhOLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752090AbZL2SkX@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-kernel@vger.kernel.org
Cc: kernel-testers@vger.kernel.org

On Tue, 29 Dec 2009 16:09:59 +0100, Rafael J. Wysocki wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.32.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14923
> Subject		: Regression in 2.6.32.2: segfault on halt
> Submitter	: Holger Hoffstaette <holger.hoffstaette@googlemail.com>
> Date		: 2009-12-19 15:10 (11 days old)
> References	: http://marc.info/?l=linux-kernel&m=126123574505069&w=4
> Handled-By	: Mike Galbraith <efault@gmx.de>

Problem found, fixed by later commit as reported in:
http://marc.info/?l=linux-kernel&m=126138815719603&w=4

-h

