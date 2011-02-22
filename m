From: Ed Tomlinson <edt@aei.ca>
Subject: Re: [Bug #28562] [BUG] usb problems in .38-rc3+
Date: Mon, 21 Feb 2011 21:06:06 -0500
Message-ID: <201102212106.07392.edt@aei.ca>
References: <xmAo3o4v0VF.A.eLH.HWtYNB@chimera> <5HY1m9_-mkI.A.VxH.8WtYNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <5HY1m9_-mkI.A.VxH.8WtYNB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>

On Monday 21 February 2011 17:03:00 Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.37.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=28562
> Subject		: [BUG] usb problems in .38-rc3+
> Submitter	: Ed Tomlinson <edt@aei.ca>
> Date		: 2011-02-05 19:17 (17 days old)
> Message-ID	: <201102051417.58953.edt@aei.ca>
> References	: http://marc.info/?l=linux-kernel&m=129693391417607&w=2
 
I figured out a work around for this.  Once the bluetooth adaptor has been detected and udev
had done its stuff run: 

hciconfig -a

With this user space change it works.  I have no idea why the 'hciconfig -a' query fixes things.
I run gentoo and bluez-4.87 is installed.

Ed Tomlinson
