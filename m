From: Alexander Zhaunerchyk <alex.vizor-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #36452] Artifacts with 3.0-rc1 on SandyBridge
Date: Wed, 29 Jun 2011 20:02:07 +0300
Message-ID: <4E0B5A8F.4020905@gmail.com>
References: <VDRaLpg_NZ.A.tnC.JZ6BOB@chimera>	<XWjMN7gBoXK.A.bzD.Ia6BOB@chimera> <20110629094717.10df4637@jbarnes-desktop>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=DnSc/2hsbUc0e72sUkFrTDE0cKYKzrIn7wZTtAg39GI=;
        b=LsbhkvxzyEUSr+R7ZPEdi8cxTrfxcMv4ZtworpARXPBNv4wl6I9/tc1jBVo1X6KEG/
         1yZ1NuGJEU0yoj5TAtwMMfv+jG17JrPVwmq9yHGgtzoDVgo1XAYN5f0cfhrIrri+zACm
         ucmAvv2l4a6Q4OXImCnGPICtXnNBURNyJjjVw=
In-Reply-To: <20110629094717.10df4637@jbarnes-desktop>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

This was with integrated graphics. But seems this is fixed in rc5 or 
rc5+ because after compiling rc5 I  didn't see these artifacts anymore

On 29.06.2011 19:47, Jesse Barnes wrote:
> On Sun, 26 Jun 2011 23:23:44 +0200 (CEST)
> "Rafael J. Wysocki"<rjw-KKrjLPT3xs0@public.gmane.org>  wrote:
>
>> This message has been generated automatically as a part of a summary report
>> of recent regressions.
>>
>> The following bug entry is on the current list of known regressions
>> from 2.6.39.  Please verify if it still should be listed and let the tracking team
>> know (either way).
>>
>>
>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=36452
>> Subject		: Artifacts with 3.0-rc1 on SandyBridge
>> Submitter	: Alex Zhavnerchik<alex.vizor-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> Date		: 2011-06-01 13:55 (26 days old)
> Is this with integrated or discrete graphics?  Have you tried to bisect
> yet?
>
