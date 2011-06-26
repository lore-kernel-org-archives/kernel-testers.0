From: Martijn Uffing <mp3project@sarijopen.student.utwente.nl>
Subject: Re: [Bug #37542] [OOPS] 3.0-rc1 cifs
Date: Mon, 27 Jun 2011 00:05:44 +0200 (CEST)
Message-ID: <Pine.LNX.4.64.1106262355030.6287@sarijopen.student.utwente.nl>
References: <VDRaLpg_NZ.A.tnC.JZ6BOB@chimera> <XWjMN7gBoXK.A.hZD.lZ6BOB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <XWjMN7gBoXK.A.hZD.lZ6BOB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Jeff Layton <jlayton@redhat.com>

Ave

The OOPS/BUG is fixed by 2 patches. Both patches are already included in 
the linus git tree.

A patch for the separate issue to demote the superfluous kernel messages 
from error to debug level is available, but not yet included in linus git.
I will track this patch and ping the author if it isn't included in one of 
the final rc's.

As far as I am concerned, this bug can be removed from the regression 
list.

Martijn

-----------------------------------------
Ceterum censeo Carthaginem esse delendam

When it comes to procrastination, casting the first stone is definitely on
my TO DO list.



On Sun, 26 Jun 2011, Rafael J. Wysocki wrote:

> This message has been generated automatically as a part of a summary report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.39.  Please verify if it still should be listed and let the tracking team
> know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=37542
> Subject		: [OOPS] 3.0-rc1 cifs
> Submitter	: Martijn Uffing <mp3project@sarijopen.student.utwente.nl>
> Date		: 2011-06-09 20:15 (18 days old)
> Message-ID	: <Pine.LNX.4.64.1106092211500.19687@sarijopen.student.utwente.nl>
> References	: http://marc.info/?l=linux-kernel&m=130765235926144&w=2
> Handled-By	: Jeff Layton <jlayton@redhat.com>
> Patch		: https://bugzilla.kernel.org/attachment.cgi?id=63202
>
>
>
