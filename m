From: Jaswinder Singh Rajput <jaswinderlinux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: hdb: status error: error=0x40 <3>{ UncorrectableError }
Date: Mon, 26 Jan 2009 02:40:42 +0530
Message-ID: <3f9a31f40901251310g38ecfe61t97e119533215d271@mail.gmail.com>
References: <3f9a31f40901251239k3e368feeib33661d82497725b@mail.gmail.com>
	 <20090125204603.2ccb5169@lxorguk.ukuu.org.uk> <497CD30D.80203@tmr.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=4LNeTKTzXywKwOukS6jC3chuUE4OSVkm8eP7T0GOzpY=;
        b=iSO9tEsLMUzZc3gkENhSd+G2aEnBkKbsylHBBv4a8F+OqnJZs0fJFZJvnoBulSdI/R
         7nyAvMExc3qbab3tMdzowyiwAALsDbSik1NLKX1BpKJ7HDmWAVhOW4DzrfIYPU43nRZ6
         LIi6kVKa0zf6t/wczoSeYyen8gcu6vMWlVL1U=
In-Reply-To: <497CD30D.80203-sQDSfeB7uhw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Bill Davidsen <davidsen-sQDSfeB7uhw@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, James Bottomley <James.Bottomley-JuX6DAaQMKPCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>, Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>

On Mon, Jan 26, 2009 at 2:31 AM, Bill Davidsen <davidsen-sQDSfeB7uhw@public.gmane.org> wrote:
>
>
> Alan Cox wrote:
>>
>> On Mon, 26 Jan 2009 02:09:56 +0530
>> Jaswinder Singh Rajput
>> <jaswinderlinux-Re5JQEeQqe8AvxtiuMwx3w-XMD5yJDbdMReXY1tMh2IBg@public.gmane.org> wrote:
>>
>>> Hello all,
>>>
>>> I added extra IDE drive I get similar messages like below so I replace
>>> it another drive but I am still getting similar error messages on
>>> 2.6.29-rc2-tip:
>>>
>>> hdb: status error: status=0x59 { DriveReady SeekComplete DataRequest
>>> Error }
>>> hdb: status error: error=0x40 <3>{ UncorrectableError },
>>> LBAsect=208845, sector=0
>>
>> Uncorrectable Error is an error from the drive, not the kernel. Looks
>> like you have bad sectors on that drive.
>>
> He noted that he tried another drive, so unless he has a pile of bad drives
> it's probably something else. Being "hdb" may indicate that it's connected
> to the same controller as "hda" and might not be jumpered for slave. Or it
> might be a bad cable, a controller which doesn't like two drives, a dubious
> power connector, etc. Or if he doesn't have an hda, perhaps the kernel
> doesn't like a secondary drive without a primary.
>
> Being hdb instead of sdb with a new kernel indicates he is using a config
> which may get a lot less testing these days, perhaps?
>
> In any case, I doubt he had two bad drives, so something else is more
> likely.
>

But earlier both was working fine on some another machines.

--
JSR
