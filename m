From: Bob Copeland <me@bobcopeland.com>
Subject: Re: [Bug #11901] ath5k triggers WARN_ON in __ieee80211_rx
Date: Sun, 2 Nov 2008 14:24:14 -0500
Message-ID: <20081102192414.GA6304@hash.localnet>
References: <603i_OdVYPF.A.7_D.mjeDJB@chimera> <wOAXuecskPD.A.HfF.GkeDJB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754665AbYKBTYr@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <wOAXuecskPD.A.HfF.GkeDJB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

On Sun, Nov 02, 2008 at 05:07:05PM +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.27.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11901
> Subject		: ath5k triggers WARN_ON in __ieee80211_rx
> Submitter	: Bob Copeland <me@bobcopeland.com>
> Date		: 2008-10-30 09:15 (4 days old)

Thanks, I just posted a patch for this here:

http://lkml.org/lkml/2008/11/2/157

-- 
Bob Copeland %% www.bobcopeland.com
