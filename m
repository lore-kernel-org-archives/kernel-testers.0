From: Pauli Nieminen <suokkos-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #16337] general protection fault: 0000 [#1] SMP
Date: Mon, 30 Aug 2010 10:38:54 +0300
Message-ID: <AANLkTinzVmtWhhvuRNcKF1xKs+L=Lw0DT2osDxcbA6ze@mail.gmail.com>
References: <c1_O4wHrlB.A.63.mbueMB@chimera>
	<ByD_7B96czP.A.3DD.5fueMB@chimera>
	<4C7AF2C4.9040507@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:in-reply-to
         :references:date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=qgkAZ3NPA+3AFGeTFbonSKGangcnae6YtmfTsnaMSZM=;
        b=XEQQFW7eQ1cg44VHkYOuqeqnTBcXtAY5gCZSbHhp6mkgqIYfrPtpVz3JW3N3G/AKCg
         WXd1sX/cKgnS9blx+hn9/Gtf4a+c06RbAOIdxwEvJ0xpWXDEsK/o1+yS89oOIH6NV+nY
         zPJiuDrptt2yb/wl85TNqd6yXK0hM/tXNKL/k=
In-Reply-To: <4C7AF2C4.9040507-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Mon, Aug 30, 2010 at 2:52 AM, Justin P. Mattock
<justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> On 08/29/2010 04:13 PM, Rafael J. Wysocki wrote:
>>
>> This message has been generated automatically as a part of a report
>> of regressions introduced between 2.6.34 and 2.6.35.
>>
>> The following bug entry is on the current list of known regressions
>> introduced between 2.6.34 and 2.6.35. =A0Please verify if it still s=
hould
>> be listed and let the tracking team know (either way).
>>
>>
>> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
16337
>> Subject =A0 =A0 =A0 =A0 : general protection fault: 0000 [#1] SMP
>> Submitter =A0 =A0 =A0 : Justin P. Mattock<justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> Date =A0 =A0 =A0 =A0 =A0 =A0: 2010-07-03 22:59 (58 days old)
>> Message-ID =A0 =A0 =A0:<<4C2FC0E3.6050101-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>>
>> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D12781=
9798215589&w=3D2
>>
>>
>>
>
>
> only have seen this once..on the other hand (If im correct)maciej or =
pauli
> where able to reproduce this.. I say leave open then go from there.
>
> Justin P. Mattock
>

I was able to reproduce this with about 50% chance in boot. But that
happened in a few rc (rc2-rc4 iirc) versions only. After that never
again.
