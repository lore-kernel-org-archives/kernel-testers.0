From: Paul Rolland (=?UTF-8?B?44Od44O844Or44O744Ot44Op44Oz?=) 
	<rol-fjEKYshTNZ1eoWH0uzbU5w@public.gmane.org>
Subject: Re: [Bug #22542] [2.6.37-rc1] drm:i195 errors
Date: Fri, 31 Dec 2010 11:30:21 +0100
Message-ID: <20101231113021.1f086baa@tux.DEF.witbe.net>
References: <96DQe4a_2tH.A.4RE.497GNB@chimera>
	<sV7shrPOroO.A.3WH.nA8GNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <sV7shrPOroO.A.3WH.nA8GNB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Dave Airlie <airlied-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org>, rol-fjEKYshTNZ1eoWH0uzbU5w@public.gmane.org

Hello,

I'm now running 2.6.37-rc8, and I still have :
Dec 31 11:03:10 tux kernel: [drm:i915_gem_mmap_gtt_ioctl] *ERROR* Attempting to mmap a purgeable buffer

as well as :

Dec 31 10:44:53 tux kernel: [drm:intel_panel_get_max_backlight] *ERROR* fixme: max PWM is zero.
Dec 31 10:49:34 tux kernel: [drm:intel_panel_get_max_backlight] *ERROR* fixme: max PWM is zero.

Regards,
Paul

On Thu, 30 Dec 2010 00:06:58 +0100 (CET)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a summary
> report of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.36.  Please verify if it still should be listed and let the
> tracking team know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=22542
> Subject		: [2.6.37-rc1] drm:i195 errors
> Submitter	: Paul Rolland <rol-fjEKYshTNZ1eoWH0uzbU5w@public.gmane.org>
> Date		: 2010-11-02 14:58 (58 days old)
> Message-ID	: <20101102155813.09cb2c6e-Hu5lHNoInTV+MQpiyFM1nV6hYfS7NtTn@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=128870991628970&w=2
> 
> 
> 


-- 
Paul Rolland                                E-Mail : rol(at)witbe.net
CTO - Witbe.net SA                          Tel. +33 (0)1 47 67 77 77
Les Collines de l'Arche                     Fax. +33 (0)1 47 67 77 99
F-92057 Paris La Defense                    RIPE : PR12-RIPE

LinkedIn : http://www.linkedin.com/in/paulrolland
Skype    : rollandpaul

"I worry about my child and the Internet all the time, even though she's
too young to have logged on yet. Here's what I worry about. I worry that 10
or 15 years from now, she will come to me and say 'Daddy, where were you
when they took freedom of the press away from the Internet?'"
--Mike Godwin, Electronic Frontier Foundation 

