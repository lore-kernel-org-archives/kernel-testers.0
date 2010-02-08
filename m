From: David Rientjes <rientjes@google.com>
Subject: Re: [Bug #15202] lockdep warning during elevator_switch
Date: Sun, 7 Feb 2010 16:46:25 -0800 (PST)
Message-ID: <alpine.DEB.2.00.1002071646150.4520@chino.kir.corp.google.com>
References: <4Ht3jFrT7uE.A.JI.-nzbLB@chimera> <445R0ey9hAI.A.h3.RozbLB@chimera> <alpine.LSU.2.00.1002072334290.22220@sister.anvils>
Mime-Version: 1.0
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1265589992; bh=f7NAF3neFvkz9R1MaPlV4dPmTZs=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type;
	b=Jut0lGoR20xxaqg4/Ujeq7l6j5MRcPHxmq3pvLU1Mg17uGU1zf6PJTm8aNw6qpmS8
	 94XSfxc9F4Kvn5qhWuAtg==
In-Reply-To: <alpine.LSU.2.00.1002072334290.22220@sister.anvils>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Eric W. Biederman" <ebiederm@xmission.com>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Hugh Dickins <hugh.dickins@tiscali.co.uk>

On Sun, 7 Feb 2010, Hugh Dickins wrote:

> > This message has been generated automatically as a part of a summary report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.32.  Please verify if it still should be listed and let the tracking team
> > know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15202
> > Subject		: lockdep warning during elevator_switch
> > Submitter	: Hugh Dickins <hugh.dickins@tiscali.co.uk>
> > Date		: 2010-01-31 23:55 (8 days old)
> > References	: http://marc.info/?l=linux-kernel&m=126498212613051&w=4
> 
> Yes, still so in 2.6.33-rc7.
> 

This type of lock dependency is always going to exist whenever a write to 
a sysfs file causes the kernel to remove its dirent.  In this case, 
writing to /sys/devices/block/xxx/queue/scheduler takes sd->dep_map and 
sd->parent->dep_map via sysfs_get_active_two() to pin both via 
sysfs_write_file().  The call to kobject_del() removes its directory 
from the hierarchy which takes sd->dep_map in sysfs_deactivate() because 
of 846f99749a.  Eric, do we need to preempt the rwsem from being acquired 
here when the dirent is already pinned because of a store to one of its 
files?
