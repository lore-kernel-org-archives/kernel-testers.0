From: Martin Knoblauch <spamtrap@knobisoft.de>
Subject: Re: [Bug #13178] Booting very slow
Date: Mon, 27 Apr 2009 00:18:53 -0700 (PDT)
Message-ID: <967985.28657.qm@web32602.mail.mud.yahoo.com>
References: <tur5OtdUm3E.A.r2B.7oE9JB@chimera> <egHshlwQQFE.A.ZNC.DpE9JB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755956AbZD0HTM@vger.kernel.org>
In-Reply-To: <egHshlwQQFE.A.ZNC.DpE9JB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>


----- Original Message ----

> From: Rafael J. Wysocki <rjw@sisk.pl>
> To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
> Cc: Kernel Testers List <kernel-testers@vger.kernel.org>; Martin Knoblauch <spamtrap@knobisoft.de>
> Sent: Sunday, April 26, 2009 11:46:31 AM
> Subject: [Bug #13178] Booting very slow
> 
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.28 and 2.6.29.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.28 and 2.6.29.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry    : http://bugzilla.kernel.org/show_bug.cgi?id=13178
> Subject        : Booting very slow
> Submitter    : Martin Knoblauch 
> Date        : 2009-04-24 12:45 (3 days old)
> References    : http://marc.info/?l=linux-kernel&m=124057716231773&w=4

 Not really sure whether this is a real regression. Between 2.6.28 and 2.6.29 the content of /proc/mounts for sysfs changed from

/sys /sys sysfs rw 0 0

to

none /sys sysfs rw 0 0


 This breaks RHEL-4.3 userland which parses /proc/mounts in the firmware hotplug agent to find the mount-point for sysfs. As a result firmware loading started to fail in 2.6.29. There is a simple fix in the /etc/hotplug/firmware.agent script (just assume /sys as it is done elsewhere).

 Your call.

Cheers
Martin
