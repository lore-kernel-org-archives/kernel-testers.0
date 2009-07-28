From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13643] Touchpad lost synchronization after resume from suspend to RAM
Date: Tue, 28 Jul 2009 23:05:28 +0200
Message-ID: <200907282305.29552.rjw@sisk.pl>
References: <Jya1GruKQpD.A.16.2GObKB@chimera> <20090727225946.048A3526EC9@mailhub.coreip.homeip.net> <20090728000945.GA13815@vespa.holoscopio.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090728000945.GA13815-StA3NKSgq9XYLCA8tIpKU1aTQe2KTcn/@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Thadeu Lima de Souza Cascardo <cascardo-DmMZpsCg3uxeGPcbtGPokg@public.gmane.org>
Cc: Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>, Cijoml Cijomlovic Cijomlov <cijoml-VIXq6x/3rUk@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Tuesday 28 July 2009, Thadeu Lima de Souza Cascardo wrote:
> On Mon, Jul 27, 2009 at 03:25:51PM -0700, Dmitry Torokhov wrote:
> > On Tue, Jul 28, 2009 at 12:15:54AM +0200, Rafael J. Wysocki wrote:
> > > On Monday 27 July 2009, Thadeu Lima de Souza Cascardo wrote:
> > > > On Sun, Jul 26, 2009 at 10:23:34PM +0200, Rafael J. Wysocki wrote:
> > > > > This message has been generated automatically as a part of a report
> > > > > of recent regressions.
> > > > > 
> > > > > The following bug entry is on the current list of known regressions
> > > > > from 2.6.30.  Please verify if it still should be listed and let me know
> > > > > (either way).
> > > > > 
> > > > > 
> > > > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13643
> > > > > Subject		: Touchpad lost synchronization after resume from suspend to RAM
> > > > > Submitter	: Cijoml Cijomlovic Cijomlov <cijoml-VIXq6x/3rUk@public.gmane.org>
> > > > > Date		: 2009-06-28 10:42 (29 days old)
> > > > > References	: http://lkml.org/lkml/2009/6/23/365
> > > > > 		  2.6.30-rc1: touchpad disabled
> > > > > 		  http://lkml.org/lkml/2009/6/25/256
> > > > > Handled-By	: Thadeu Lima de Souza Cascardo <cascardo-DmMZpsCg3uxeGPcbtGPokg@public.gmane.org>
> > > > > Patch		: http://patchwork.kernel.org/patch/34075/
> > > > > 
> > > > > 
> > > > 
> > > > I guess my patch did fix it and we had other confirmations as well,
> > > > didn't we?
> > > 
> > > Yes, we did.  It's waiting in the Dmirty's tree for Linus to take it AFAICS.
> > > 
> > 
> > I believe it is in -rc4 actually.
> > 
> > -- 
> > Dmitry
> 
> It entered in v2.6.31-rc3. Thanks, Dimitry.
> 
> cascardo@vespa:~/linux$ git log1 --author=cascardo v2.6.31-rc2..v2.6.31-rc3
> ddaa43433dd77535e4e132787f199f58ce224f44 Input: mark serio and i8042 as suspende
> cascardo@vespa:~/linux$

Thanks, closed.

Rafael
