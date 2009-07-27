From: Henrique de Moraes Holschuh <hmh-N3TV7GIv+o9fyO9Q7EP/yw@public.gmane.org>
Subject: Re: [Bug #13826] thinkpad boots with backlight low
Date: Mon, 27 Jul 2009 19:42:40 -0300
Message-ID: <20090727224240.GA6932@khazad-dum.debian.net>
References: <Jya1GruKQpD.A.16.2GObKB@chimera>
 <3zAHs5O6maO.A.KtC.THObKB@chimera>
 <20090727110651.GA4496@yamamaya.is-a-geek.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090727110651.GA4496-LEnv4NkkRI/kz0gr9c1H3IV7twrRs5iQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Tobias Diedrich <ranma-YxUgxmcw2FPQD6PfKP4TzA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Mon, 27 Jul 2009, Tobias Diedrich wrote:
> Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.30.  Please verify if it still should be listed and let me know
> > (either way).
> 
> Yes, this still applies to 2.6.31-rc4.
> If I  don't add brightness_mode=2 the backlight controls don't work
> properly.

Patch ready. Will send to linux-acpi soon.

-- 
  "One disk to rule them all, One disk to find them. One disk to bring
  them all and in the darkness grind them. In the Land of Redmond
  where the shadows lie." -- The Silicon Valley Tarot
  Henrique Holschuh
