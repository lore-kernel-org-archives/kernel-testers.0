From: Sergey Senozhatsky <sergey.senozhatsky@mail.by>
Subject: Re: [Bug #13522] BUG: scheduling while atomic
Date: Mon, 29 Jun 2009 19:02:35 +0300
Message-ID: <20090629160235.GA3461@localdomain.by>
References: <ij4ZQY4URcP.A.F3B.vIASKB@chimera>
 <6JJ2m5kyucK.A.D2D.VJASKB@chimera>
 <20090629154119.2c61f234@lxorguk.ukuu.org.uk>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1760831AbZF2QBS@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20090629154119.2c61f234@lxorguk.ukuu.org.uk>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alan Cox <alan@lxorguk.ukuu.org.uk>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

On (06/29/09 15:41), Alan Cox wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.30.  Please verify if it still should be listed and let me know
> > (either way).
> 
> Yes although getting people seeing to test with might_sleep() checks in
> the tty layer demonstrate the tty layer isn't calling into ppp with irqs
> disabled when it shouldn't so I'm at a loss as to whether this is a
> network bug, a scheduler bug or something else.

Looks like I can't reproduce with rc1-git5 (after several hours)...
I'll try -git3,-git4.

> 
> The schedule error in __tasklet_schedule() is itself rather peicular.
> 


Reported	: 2009-06-28 22:07 by Rafael J. Wysocki
Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=13652
Subject         : scheduling while atomic: pptpgw

Rafael, I'm not sure we need 'scheduling while atomic: pptpgw' bug.
Initially BUG 13522 was named "BUG: scheduling while atomic: pptpgw" 
and renamed to "BUG: scheduling while atomic" since I was not sure wheter this is ppp or scheduler bug...

---
kernel: [ 1424.347514] BUG: scheduling while atomic: ksoftirqd/0/4/0x10000500
kernel: [27404.945372] BUG: scheduling while atomic: pptpgw/4637/0x00000400
kernel: [ 1715.273674] BUG: scheduling while atomic: ksoftirqd/0/4/0x10000500
kernel: [ 1631.073371] BUG: scheduling while atomic: pptpgw/3169/0x10000500
...
---

	Sergey
