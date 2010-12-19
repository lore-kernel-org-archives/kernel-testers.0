From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #21662] 2.6.35->2.6.36 regression, vanilla kernel panic, ppp or hrtimers crashing
Date: Sun, 19 Dec 2010 14:39:42 +0100
Message-ID: <201012191439.42365.rjw@sisk.pl>
References: <ZRNlsjykcOD.A.b-F.20fDNB@chimera> <xqq2Z3iR9HJ.A.WhG.q1fDNB@chimera> <201012191514.10820.nuclearcat@nuclearcat.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201012191514.10820.nuclearcat-03OYUmBsc8OBik42HM7KXg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Denys Fedoryshchenko <nuclearcat-03OYUmBsc8OBik42HM7KXg@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On Sunday, December 19, 2010, Denys Fedoryshchenko wrote:
> On Sunday 19 December 2010 14:50:26 Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.35 and 2.6.36.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.35 and 2.6.36.  Please verify if it still should
> > be listed and let the tracking team know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=21662
> > Subject		: 2.6.35->2.6.36 regression, vanilla kernel panic, ppp or 
> hrtimers
> > crashing Submitter	: Denys Fedoryshchenko <nuclearcat-03OYUmBsc8OBik42HM7KXg@public.gmane.org>
> > Date		: 2010-10-25 9:22 (56 days old)
> > Message-ID	: <201010251222.37191.nuclearcat-03OYUmBsc8OBik42HM7KXg@public.gmane.org>
> > References	: http://marc.info/?l=linux-kernel&m=128799855826011&w=2
> It is fixed, i guess for 2.6.37, patch works for me.
> 
> http://marc.info/?l=linux-netdev&m=129219516718477&w=2
> Andrej Ota (1):
>       pppoe.c: Fix kernel panic caused by __pppoe_xmit

Thanks, closing.

Rafael
