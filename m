From: Rui Santos <rsantos-TSnNRl9vlf1Wk0Htik3J/w@public.gmane.org>
Subject: Re: [WATCHDOG] iTCO_wdt.c - ICH9 reboot issue - testing wanted
Date: Mon, 15 Jun 2009 20:58:37 +0100
Message-ID: <4A36A7ED.2050702@grupopie.com>
References: <20090430094918.GC4141@infomag.iguana.be> <4A2967F6.2000303@grupopie.com> <20090610081845.GH16090@infomag.iguana.be>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090610081845.GH16090-flHiHfN8CTwhDM6iD19NGrNAH6kLmebB@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Wim Van Sebroeck <wim-IQzOog9fTRqzQB+pC5nmwQ@public.gmane.org>
Cc: Stephen Clark <sclark46-ihVZJaRskl1bRRN4PJnoQQ@public.gmane.org>, Denys Fedoryschenko <denys-EpTYZhqHKuJnTudFRACr3A@public.gmane.org>, Johannes Dewender <arch-ArHZ4xy2k9XR7s880joybQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Rutger Nijlunsing <bugzilla.kernel-iCbNM5W9OABowPkYzbXIcw@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andriy Gapon <avg-+43SdJ71VxTsG83rWm+8vg@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Wim Van Sebroeck wrote:
> Hi Rui,
>   

Hi Wim,

>   
>> With your patch, the Intel DG35EC board will not allow my distribution
>> reboot or halt the machine. In order to circumvent that problem, I've
>> made a few addition to your previous patch witch allows the restore of
>> the changed Bit 0 to it's previous value if the module is unloaded.
>> My only doubt is if it should be done every time the gbl_smi_en is zero,
>> or in conjunction with nowayout when the value also equals zero. This
>> patch has what I described and a commented gbl_smi_en only.
>>     
>
> Forget the previous patch. I don't like having this hack in the main iTCO_wdt code.
> So I added it to the iTCO_vendor_support code with the necessary warnings.
> Can you test this (please note that the iTCO_vendor_support module needs to be
> loaded with the vendorsupport=911 module parameter).
>   

It's working like a charm. Also, the Bit 0 is changed to its original
value, so all reboots work.
I've tested on 2.6.30 and 2.6.27 ( with a few mods... ).

> Thanks in advance,
>   

Thank you,

> Wim.
>   

Rui
