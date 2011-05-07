From: Peter Teoh <htmldeveloper-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #33272] drm related hard-hang
Date: Sun, 8 May 2011 01:20:04 +0800
Message-ID: <BANLkTik+MP-9Ez20KvArV-MRZRPai+fPJQ@mail.gmail.com>
References: <Xp4OiTz83N.A.O0D.JVGvNB@chimera>
	<G9uL1cldhmL.A.O0E.HWGvNB@chimera>
	<BANLkTi=jZnpzz2TA4d-370msGhg=M7iHzQ@mail.gmail.com>
	<201105020056.05124.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=9ErybuepU940bVzd14emOsPzPHw93tffQrPOgBDOOb4=;
        b=iw8LLIORm630AwjFpmw6mxcN8MAU0LI7vqB7+WwGOV8cC/vEMCVEqEW9XlEeHzRGK5
         pujFWS7hEbkHbowOooD//ZcccYgcYBRAFUk5Q8hZlRstdE3MELFcCKAlAy8W0XPebN0o
         gLAX4uC++dSqgJ5PS5NLPGtHAfeLFaugvXQZw=
In-Reply-To: <201105020056.05124.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

I did an update (2.6.39-rc6+) today and the system seemed very stable,
all previously reported bugs i have has all disappeared.   i tested it
with Chrome browser usage heavily, and kernel tracing with systemtap
and all seemed very stable.   Thanks.


2011/5/2 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
> On Sunday, May 01, 2011, Peter Teoh wrote:
>> sorry, i did a git-update to 2.6.39-rc4 and it failed for me (hard hanged
>> too) in other ways:
>>
>> https://bugzilla.kernel.org/show_bug.cgi?id=34182
>>
>> so i have not been able to test this, but definitely 2.6.39-rc3 is not
>> working as far as Intel DRM is concerned.
>
> Thanks for the update.
>
> Rafael
>



-- 
Regards,
Peter Teoh
