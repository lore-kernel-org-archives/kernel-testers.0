From: Walt Holman <walt-Wo+ox+avW/9ByuSxxbvQtw@public.gmane.org>
Subject: Re: [Bug #14057] Strange network timeouts w/ e100
Date: Wed, 26 Aug 2009 17:01:51 -0500 (CDT)
Message-ID: <775912665.01251324111901.JavaMail.root@mail.holmansrus.com>
References: <200908262312.04000.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200908262312.04000.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Krzysztof Halasa <khc-9GfyWEdoJtJmR6Xm/wNWPw@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


----- "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> On Wednesday 26 August 2009, Walt Holman wrote:
> > 
> > ----- "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > 
> > > This message has been generated automatically as a part of a
> report
> > > of recent regressions.
> > > 
> > > The following bug entry is on the current list of known
> regressions
> > > from 2.6.30.  Please verify if it still should be listed and let
> me
> > > know
> > > (either way).
> > > 
> > > 
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14057
> > > Subject		: Strange network timeouts w/ e100
> > > Submitter	: Walt Holman <walt-Wo+ox+avW/9ByuSxxbvQtw@public.gmane.org>
> > > Date		: 2009-08-20 0:21 (6 days old)
> > > References	:
> http://marc.info/?l=linux-kernel&m=125072831831443&w=4
> > > Handled-By	: Krzysztof Halasa <khc-9GfyWEdoJtJmR6Xm/wNWPw@public.gmane.org>
> > 
> > Hi Rafael,
> 
> Hi,
> 
> > Krzysztof has a patch which has corrected this issue for me. 
> Thanks,
> 
> Thanks for the update.
> 
> Do you have a pointer to the patch, please?
> 
> Rafael

Yes, it's referenced in:

http://marc.info/?l=linux-netdev&m=125104144706982&w=2

Which was for 2.6.30.5  The same patch still applies on 2.6.31-rc7 with offset and that's actually where I tested it.  That resolved the timeouts for me.  I believe Krzysztof was going to get a patch in to -stable as well as for .31-rc before final.

-Walt
