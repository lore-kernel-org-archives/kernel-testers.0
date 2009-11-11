From: Corentin Chary <corentin.chary-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: eeepc-linux, how to enable on eeepc 1005ha?
Date: Wed, 11 Nov 2009 12:32:39 +0100
Message-ID: <71cd59b00911110332i9b45e48y82e763265bccad32@mail.gmail.com>
References: <1257936622.3611.6.camel@mini>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type;
        bh=fFzdTkBE11fHge0ksjc3Dyo8lKC0E+sqcsFiR1y7Abw=;
        b=KsjDdKv+nTcSBkFaT5cL2fF56wX8lc64aymSTtcZLBIi3DZzWJp24i1/FLZwtjUbUM
         uwl4sO/se6fkjiH3hxWLNVS8hDq3SL5LYT+xIZGHZ6ptDKSDb9BlH0N4xKcI0+PynjaS
         PHLw3mmk6MoO2Rsuyy3agVSAN1OLxcAOmvrXA=
In-Reply-To: <1257936622.3611.6.camel@mini>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Len Brown <len.brown-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Wed, Nov 11, 2009 at 11:50 AM, Alexey Fisher
<bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org> wrote:
> Hi Len, hi Corentin
> I currently have a problem to enable eeepc-laptop module an my eeepc
> 1005ha netbook. Probably some module is missing, or just u bug.
>
> dmesg do not say anything about it and modproble fail with message "No
> such device". Any idea what is missing?
>
> Regards,
>
> Alexey
>
>
>
>

Hi,
This is probably related to http://dev.iksaif.net/issues/13
You  can try  to use these patchs:
http://dev.iksaif.net/attachments/86/0029-acpi-blacklist-add-disable_win7-callback.patch
http://dev.iksaif.net/attachments/87/0030-acpi-blacklist-disable-win7-for-Eeepc-1000h.patch

Or boot with acpi_osi="!Windows 2009"

The patchs will be send soon to acpi-linux

-- 
Corentin Chary
http://xf.iksaif.net
