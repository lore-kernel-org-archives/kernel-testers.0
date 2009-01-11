From: "Jeff Chua" <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12422] 2.6.28-git can't resume from str
Date: Mon, 12 Jan 2009 00:10:23 +0800
Message-ID: <b6a2187b0901110810u452b05b8t2d1da38db36113a@mail.gmail.com>
References: <XU-8icArWLM.A.UpG.8GfaJB@chimera>
	 <oWTznAnH9BI.A.qDH.EHfaJB@chimera> <4969FD64.8040408@gentoo.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=td/ESPeVplgZ+wFNM+Lf5xmZ1R6q2TjxWda9JMjXZRM=;
        b=n5caOE6j3X8IBoSCfTw4jwF/JN6ftI3OeFVKqqrExFg2sdYzscZWIRhJLdm6WJEgre
         yn7vrADVdrH16/fmYt++6aFRCC3/MIGoNuu2B4XJD1gFguMVUmoEpf2Q4z6EGnbo8N5N
         fcBi0P9SyngNdaxSfahxOtyJNKU1LvsL1WfA0=
In-Reply-To: <4969FD64.8040408-aBrp7R+bbdUdnm+yROfE0A@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Daniel Drake <dsd-aBrp7R+bbdUdnm+yROfE0A@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Phil Dibowitz <phil-LijsOF1cAEA@public.gmane.org>

On Sun, Jan 11, 2009 at 10:08 PM, Daniel Drake <dsd-aBrp7R+bbdUdnm+yROfE0A@public.gmane.org> wrote:
> Rafael J. Wysocki wrote:
>>
>> This message has been generated automatically as a part of a report
>> of recent regressions.
>>
>> The following bug entry is on the current list of known regressions
>> from 2.6.28.  Please verify if it still should be listed and let me know
>> (either way).
>>
>>
>> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12422
>> Subject         : 2.6.28-git can't resume from str
>> Submitter       : Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> Date            : 2009-01-10 1:39 (2 days old)
>> References      : http://marc.info/?l=linux-kernel&m=123155157909282&w=4
>
> The bisection looks invalid. It is unlikely to be this commit at fault.

I have doubt about this too, but it's was git bisect zero into. All I
know is a0e280e0f33f6c859a235fb69a875ed8f3420388 is definitely good.

> Jeff, do you even have that camera?

No, I don't have this.


> It is also easy to revert that commit by hand. Just delete the unusual_devs
> entry for it.

I'm lost reverting this. Right now, I'm just use "git diff" and throw
away everything after a0e280e0f33f6c859a235fb69a875ed8f3420388, and my
system can STD, STR without an problem resuming.

Thanks,
Jeff.
