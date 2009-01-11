From: "Jeff Chua" <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12422] 2.6.28-git can't resume from str
Date: Mon, 12 Jan 2009 00:13:32 +0800
Message-ID: <b6a2187b0901110813s5429573cm7d78f39e288f70a3@mail.gmail.com>
References: <XU-8icArWLM.A.UpG.8GfaJB@chimera>
	 <oWTznAnH9BI.A.qDH.EHfaJB@chimera> <4969FD64.8040408@gentoo.org>
	 <200901111518.38880.borntraeger@de.ibm.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=yvYqQjT6kCb+BPp7pRXgIUuOMNNwbzR6gFoXZBkTTxg=;
        b=ZW8TsZM9j5/D6yLdTLi8P7vWGSrmIgqTIRHGTWVmxl++hNwP2NVBBwqaEDcZIE5E8+
         pF0uTf8OkfqO+xaluaGOwmfbIpc87dFAATu1qrdJQejcnl/5/g/S7D2FHBxVcQprZrj/
         VZQqlxdcJRQ/A9tKwcXFNDuha0rnSEnv3CatY=
In-Reply-To: <200901111518.38880.borntraeger-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Christian Borntraeger <borntraeger-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
Cc: Daniel Drake <dsd-aBrp7R+bbdUdnm+yROfE0A@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Phil Dibowitz <phil-LijsOF1cAEA@public.gmane.org>

On Sun, Jan 11, 2009 at 10:18 PM, Christian Borntraeger
<borntraeger-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org> wrote:
> Am Sonntag 11 Januar 2009 schrieb Daniel Drake:
>> Rafael J. Wysocki wrote:
>> > This message has been generated automatically as a part of a report
>> > of recent regressions.
>> >
>> > The following bug entry is on the current list of known regressions
>> > from 2.6.28.  Please verify if it still should be listed and let me know
>> > (either way).
>> >
>> >
>> > Bug-Entry   : http://bugzilla.kernel.org/show_bug.cgi?id=12422
>> > Subject             : 2.6.28-git can't resume from str
>> > Submitter   : Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> > Date                : 2009-01-10 1:39 (2 days old)
>> > References  : http://marc.info/?l=linux-kernel&m=123155157909282&w=4
>>
>> The bisection looks invalid. It is unlikely to be this commit at fault.
>> Jeff, do you even have that camera?
>>
>> It is also easy to revert that commit by hand. Just delete the
>> unusual_devs entry for it.
>
> I found a nearby commit during bisect, which looks much saner:
>
> http://marc.info/?l=linux-kernel&m=123167815028388&w=2

This was committed earlier than
a0e280e0f33f6c859a235fb69a875ed8f3420388, and
a0e280e0f33f6c859a235fb69a875ed8f3420388 was the last working kernel
that is able to suspend/resume. Go one before, and suspend/resume
breaks.

Thanks,
Jeff.
