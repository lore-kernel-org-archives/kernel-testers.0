From: Alexander Zhaunerchyk <alex.vizor@gmail.com>
Subject: Re: [Bug #36452] Artifacts with 3.0-rc1 on SandyBridge
Date: Wed, 15 Jun 2011 21:59:41 +0300
Message-ID: <4DF9011D.6050107@gmail.com>
References: <vv0uv79EvLN.A.jiC.pNS9NB@chimera>	<JL7O0m0yLjL.A.vCD.COS9NB@chimera> <20110615114329.7429ff43@jbarnes-desktop>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to:content-type
         :content-transfer-encoding;
        bh=F3TL3LuIrGn1V8qi/Bk2fj04E71csGwWBIEnI9NCLgE=;
        b=XwUWqQjIumFvsJ3RWYbDl1vYOK1uBlL75rOmIp3g26rx3r9qf15vMQgt/RDpdCcHks
         LlYs8HwO5/BN28aNQ0YLnb7/R6fvkLUFXDalJgB+k9v6LkWy/s3Ln1HyxOqGQ3IOmjt+
         yc489Q1EXbaVhTcJbedgPaGvuUpp8jIStViHA=
In-Reply-To: <20110615114329.7429ff43@jbarnes-desktop>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Jesse Barnes <jbarnes@virtuousgeek.org>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>

I can't bisect. I tried to bisect other other bug but with some commits 
I can't even boot, kernel hangs in panic.

On 15.06.2011 21:43, Jesse Barnes wrote:
> On Sun, 12 Jun 2011 22:30:52 +0200 (CEST)
> "Rafael J. Wysocki"<rjw@sisk.pl>  wrote:
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
>> Submitter	: Alex Zhavnerchik<alex.vizor@gmail.com>
>> Date		: 2011-06-01 13:55 (12 days old)
> Can you try bisecting this one?
>
