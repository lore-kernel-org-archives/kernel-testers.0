From: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Subject: Re: eeepc-linux, how to enable on eeepc 1005ha?
Date: Wed, 11 Nov 2009 12:53:17 +0100
Message-ID: <1257940397.2913.6.camel@mini>
References: <1257936622.3611.6.camel@mini>
	 <71cd59b00911110332i9b45e48y82e763265bccad32@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <71cd59b00911110332i9b45e48y82e763265bccad32-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Corentin Chary <corentin.chary-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Len Brown <len.brown-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

Am Mittwoch, den 11.11.2009, 12:32 +0100 schrieb Corentin Chary:
> On Wed, Nov 11, 2009 at 11:50 AM, Alexey Fisher
> <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org> wrote:
> > Hi Len, hi Corentin
> > I currently have a problem to enable eeepc-laptop module an my eeepc
> > 1005ha netbook. Probably some module is missing, or just u bug.
> >
> > dmesg do not say anything about it and modproble fail with message "No
> > such device". Any idea what is missing?
> Hi,
> This is probably related to http://dev.iksaif.net/issues/13
> You  can try  to use these patchs:
> http://dev.iksaif.net/attachments/86/0029-acpi-blacklist-add-disable_win7-callback.patch
> http://dev.iksaif.net/attachments/87/0030-acpi-blacklist-disable-win7-for-Eeepc-1000h.patch
> 
> Or boot with acpi_osi="!Windows 2009"
> 
> The patchs will be send soon to acpi-linux
> 
acpi_osi="!Windows 2009" do not working. Hmmm... there is no osi 2009 in
my dsdt, only 2000-2006, All of them are same, only osy="Windows 2000"
do some thing other but i think it is not the point.
I'll do some printk and send you result.

Regards,
Alexey

