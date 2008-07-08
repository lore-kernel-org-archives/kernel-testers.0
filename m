From: "Yinghai Lu" <yhlu.kernel@gmail.com>
Subject: Re: [Bug #10872] x86_64 boot hang when CONFIG_NUMA=n
Date: Mon, 7 Jul 2008 17:24:16 -0700
Message-ID: <86802c440807071724i1a186879h479460ada28e1b26@mail.gmail.com>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik>
	 <uBi7uNfg81L.A.XLC.s0LcIB@albercik>
	 <20080706111750.a6d77e81.randy.dunlap@oracle.com>
	 <alpine.LFD.1.10.0807061133230.3016@woody.linux-foundation.org>
	 <20080707063218.GC23583@elte.hu>
	 <20080707113917.6fda3f7d.randy.dunlap@oracle.com>
	 <20080707154042.04bb492e.randy.dunlap@oracle.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755976AbYGHAY2@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=hCzBQh6PNlIGGRFlGQT6j9n9xQUP8WiHmq4TSgfZ7OA=;
        b=hC5gULEDhlDGGGuixHxmob0NLQAmZA+F1Ee1GzsHxfvPbG1IxMVAdCktaFS3al+u+P
         8XHhYDAiY9FZrBi/oKLQ41bAf5I0q+NFrYJBCF8blkcOlPOhKTU1QNg0Atg5Ww3ZVn2j
         n99bWjT7R1sd7qlVcSAHKK2uUp1O6iqQrswKc=
In-Reply-To: <20080707154042.04bb492e.randy.dunlap@oracle.com>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Randy Dunlap <randy.dunlap@oracle.com>
Cc: lkml <linux-kernel@vger.kernel.org>, Ingo Molnar <mingo@elte.hu>, Linus Torvalds <torvalds@linux-foundation.org>, "Rafael J. Wysocki" <rjw@sisk.pl>, Kernel Testers List <kernel-testers@vger.kernel.org>

On Mon, Jul 7, 2008 at 3:40 PM, Randy Dunlap <randy.dunlap@oracle.com> wrote:
> On Mon, 7 Jul 2008 11:39:17 -0700 Randy Dunlap wrote:
>
>> On Mon, 7 Jul 2008 08:32:18 +0200 Ingo Molnar wrote:
>>
>> >
>> > * Linus Torvalds <torvalds@linux-foundation.org> wrote:
>> >
>> > > > This still happens with 2.6.26-rc9.  Using CONFIG_NUMA=y boots OK.
>> > >
>> > > Ok, then it wasn't the nr_zones thing.
>> > >
>> > > Since it seems to be repeatable for you, can you bisect it?
>> >
>> > one guess would be:
>> >
>> > | commit e8ee6f0ae5cd860e8e6c02807edfa3c1fa01bcb5
>> > | Author: Yinghai Lu <yhlu.kernel@gmail.com>
>> > | Date:   Sun Apr 13 01:41:58 2008 -0700
>> > |
>> > |     x86: work around io allocation overlap of HT links
>> >
>> > but ... since CONFIG_NUMA makes it work, i'm not sure about that.
>> >
>> > Randy, could you post the full CONFIG_NUMA bootlog as well, does it show
>> > any difference in resource allocations?
>>
>> Good and bad boot logs are attached.  There are several differences, but I don't
>> see any that are significant.
>>
>> I've started bisecting with:
>>
>> $ git bisect start
>> $ git bisect bad v2.6.26-rc1
>> $ git bisect good v2.6.25
>>
>> That's only about 1.29M lines of changes.
>
> git bisect and normal rebooting did not find a problem.
>
> I'll repeat this using kexec to boot the new kernel and see if that
> locates any issues... since I normally use kexec to load/test new kernels
> and that was how the failure occurred (occurs).
>

same NON-NUMA kernel kexec NON-NUMA kernel?

or other kernel kexex it?

YH
