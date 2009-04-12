From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Re: Regression: EEE PC hangs when booting off battery
Date: Sun, 12 Apr 2009 10:00:30 +0100
Message-ID: <49E1ADAE.2030103@tuffmail.co.uk>
References: <49E065CF.6040408@tuffmail.co.uk> <66dc75180904111107q645fbb77i3cf927ffab7a7ef0@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=f829IvGkA2QooXoPH098+eWapNdNJZpGyKR2qGA5Bbw=;
        b=gdzLjBJuLvr2WqhdvSB5COfiLHcIdlVGoxjkEOlUQRaMW2vu+uMjQtYAlCCCa0T3KP
         luJApugzss6A7hED/MDc4FfHJ+r9Jwk3bUCmYStwbpnWXXtky4ktdD7I0CTPeZY1Ar/x
         8bvr0YezLcZHhTwdQ0GQyeleN8I2ebSh9umOQ=
In-Reply-To: <66dc75180904111107q645fbb77i3cf927ffab7a7ef0-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Tzy-Jye Daniel Lin <ephemient-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-acpi-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Tzy-Jye Daniel Lin wrote:
> On Sat, Apr 11, 2009 at 5:41 AM, Alan Jenkins
> <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org> wrote:
>   
>> Regression #6 on latest git! (last known good is 2.6.29-rc8)
>>
>> Magic SysRQ keys work though.  Unfortunately, SysRq-W / SysRq-T generate
>> too much output, so the useful bits immediately scroll off the top of
>> the screen.  I can't press SysRq-P (even if that would help), because
>> the SysRQ key on my laptop is accessed using a Fn modifier key, which
>> also turns the left hand side of the keyboard into a numeric pad.
>>     
>
> I don't own an Eee, but having played with one, the key sequence
>
>     Alt down
>     Fn down
>     SysRq down, up
>     Fn up
>     P down, up
>     Alt up
>
> should work just fine.  As long as you keep holding Alt, you don't
> need to continue holding SysRq after the initial keypress.
>
>   
>> Magic SysRQs on my USB keyboard generate no response.  (Sometimes the
>> numlock key seems to work though.  I can't tell on the laptop keyboard
>> because the laptop doesn't have a numlock led).
>>     
>
> SysRq over USB has never worked.  On PC hardware, Magic SysRq depends
> on features of the built-in i8042 controller, which only handles PS/2
> input.
>   
Great, thanks a lot!

I was able to run SysRq-P, and found the following backtrace -

Pid: 0
EIP is at acpi_idle_enter_bm+0x1df/0x208 [processor]
cpud_idle_call
cpu_idle
rest_init
start_kernel
i386_start_kernel

