From: Martin <marogge@onlinehome.de>
Subject: Re: [Bug #37752] Kernel Panic in drm_vblank_put+0x13/0x50 on P4 HT machine with 82915G/GV/910GL Integrated Graphics Controller
Date: Mon, 11 Jul 2011 20:35:35 +0200
Message-ID: <201107112035.36002.marogge@onlinehome.de>
References: <AtAvQwe5sAK.A.loH.OlYGOB@chimera> <gK_efVqs2fP.A.A9H.vlYGOB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <gK_efVqs2fP.A.A9H.vlYGOB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>

On Sunday 10 July 2011 12:58:54 Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.38 and 2.6.39.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.38 and 2.6.39.  Please verify if it still should
> be listed and let the tracking team know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=37752
> Subject		: Kernel Panic in drm_vblank_put+0x13/0x50 on P4 HT machine 
with
> 82915G/GV/910GL Integrated Graphics Controller Submitter	: Martin Rogge
> <marogge@onlinehome.de>
> Date		: 2011-06-17 13:02 (24 days old)

I have verified today that both 2.6.39.3 and 3.0-rc6 still show the problem. 
As before, 3.0-rc6 seems to have a longer uptime than 3.6.39.3. Both times I 
did not catch a proper kernel panic. The machine simply froze.

Martin
