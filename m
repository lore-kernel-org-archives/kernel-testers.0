From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #16462] unable to connect to AP on legal channels 12/13
Date: Mon, 02 Aug 2010 08:49:40 -0700
Message-ID: <4C56E914.2080905@gmail.com>
References: <2dWFdr9kTFM.A.P0D.spXVMB@chimera>	<Aan7wZ97YaE.A.H2D.0pXVMB@chimera> <AANLkTikmgrKTLtgs1+h+BkS5X6qt9bP1wMDL4Gu7L3u3@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=w6k/0kFw2LteaCj7b1KhYxMI9Ii8wyoMaxHYlViIkX4=;
        b=NNkj8Zn/ooVmBJ27+svuLwrby42BlQ42EpMM5/r8ewoUIyiKScq7DV7Wx3xPiFj+8r
         2uDv3xXH9aZyYC7Fp7FJ88XNLMfSGHv3iiPhNg6zqQRFIqelAmfJYfn7QM99yVjugHP2
         85hRJJuz/ZOdGVCdBKapDpDLThb7i82uFDxqU=
In-Reply-To: <AANLkTikmgrKTLtgs1+h+BkS5X6qt9bP1wMDL4Gu7L3u3-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Daniel J Blueman <daniel.blueman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On 08/02/2010 07:58 AM, Daniel J Blueman wrote:
> On 1 August 2010 14:52, Rafael J. Wysocki<rjw-KKrjLPT3xs0@public.gmane.org>  wrote:
>> This message has been generated automatically as a part of a summary report
>> of recent regressions.
>>
>> The following bug entry is on the current list of known regressions
>> from 2.6.34.  Please verify if it still should be listed and let the tracking team
>> know (either way).
>>
>> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=16462
>> Subject         : unable to connect to AP on legal channels 12/13
>> Submitter       : Daniel J Blueman<daniel.blueman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> Date            : 2010-07-25 17:06 (8 days old)
>
> Yes, I just managed to reproduce this with 2.6.35-final, and will
> update the bugzilla entry with the wire-capture needed.


ahh.. cool.. lets get this bug fixed...

Justin P. Mattock
