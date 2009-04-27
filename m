From: Martin Knoblauch <knobi@knobisoft.de>
Subject: Re: [Bug #13178] Booting very slow
Date: Mon, 27 Apr 2009 01:57:34 -0700 (PDT)
Message-ID: <209795.21710.qm@web32607.mail.mud.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754668AbZD0I5q@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>


----- Original Message ----

> From: Martin Knoblauch <spamtrap@knobisoft.de>
> To: Rafael J. Wysocki <rjw@sisk.pl>; Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
> Cc: Kernel Testers List <kernel-testers@vger.kernel.org>
> Sent: Monday, April 27, 2009 9:18:53 AM
> Subject: Re: [Bug #13178] Booting very slow
> 
> ----- Original Message ----
> 
> > From: Rafael J. Wysocki 
> > To: Linux Kernel Mailing List 
> > Cc: Kernel Testers List ; Martin Knoblauch 
> 
> > Sent: Sunday, April 26, 2009 11:46:31 AM
> > Subject: [Bug #13178] Booting very slow
> > 
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.28 and 2.6.29.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.28 and 2.6.29.  Please verify if it still should
> > be listed and let me know (either way).
> > 
> > 
> > Bug-Entry    : http://bugzilla.kernel.org/show_bug.cgi?id=13178
> > Subject        : Booting very slow
> > Submitter    : Martin Knoblauch 
> > Date        : 2009-04-24 12:45 (3 days old)
> > References    : http://marc.info/?l=linux-kernel&m=124057716231773&w=4
> 
> Not really sure whether this is a real regression. Between 2.6.28 and 2.6.29 the 
> content of /proc/mounts for sysfs changed from
> 
> /sys /sys sysfs rw 0 0
> 
> to
> 
> none /sys sysfs rw 0 0
> 
> 
> This breaks RHEL-4.3 userland which parses /proc/mounts in the firmware hotplug 
> agent to find the mount-point for sysfs. As a result firmware loading started to 
> fail in 2.6.29. There is a simple fix in the /etc/hotplug/firmware.agent script 
> (just assume /sys as it is done elsewhere).
> 
> Your call.
> 
> Cheers
> Martin

 Actually I have to correct myself. The reason for the failure to parse /proc/mounts for "sysfs" is that there are two lines:

[hotplug]# uname -a
Linux lpsdm52 2.6.30-rc3-git2-nfs_ra #3 SMP Mon Apr 27 10:21:31 CEST 2009 x86_64 x86_64 x86_64 GNU/Linux
[hotplug]# grep sysfs /proc/mounts
none /sys sysfs rw,relatime 0 0
/sys /sys sysfs rw,relatime 0 0

 This breaks the "firmware.agent" /sys-parsing code. There still exists the simple fix to userspace, but I now think that this is a real regression that should be fixed.

Cheers
Martin
