From: Jesse Barnes <jbarnes@virtuousgeek.org>
Subject: Re: [Bug #13819] system freeze when switching to console
Date: Tue, 8 Sep 2009 10:24:18 -0700
Message-ID: <20090908102418.673504ae@jbarnes-g45>
References: <2ehA7xoGvXL.A.4PB.3eBpKB@chimera>
	<Vm51Upp4EV.A.r-D.mgBpKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1751792AbZIHRYx@vger.kernel.org>
In-Reply-To: <Vm51Upp4EV.A.r-D.mgBpKB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Eric Anholt <eric@anholt.net>, "ling.ma@intel.com" <ling.ma@intel.com>, Linus Torvalds <torvalds@linux-foundation.org>, Reinette Chatre <reinette.chatre@intel.com>

On Sun,  6 Sep 2009 19:24:50 +0200 (CEST)
"Rafael J. Wysocki" <rjw@sisk.pl> wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.30.  Please verify if it still should be listed and let me
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13819
> Subject		: system freeze when switching to console
> Submitter	: Reinette Chatre <reinette.chatre@intel.com>
> Date		: 2009-07-23 17:57 (46 days old)

So simply switching VTs causes this problem too?  Based on your initial
description it sounds like a panic (keyboard LEDs were flashing).  If
it happens at VT switch time you should be able to capture the panic
output with netconsole like Linus mentioned.

-- 
Jesse Barnes, Intel Open Source Technology Center
