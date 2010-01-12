From: Oliver Hartkopp <oliver@hartkopp.net>
Subject: Re: [Bug #14907] Commit "kbuild: fix bzImage build for x86" breaks
 build
Date: Tue, 12 Jan 2010 10:01:54 +0100
Message-ID: <4B4C3A82.8080802@hartkopp.net>
References: <wnS54-l8PVO.A.TlF.oMlSLB@chimera> <omZ8aBZReyD.A.lV.kNlSLB@chimera> <20100111013606.GA7031@progeny.tock> <201001112102.13570.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753859Ab0ALJCb@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; t=1263286941; l=1376;
	s=domk; d=hartkopp.net;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:
	Subject:CC:To:MIME-Version:From:Date:X-RZG-CLASS-ID:X-RZG-AUTH;
	bh=I1KjaTifqnXEIa1d9t51PrR5RN4=;
	b=mMjwf4OzC2pPm2vmNeIpvYBF6VU4nHXc/nfh8Q2v2b9qyE27RLvZrf3NUWFFY+196iC
	XJlV4j2Hmy4kUfV12jIuL0hZGf9HHO4H56oPzXo/LE/n6kGjdXLdnhXAcnGjVxE4bP3ZH
	nDWrZBtsKzVnErP+jrRnhaYQp6HGDAYn1ec=
In-Reply-To: <201001112102.13570.rjw@sisk.pl>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Jonathan Nieder <jrnieder@gmail.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Michael Tokarev <mjt@tls.msk.ru>, Michal Marek <mmarek@suse.cz>, Sam Ravnborg <sam@ravnborg.org>

Rafael J. Wysocki wrote:
> On Monday 11 January 2010, Jonathan Nieder wrote:
>> Rafael J. Wysocki wrote:
>>
>>> The following bug entry is on the current list of known regressions
>>> from 2.6.32.  Please verify if it still should be listed and let me know
>>> (either way).
>>>
>>>
>>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14907
>>> Subject		: Commit "kbuild: fix bzImage build for x86" breaks build
>>> Submitter	: Oliver Hartkopp <oliver@hartkopp.net>
>>> Date		: 2009-12-19 19:21 (23 days old)
>>> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=4a2ff67c88211026afcbdbc190c13f705dae1b59
>>> References	: http://marc.info/?l=linux-kernel&m=126125050622195&w=4
>>> 		  http://marc.info/?l=linux-kernel&m=126114565103300&w=4
>>> 		  http://marc.info/?l=linux-kbuild&m=126202819526623&w=2
>>> Handled-By	: Jonathan Nieder <jrnieder@gmail.com>
>>> Patch		: http://thread.gmane.org/gmane.linux.kbuild.devel/4313/focus=4319
>>> 		  http://patchwork.kernel.org/patch/71957/
>> I am using the patch without problems, but it is not in the mainline
>> as of v2.6.33-rc3-git3.  So please do keep the bug listed.
> 
> I will, thanks for the update.

I just tested the patch again - and it fixes the problem.

You can add my

Tested-by: Oliver Hartkopp <oliver@hartkopp.net>

if you like.

Thanks,
Oliver
