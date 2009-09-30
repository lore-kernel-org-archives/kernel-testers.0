From: Jan Scholz <scholz-wOpdxP1gw6Cc+IqHO83+wjjhTm2NLCe8@public.gmane.org>
Subject: Re: [Bug #13935] 2.6.31-rcX breaks Apple MightyMouse (Bluetooth version)
Date: Wed, 30 Sep 2009 15:21:03 +0200
Message-ID: <878wfwwou8.fsf@scholz.fias.uni-frankfurt.de>
References: <AuPdDySr74O.A.5LC.Pj1fKB@chimera>
	<u1L1PAbl8zG.A.eKD.hj1fKB@chimera>
	<87hbwewlk4.fsf@scholz.fias.uni-frankfurt.de>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <87hbwewlk4.fsf-X87fCqEI3snt2/fatF9ZgSk+o5UQzIjPIRYYPiSvRdM@public.gmane.org> (Jan Scholz's
	message of "Tue, 11 Aug 2009 15:02:19 +0200")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jan Scholz <scholz-wOpdxP1gw6Cc+IqHO83+wjjhTm2NLCe8@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Ulrich <kernel-4ZM2p5qjiQGewZBzVTKGGg@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>

Hi,

now that the patch "HID: completely remove apple mightymouse from
blacklist" is merged upstream as
"42960a13001aa6df52ca9952ce996f94a744ea65" I think it should be merged
in the v2.6.31-stable series as well.

Best regards,
   Jan

Jan Scholz <scholz-wOpdxP1gw6Cc+IqHO83+wjjhTm2NLCe8@public.gmane.org> writes:

> I can confirm the reported bug, but for me reverting fa047e4f6fa63a6 is
> not sufficient. I have to remove the device id of the mighty mouse from
> the hid_blacklist list in drivers/hid/hid-core.c as well, see the patch below.
>
> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> writes:
>
>> This message has been generated automatically as a part of a report
>> of recent regressions.
>>
>> The following bug entry is on the current list of known regressions
>> from 2.6.30.  Please verify if it still should be listed and let me know
>> (either way).
>>
>>
>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13935
>> Subject		: 2.6.31-rcX breaks Apple MightyMouse (Bluetooth version)
>> Submitter	: Adrian Ulrich <kernel-4ZM2p5qjiQGewZBzVTKGGg@public.gmane.org>
>> Date		: 2009-08-08 22:08 (2 days old)
>> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=fa047e4f6fa63a6e9d0ae4d7749538830d14a343
>>
>
> From b7393ed6dfe00c9e126a2dd34659156548df15cc Mon Sep 17 00:00:00 2001
> From: Jan Scholz <Scholz-wOpdxP1gw6Cc+IqHO83+wjjhTm2NLCe8@public.gmane.org>
> Date: Tue, 11 Aug 2009 14:33:27 +0200
> Subject: [PATCH] HID: commit fa047e4f is incomplete
>
> Commit fa047e4f6fa63a6e9d0ae4d7749538830d14a343 "HID: fix inverted
> wheel for bluetooth version of apple mighty mouse" is incomplete. If
> we remove Apple MightyMouse (bluetooth version) from the list of
> apple_devices in drivers/hid/hid-apple.c we have to remove it from
> hid_blacklist in drivers/hid/hid-core.c as well.
>
> Signed-off-by: Jan Scholz <Scholz-wOpdxP1gw6Cc+IqHO83+wjjhTm2NLCe8@public.gmane.org>
> ---
>  drivers/hid/hid-core.c |    1 -
>  1 files changed, 0 insertions(+), 1 deletions(-)
>
> diff --git a/drivers/hid/hid-core.c b/drivers/hid/hid-core.c
> index 5eb10c2..047844d 100644
> --- a/drivers/hid/hid-core.c
> +++ b/drivers/hid/hid-core.c
> @@ -1319,7 +1319,6 @@ static const struct hid_device_id hid_blacklist[] = {
>  	{ HID_USB_DEVICE(USB_VENDOR_ID_ZEROPLUS, 0x0005) },
>  	{ HID_USB_DEVICE(USB_VENDOR_ID_ZEROPLUS, 0x0030) },
>  
> -	{ HID_BLUETOOTH_DEVICE(USB_VENDOR_ID_APPLE, 0x030c) },
>  	{ HID_BLUETOOTH_DEVICE(USB_VENDOR_ID_MICROSOFT, USB_DEVICE_ID_MS_PRESENTER_8K_BT) },
>  	{ }
>  };
