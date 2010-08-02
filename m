From: "Justin P. Mattock" <justinmattock@gmail.com>
Subject: Re: [Bug #16337] general protection fault: 0000 [#1] SMP
Date: Mon, 02 Aug 2010 06:47:43 -0700
Message-ID: <4C56CC7F.9080105@gmail.com>
References: <2dWFdr9kTFM.A.P0D.spXVMB@chimera> <Aan7wZ97YaE.A.TCF.1qXVMB@chimera> <4C5618DA.1020407@gmail.com> <201008021534.52133.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=kD2WmNlRzZj4Xyk+dZswcrty6XFDySgBzc4Z4qB6BYo=;
        b=eJdZp3PzB2LOZMq6dGJtfvesjl7uyz7F6i9RdXrbWjrW7RANy2xsyEingFIegLLUcI
         nrloyBthBRyaNisvGcNXFdQG5y1cqU8ANUsgLZfD6zu0ve/qlJOWYtaqENU5y7iWWaI1
         gB2fM5RPu8N1WFVw4jGUiA8vRdcoXP+Ir942M=
In-Reply-To: <201008021534.52133.rjw@sisk.pl>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Pauli Nieminen <suokkos@gmail.com>

On 08/02/2010 06:34 AM, Rafael J. Wysocki wrote:
> On Monday, August 02, 2010, Justin P. Mattock wrote:
>> On 08/01/2010 06:52 AM, Rafael J. Wysocki wrote:
>>> This message has been generated automatically as a part of a summary report
>>> of recent regressions.
>>>
>>> The following bug entry is on the current list of known regressions
>>> from 2.6.34.  Please verify if it still should be listed and let the tracking team
>>> know (either way).
>>>
>>>
>>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16337
>>> Subject		: general protection fault: 0000 [#1] SMP
>>> Submitter	: Justin P. Mattock<justinmattock@gmail.com>
>>> Date		: 2010-07-03 22:59 (30 days old)
>>> Message-ID	:<4C2FC0E3.6050101@gmail.com>
>>> References	: http://marc.info/?l=linux-kernel&m=127819798215589&w=2
>>>
>>>
>>> --
>>> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
>>> the body of a message to majordomo@vger.kernel.org
>>> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>>> Please read the FAQ at  http://www.tux.org/lkml/
>>>
>>
>> Ive played around with the machine that originally hit this. but still
>> cant seem to reproduce or trigger this.
>
> I'll close it, then.  Please reopen if you reproduce the issue.
>
> Rafael
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/
>


o.k. Ill keep my eye out for this.. and if im able to reproduce I'll 
bisect it re-open this bug etc...

Justin P. Mattock
