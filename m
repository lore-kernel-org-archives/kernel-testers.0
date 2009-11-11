From: Corentin Chary <corentin.chary-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: eeepc-linux, how to enable on eeepc 1005ha?
Date: Wed, 11 Nov 2009 14:37:27 +0100
Message-ID: <71cd59b00911110537v3f030a1bh60ee831469aacd82@mail.gmail.com>
References: <1257936622.3611.6.camel@mini>
	 <71cd59b00911110332i9b45e48y82e763265bccad32@mail.gmail.com>
	 <1257940397.2913.6.camel@mini> <1257943805.13582.1.camel@zwerg>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=rsW4Pr1B5SCVwi5F9Igy3OL6yrg5Qn2gQLBKh/KY4so=;
        b=Lt1PUXR8rp5WYr3ynUp6rbkbCL5+DPbmjdFfv4DELpt8NN1DOI4CyQkDLVq6BTlc3U
         zWQJSI6BHpRLk3liv+zNrUT386U3veVk91rCW7wmjgRs3hj7xs/cNfLmDR/LanLLhQQ7
         3Hyryf9d451Qwh3xWBN0b3orLZpI6qSmRd/oA=
In-Reply-To: <1257943805.13582.1.camel@zwerg>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Len Brown <len.brown-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Wed, Nov 11, 2009 at 1:50 PM, Alexey Fisher
<bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org> wrote:
> Am Mittwoch, den 11.11.2009, 12:53 +0100 schrieb Alexey Fisher:
>> Am Mittwoch, den 11.11.2009, 12:32 +0100 schrieb Corentin Chary:
>> > On Wed, Nov 11, 2009 at 11:50 AM, Alexey Fisher
>> > <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org> wrote:
>> > > Hi Len, hi Corentin
>> > > I currently have a problem to enable eeepc-laptop module an my e=
eepc
>> > > 1005ha netbook. Probably some module is missing, or just u bug.
>> > >
>> > > dmesg do not say anything about it and modproble fail with messa=
ge "No
>> > > such device". Any idea what is missing?
>> > Hi,
>> > This is probably related to http://dev.iksaif.net/issues/13
>> > You =A0can try =A0to use these patchs:
>> > http://dev.iksaif.net/attachments/86/0029-acpi-blacklist-add-disab=
le_win7-callback.patch
>> > http://dev.iksaif.net/attachments/87/0030-acpi-blacklist-disable-w=
in7-for-Eeepc-1000h.patch
>> >
>> > Or boot with acpi_osi=3D"!Windows 2009"
>> >
>> > The patchs will be send soon to acpi-linux
>> >
>> acpi_osi=3D"!Windows 2009" do not working. Hmmm... there is no osi 2=
009 in
>> my dsdt, only 2000-2006, All of them are same, only osy=3D"Windows 2=
000"
>> do some thing other but i think it is not the point.
>> I'll do some printk and send you result.
>
> It's filed here:
> static int __init eeepc_laptop_init(void)
> ...
> =A0 =A0 =A0if (!ehotk) {
> =A0 =A0 =A0 =A0 =A0 =A0 =A0printk("test 3\n");
> =A0 =A0 =A0 =A0 =A0 =A0 =A0acpi_bus_unregister_driver(&eeepc_hotk_dri=
ver);
> =A0 =A0 =A0 =A0 =A0 =A0 =A0return -ENODEV;
> =A0 =A0 =A0}
>
> hmm.... do i forgot to enable some module?
>
>
>


Nop, could you send me your dsdt ?
Thanks

--=20
Corentin Chary
http://xf.iksaif.net
