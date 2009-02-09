From: Dave Airlie <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12613] [Suspend regression][DRM, RADEON]
Date: Mon, 9 Feb 2009 12:26:18 +1000
Message-ID: <21d7e9970902081826r48777cb8s8c4e882a02575c71@mail.gmail.com>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera>
	 <sWhNs83kKPE.A.HiF.r20jJB@chimera> <498F5785.3000009@numericable.fr>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=mP3rGEQCmno2Ai3G5GObCEwjdyii+hfr0XUDOf20drU=;
        b=oBh5Hu2zGiykGFpQ4fsK3M1vkZYBBAyHPZ3Bd5v0A7f11cDezjjBPbmTYk7GwnyvE0
         8FP0TQHA2WNZPMExYZVFP/rfDn6Frf6/Z4miaqE2g3Msq3LYvjfvYe9nMcaBNucGPr5O
         nWbXivqD2LNcsdRZbcILnnIeWrmgJJ53144NE=
In-Reply-To: <498F5785.3000009-Bf/eaXMDFuuXqB7oj33eUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: etienne <etienne.basset-Bf/eaXMDFuuXqB7oj33eUg@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dave Airlie <airlied-cv59FeDIM0c@public.gmane.org>, Dave Airlie <airlied-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Soeren Sonnenburg <kernel-YxZl4NRrHdw@public.gmane.org>

On Mon, Feb 9, 2009 at 8:07 AM, etienne <etienne.basset-Bf/eaXMDFuuXqB7oj33eUg@public.gmane.org> wrote:
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
>> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12613
>> Subject         : [Suspend regression][DRM, RADEON]
>> Submitter       : etienne <etienne.basset-Bf/eaXMDFuuXqB7oj33eUg@public.gmane.org>
>> Date            : 2009-01-28 22:00 (12 days old)
>> First-Bad-Commit:
>> http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=a9d51a5ad1154b5b20add1e8d30a5564f8aabbe9
>> References      : http://marc.info/?l=linux-kernel&m=123318030419558&w=4
>>                  http://marc.info/?l=linux-kernel&m=123334865404574&w=4
>>
>>
>>
>
> hello,
> yes it's still present in -rc4
> But I noticed that when I switch off KDE4.2 desktop effects, suspend to ram
> is 100% reliable with 2.6.29-rc4
> With 2.6.28, STR is 100% reliable with or without desktop effects
>

Hi Etienne,

Can you try commenting out the calls to the radeon_suspend and
radeon_resume hooks in radeon_drv.c?

Dave.

> hope this helps,
> Etienne
>
>
>
>
>
>
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/
>
