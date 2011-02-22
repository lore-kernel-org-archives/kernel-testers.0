From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #28562] [BUG] usb problems in .38-rc3+
Date: Tue, 22 Feb 2011 20:57:47 +0100
Message-ID: <201102222057.47321.rjw@sisk.pl>
References: <xmAo3o4v0VF.A.eLH.HWtYNB@chimera> <5HY1m9_-mkI.A.VxH.8WtYNB@chimera> <201102212106.07392.edt@aei.ca>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201102212106.07392.edt-Yad3+ZauZac@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On Tuesday, February 22, 2011, Ed Tomlinson wrote:
> On Monday 21 February 2011 17:03:00 Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a summary report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.37.  Please verify if it still should be listed and let the tracking team
> > know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=28562
> > Subject		: [BUG] usb problems in .38-rc3+
> > Submitter	: Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>
> > Date		: 2011-02-05 19:17 (17 days old)
> > Message-ID	: <201102051417.58953.edt-Yad3+ZauZac@public.gmane.org>
> > References	: http://marc.info/?l=linux-kernel&m=129693391417607&w=2
>  
> I figured out a work around for this.  Once the bluetooth adaptor has been detected and udev
> had done its stuff run: 
> 
> hciconfig -a
> 
> With this user space change it works.  I have no idea why the 'hciconfig -a' query fixes things.
> I run gentoo and bluez-4.87 is installed.

OK, thanks for the update.  Do I understand correctly that things used to work
before without that workaround?

Rafael
