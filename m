From: Andrew Hendry <andrew.hendry-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #16175] 2.6.35-rc1 system oom, many processes killed but 
	memory not free
Date: Fri, 9 Jul 2010 17:08:47 +1000
Message-ID: <AANLkTine2GbsnGfqZLzgDq2AWmAPpHqjDUugumpX2Ymv@mail.gmail.com>
References: <-IGZ64uxA6G.A.P0H.bLmNMB@chimera>
	<TXb9XdQzJoD.A.n2D.8NmNMB@chimera>
	<20100709115010.CD72.A69D9226@jp.fujitsu.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:in-reply-to
         :references:date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=KVnSKMoMLK9tgdx4+jYYxLuOHFaSaWnaMn/CTkRWRaA=;
        b=GDDQVaNP9cRQwWMPr7AoLh5usWptL622Bjk1xMJstX5LkFOBPF6Vj2wISpTuIvS48m
         HJSmzuwy0rlFFObMXxENIsDCj1Em6kEifkpHQsH6ZeM8qJP0uhZD0p1ivPmAIIJLb/IB
         oKPau1paFd3iIX1EdIW/mvPg/uV1+t4NG9Nbc=
In-Reply-To: <20100709115010.CD72.A69D9226-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

Yes this one can be closed, it was ramdisk too big.

On Fri, Jul 9, 2010 at 12:53 PM, KOSAKI Motohiro
<kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org> wrote:
>> This message has been generated automatically as a part of a summary=
 report
>> of recent regressions.
>>
>> The following bug entry is on the current list of known regressions
>> from 2.6.34. =A0Please verify if it still should be listed and let t=
he tracking team
>> know (either way).
>>
>>
>> Bug-Entry =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D161=
75
>> Subject =A0 =A0 =A0 =A0 =A0 =A0 =A0 : 2.6.35-rc1 system oom, many pr=
ocesses killed but memory not free
>> Submitter =A0 =A0 : andrew hendry <andrew.hendry-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> Date =A0 =A0 =A0 =A0 =A0: 2010-06-05 0:46 (34 days old)
>> Message-ID =A0 =A0: <AANLkTim7CiW-yfugZUAHZCqLvXKgt9CwolCvbLGdCLAk@m=
ail.gmail.com>
>> References =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D127569877=
714937&w=3D2
>
> Andrew, I think this ticket can be closed, right?
>
> Rafael, can you please see following discussion?
>
> http://marc.info/?l=3Dlinux-kernel&m=3D127744262109629&w=3D2
>
>
