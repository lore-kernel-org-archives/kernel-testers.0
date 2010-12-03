From: Paul Rolland <rol@as2917.net>
Subject: Re: [Bug #22542] [2.6.37-rc1] drm:i195 errors
Date: Fri, 3 Dec 2010 22:45:59 +0100
Message-ID: <20101203224559.7e852abe@tux.DEF.witbe.net>
References: <sKkKYVppECN.A.KhC.Phb5MB@chimera>
	<ATV3yiK8i4C.A.ynE.Rib5MB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <ATV3yiK8i4C.A.ynE.Rib5MB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>

Hello,

On Fri, 19 Nov 2010 00:42:44 +0100 (CET)
"Rafael J. Wysocki" <rjw@sisk.pl> wrote:

> This message has been generated automatically as a part of a summary
> report of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.36.  Please verify if it still should be listed and let the
> tracking team know (either way).

Still present in 2.6.27-rc4 :

Dec  3 21:31:32 tux kernel: [drm:intel_panel_get_max_backlight] *ERROR* fixme: max PWM is zero.
Dec  3 21:31:32 tux kernel: [drm:intel_panel_get_max_backlight] *ERROR* fixme: max PWM is zero.
Dec  3 21:41:32 tux kernel: [drm:intel_panel_get_max_backlight] *ERROR* fixme: max PWM is zero.
Dec  3 21:41:32 tux kernel: [drm:intel_panel_get_max_backlight] *ERROR* fixme: max PWM is zero.
Dec  3 22:41:18 tux kernel: [drm:intel_panel_get_max_backlight] *ERROR* fixme: max PWM is zero.

Paul
-- 
Paul Rolland                                E-Mail : rol(at)witbe.net
CTO - Witbe.net SA                          Tel. +33 (0)1 47 67 77 77
Les Collines de l'Arche                     Fax. +33 (0)1 47 67 77 99
F-92057 Paris La Defense                    RIPE : PR12-RIPE

Please no HTML, I'm not a browser - Pas d'HTML, je ne suis pas un
navigateur "Some people dream of success... while others wake up and work
hard at it" 

"I worry about my child and the Internet all the time, even though she's
too young to have logged on yet. Here's what I worry about. I worry that 10
or 15 years from now, she will come to me and say 'Daddy, where were you
when they took freedom of the press away from the Internet?'"
--Mike Godwin, Electronic Frontier Foundation 
