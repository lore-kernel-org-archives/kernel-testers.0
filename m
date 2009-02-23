From: Larry Finger <Larry.Finger@lwfinger.net>
Subject: Re: [Bug #12609] v2.6.29-rc2 libata sff 32bit PIO regression
Date: Mon, 23 Feb 2009 10:22:19 -0600
Message-ID: <49A2CD3B.4090703@lwfinger.net>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera> <200902052354.16361.rjw@sisk.pl> <498CC380.1070705@lwfinger.net> <200902070058.26539.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755766AbZBWQWk@vger.kernel.org>
In-Reply-To: <200902070058.26539.rjw@sisk.pl>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Hugh Dickins <hugh@veritas.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Alan Cox <alan@lxorguk.ukuu.org.uk>, Mikael Pettersson <mikpe@it.uu.se>, Sergei Shtylyov <sshtylyov@ru.mvista.com>

Rafael J. Wysocki wrote:
> On Saturday 07 February 2009, Larry Finger wrote:
>> Rafael J. Wysocki wrote:
>>> On Thursday 05 February 2009, Hugh Dickins wrote:
>>>> On Wed, 4 Feb 2009, Rafael J. Wysocki wrote:
>>>>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12609
>>>>> Subject		: v2.6.29-rc2 libata sff 32bit PIO regression
>>>>> Submitter	: Larry Finger <Larry.Finger@lwfinger.net>
>>>>> Date		: 2009-01-23 23:52 (13 days old)
>>>>> References	: http://marc.info/?l=linux-kernel&m=123275478111406&w=4
>>>>> 		  http://marc.info/?l=linux-kernel&m=123254501314058&w=4
>>>>> Handled-By	: Mikael Pettersson <mikpe@it.uu.se>
>>>>> 		  Hugh Dickins <hugh@veritas.com>
>>>>> Patch		: http://marc.info/?l=linux-kernel&m=123254501314058&w=2
>>>> Yes, this does still need to be listed.  My initial patch for it was
>>>> not enough, but I think the three patches necessary have all now been
>>>> posted (though Sergei may rewrite mine).  I'm expecting Alan to gather
>>>> them together and send them in due course, but I believe he's occupied
>>>> with other stuff just at the moment.
>> I still have the problem as of 2.6.29-rc3-00634-g9be260a
> 

The problem was fixed as of 2.6.29-rc5-00168-gba95fd4 with commit d1b3525. At
least for my system, the regression is cleared.

Larry
