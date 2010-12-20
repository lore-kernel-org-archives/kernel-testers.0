From: Tejun Heo <tj-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #20232] kworker consumes ~100% CPU on HP Elitebook 8540w
 running 2.6.36_rc6-git4
Date: Mon, 20 Dec 2010 17:47:12 +0100
Message-ID: <4D0F8890.2070307@kernel.org>
References: <ZRNlsjykcOD.A.b-F.20fDNB@chimera>	 <xqq2Z3iR9HJ.A.lMH.Q2fDNB@chimera> <1292841313.2708.137.camel@laptop>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=un7hKXz3M1JAITyMI943M9gTVZ8W8VGMYn6lerGBxX0=;
        b=nAz77fztTfW+MOuqxfT7TdJDwXzUV/j53j1eIPcW0jwulm/8ucoQLH0qB/8Xwt2LHx
         SkHCFwvEn2XruKECaeoDWJ5KoeFaAmhmVaLus7gU4iOvL9fuvudxqNjUTE6lnSiWtY7F
         EIP1jqRHAn1hYnE5IMuUk6OdsmOytitlbyaeg=
In-Reply-To: <1292841313.2708.137.camel@laptop>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Ozan Caglayan <ozan-caicS1wCkhO6A22drWdTBw@public.gmane.org>, 2010-04-22-4aM62lgALcCSrlBSqq5r4w@public.gmane.org

Hello,

On 12/20/2010 11:35 AM, Peter Zijlstra wrote:
> On Sun, 2010-12-19 at 13:50 +0100, Rafael J. Wysocki wrote:
>> This message has been generated automatically as a part of a report
>> of regressions introduced between 2.6.35 and 2.6.36.
>>
>> The following bug entry is on the current list of known regressions
>> introduced between 2.6.35 and 2.6.36.  Please verify if it still should
>> be listed and let the tracking team know (either way).
>>
>>
>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=20232
>> Subject		: kworker consumes ~100% CPU on HP Elitebook 8540w running 2.6.36_rc6-git4
>> Submitter	: Ozan Caglayan <ozan-caicS1wCkhO6A22drWdTBw@public.gmane.org>
>> Date		: 2010-10-13 06:13 (68 days old)
> 
> I'd be thinking that kworker going wonky is something for Tejun to have
> a look at.. Anyway, is it still relevant for current kernels?

It looks like the work is scheduled in loop, so the kworker acting out
seems to be the symptom of the problem not the cause.  Looks like
Rafael already has a proper fix on mind, so...

Thanks.

-- 
tejun
