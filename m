From: David Greaves <david@dgreaves.com>
Subject: Re: [Bug #11460] 2.6.27-rc3 to -rc4 regression: init 0 hangs in halt
Date: Mon, 01 Sep 2008 10:23:12 +0100
Message-ID: <48BBB480.3000907@dgreaves.com>
References: <q6jBvyFdWbL.A.K4C.fhbuIB@albercik>	<N8SeMoDzuxC.A.-VD.xhbuIB@albercik>	<48B9C7C6.2060209@dgreaves.com> <18619.22913.1452.426243@notabene.brown>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756898AbYIAJXZ@vger.kernel.org>
In-Reply-To: <18619.22913.1452.426243@notabene.brown>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Neil Brown <neilb@suse.de>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

Neil Brown wrote:
> On Saturday August 30, david@dgreaves.com wrote:
>> Rafael J. Wysocki wrote:
>>> This message has been generated automatically as a part of a report
>>> of recent regressions.
>>>
>>> The following bug entry is on the current list of known regressions
>>> from 2.6.26.  Please verify if it still should be listed and let me know
>>> (either way).
>>>
>>>
>>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11460
>>> Subject		: 2.6.27-rc3 to -rc4 regression: init 0 hangs in halt
>>> Submitter	: David Greaves <david@dgreaves.com>
>>> Date		: 2008-08-30 04:07 (1 days old)
>> Yes.
>>
>> I'm trying to bisect it but came across a bug/problem in git doing bisects.
>> (see message subject "setlocalversion wasn't producing git labels for bisect")
> 
> Hi David.
> 
> Could you please try this patch?

Yes, that fixed it.

Thanks

David
