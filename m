From: Soeren Sonnenburg <kernel@nn7.de>
Subject: Re: [Bug #11698] 2.6.27-rc7, freezes with &gt; 1 s2ram cycle
Date: Mon, 24 Nov 2008 21:57:13 +0100
Message-ID: <1227560233.4881.4.camel@localhost>
References: <0kQZaQnNVIL.A.BhG.FwIKJB@chimera>
	 <V2w_GS-X2aE.A.rcH.ywIKJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755365AbYKXU5s@vger.kernel.org>
In-Reply-To: <V2w_GS-X2aE.A.rcH.ywIKJB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

On Sat, 2008-11-22 at 21:59 +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.26 and 2.6.27.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.26 and 2.6.27.  Please verify if it still should
> be listed and let me know (either way).

current mainstream hangs on *every* resume (Carlos observed the same
hangs on wakeup from s2ram but while the cause for him were the wireless
drivers it must be something else here)...

so this bug and the bug I am having is again hidden under something
else. one thing I noticed: The machine resumes and numlock still works
when using an external usb keyboard. still no display and also no second
s2ram possible :(

Soeren

> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11698
> Subject		: 2.6.27-rc7, freezes with &gt; 1 s2ram cycle
> Submitter	: Soeren Sonnenburg <kernel@nn7.de>
> Date		: 2008-09-29 11:29 (55 days old)
> References	: http://marc.info/?l=linux-kernel&m=122268780926859&w=4
> Handled-By	: Rafael J. Wysocki <rjw@sisk.pl>
> 
> 
