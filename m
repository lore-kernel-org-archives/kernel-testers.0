From: Alberto Gonzalez <luis6674-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12337] ~100 extra wakeups reported by powertop
Date: Tue, 24 Feb 2009 04:25:11 -0800 (PST)
Message-ID: <77208.42754.qm@web53309.mail.re2.yahoo.com>
References: <200902242223.39069.nickpiggin@yahoo.com.au>
Reply-To: luis6674-/E1597aS9LQAvxtiuMwx3w@public.gmane.org
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200902242223.39069.nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

--- On Tue, 2/24/09, Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org> wrote:

> > > Bug-Entry	:
> > > http://bugzilla.kernel.org/show_bug.cgi?id=12337
> > > Subject		: ~100 extra wakeups reported by
> powertop
> > > Submitter	: Alberto Gonzalez
> <luis6674-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>
> > > Date		: 2008-12-31 12:25 (55 days old)
> >
> > Still present, yes.
> 
> Any chance you could bisect it?

Well, if you look at the report you'd notice that:

- I'm using a released, stable, distro (Arch Linux, basically vanilla) kernel. I hardly know how to compile one, let alone bisect it.
- I first had the problem on my 5+ year old Pentium 4 with equally old Intel graphics (845G chipset). I thought it would be hardware specific. But now I got a new Core 2 Duo with new Intel graphics (G45 chipset), moved to 64bit, and still have the exact same problem and exact same workaround. So I really don't believe anymore it's something hardware specific and should be quite general to anyone using Intel graphics. I hoped someone with much better knowledge could reproduce it and investigate it better.

On the report, Eric Anholt mentioned a likely cause and said that Jesse Barnes had looked into a similar issue before. I cc'd him (jbarnes) on last week reminder, but got no reply.

I really wish I could do more, but learning to compile a custom kernel for my hardware and do a git bisect is something I just can't afford now. If relevant people try to reproduce it but can't, and say only possible solution would be for me to bisect it I guess I could try to give it a go when I get some spare time.

Thanks,
Alberto.


      
