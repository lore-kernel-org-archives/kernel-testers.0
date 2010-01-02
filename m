From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14935] hd-audio0 eats 25% CPU (according to top)
Date: Sat, 2 Jan 2010 14:41:37 +0100
Message-ID: <201001021441.37518.rjw@sisk.pl>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera> <NJVdobuNFNK.A.wuG.KnhOLB@chimera> <20100102013323.3651b95a@mosly>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100102013323.3651b95a@mosly>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Sergei Trofimovich <slyich-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Takashi Iwai <tiwai-l3A5Bk7waGM@public.gmane.org>

On Saturday 02 January 2010, Sergei Trofimovich wrote:
> On Tue, 29 Dec 2009 16:10:01 +0100 (CET)
> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> 
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.32.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14935
> > Subject		: hd-audio0 eats 25% CPU (according to top)
> > Submitter	: Sergei Trofimovich <slyich-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date		: 2009-12-25 10:21 (5 days old)
> > References	: http://marc.info/?l=linux-kernel&m=126173644210280&w=4
> > Handled-By	: Takashi Iwai <tiwai-l3A5Bk7waGM@public.gmane.org>
> > Patch		: http://patchwork.kernel.org/patch/69747/
> 
> Merged upstream as: 729d55ba972348234759f8e40abf8de020f0d505 (aka v2.6.33-rc2-2-g729d55b)
> I've tested v2.6.33-rc2-249-gcd6e125 and it fixes problem.

Thanks, closed.

Rafael
