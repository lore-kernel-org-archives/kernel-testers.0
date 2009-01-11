From: Daniel Drake <dsd@gentoo.org>
Subject: Re: [Bug #12422] 2.6.28-git can't resume from str
Date: Sun, 11 Jan 2009 14:08:36 +0000
Message-ID: <4969FD64.8040408@gentoo.org>
References: <XU-8icArWLM.A.UpG.8GfaJB@chimera> <oWTznAnH9BI.A.qDH.EHfaJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756917AbZAKOKg@vger.kernel.org>
In-Reply-To: <oWTznAnH9BI.A.qDH.EHfaJB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Jeff Chua <jeff.chua.linux@gmail.com>, Phil Dibowitz <phil@ipom.com>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12422
> Subject		: 2.6.28-git can't resume from str
> Submitter	: Jeff Chua <jeff.chua.linux@gmail.com>
> Date		: 2009-01-10 1:39 (2 days old)
> References	: http://marc.info/?l=linux-kernel&m=123155157909282&w=4

The bisection looks invalid. It is unlikely to be this commit at fault. 
Jeff, do you even have that camera?

It is also easy to revert that commit by hand. Just delete the 
unusual_devs entry for it.

Daniel
