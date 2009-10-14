From: Alan Cox <alan@lxorguk.ukuu.org.uk>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Wed, 14 Oct 2009 22:16:33 +0100
Message-ID: <20091014221633.1b865651@lxorguk.ukuu.org.uk>
References: <4AD4F548.2030506@microgate.com>
	<alpine.LFD.2.01.0910131514100.3404@localhost.localdomain>
	<1255478932.19056.24.camel@localhost.localdomain>
	<4AD51D6B.7010509@microgate.com>
	<alpine.LFD.2.01.0910131744590.3404@localhost.localdomain>
	<20091014125846.1a3c8d40@lxorguk.ukuu.org.uk>
	<alpine.LFD.2.01.0910140804180.6146@localhost.localdomain>
	<alpine.LFD.2.01.0910140925440.6146@localhost.localdomain>
	<20091014182037.GA10076@redhat.com>
	<alpine.LFD.2.01.0910141131050.6146@localhost.localdomain>
	<20091014195215.GA12936@redhat.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1760468AbZJNVRZ@vger.kernel.org>
In-Reply-To: <20091014195215.GA12936@redhat.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Oleg Nesterov <oleg@redhat.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Paul Fulghum <paulkf@microgate.com>, Boyan <btanastasov@yahoo.co.uk>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, Ed Tomlinson <edt@aei.ca>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>

> Assuming that we should not check all CPUs. And in this case perhaps we can
> even do something like
> 
> 	if (!delayed_work_pending() &&
> 	    get_wq_data()->current_work != dwork)
> 		return;
> 
> but this needs barriers, and run_workqueue() needs mb__before_clear_bit().

Linus correctly said that we got into the mess because the locking was
too clever before. At this point the mutex approach seems to be rather
preferable to the other approaches which are at least as "clever" as the
current locking
