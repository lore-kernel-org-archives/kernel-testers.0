From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [Bug #14372] Wireless not working after suspend-resume
Date: Mon, 12 Oct 2009 23:55:38 +0200
Message-ID: <200910122355.38980.rjw@sisk.pl>
References: <zJ_pXHNwoHC.A.akB.Aal0KB@chimera> <r-4Wjt4coy.A.TPD.dal0KB@chimera> <b637ec0b0910121148g34f46481n1d5d4edb67b0ac55@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <netdev-owner@vger.kernel.org>
In-Reply-To: <b637ec0b0910121148g34f46481n1d5d4edb67b0ac55@mail.gmail.com>
Sender: netdev-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Fabio Comolli <fabio.comolli@gmail.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Johannes Berg <johannes@sipsolutions.net>, "John W. Linville" <linville@tuxdriver.com>, netdev@vger.kernel.org, Linux Wireless List <linux-wireless@vger.kernel.org>

On Monday 12 October 2009, Fabio Comolli wrote:
> Still present with -rc4.
> 
> Error is:
> 
> [  690.547660] wlan0: direct probe to AP 00:11:95:09:2c:e0 (try 1)
> [  690.550064] wlan0: direct probe responded
> [  690.550074] wlan0: authenticate with AP 00:11:95:09:2c:e0 (try 1)
> [  690.551629] wlan0: authenticated
> [  690.551663] wlan0: associate with AP 00:11:95:09:2c:e0 (try 1)
> [  690.553289] wlan0: RX AssocResp from 00:11:95:09:2c:e0 (capab=0x451
> status=12 aid=1)
> [  690.553298] wlan0: AP denied association (code=12)
> 
> rfkill-ing the device off and then on fixes the problem.

Thanks for the update.

Rafael
