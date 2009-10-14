From: David Miller <davem@davemloft.net>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Wed, 14 Oct 2009 14:51:39 -0700 (PDT)
Message-ID: <20091014.145139.148344015.davem@davemloft.net>
References: <alpine.LFD.2.01.0910141131050.6146@localhost.localdomain>
	<20091014195215.GA12936@redhat.com>
	<20091014221633.1b865651@lxorguk.ukuu.org.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1759571AbZJNVvp@vger.kernel.org>
In-Reply-To: <20091014221633.1b865651@lxorguk.ukuu.org.uk>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: alan@lxorguk.ukuu.org.uk
Cc: oleg@redhat.com, torvalds@linux-foundation.org, paulkf@microgate.com, btanastasov@yahoo.co.uk, rjw@sisk.pl, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, dmitry.torokhov@gmail.com, edt@aei.ca, hirofumi@mail.parknet.co.jp

From: Alan Cox <alan@lxorguk.ukuu.org.uk>
Date: Wed, 14 Oct 2009 22:16:33 +0100

>> Assuming that we should not check all CPUs. And in this case perhaps we can
>> even do something like
>> 
>> 	if (!delayed_work_pending() &&
>> 	    get_wq_data()->current_work != dwork)
>> 		return;
>> 
>> but this needs barriers, and run_workqueue() needs mb__before_clear_bit().
> 
> Linus correctly said that we got into the mess because the locking was
> too clever before. At this point the mutex approach seems to be rather
> preferable to the other approaches which are at least as "clever" as the
> current locking

FWIW I've been seeing behavior that is almost certainly caused by this
bug for a while, I lose 'control' or 'shift' key-down events and this
is entirely independent of keyboard attached (i've tried several) and
seems to only happen on an SMP box.

It's most accutely annoying if it triggers while playing quake3 :-)
