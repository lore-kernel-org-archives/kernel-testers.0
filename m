From: "Justin Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #10954] hda_intel: azx_get_response timeout, switching to polling mode: last cmd=0x011f000c
Date: Mon, 14 Jul 2008 01:04:56 +0000
Message-ID: <dd18b0c30807131804g6b5b9a5by4468eef8c310cab5@mail.gmail.com>
References: <Y1jK9GMA8kJ.A.qOH.7GleIB@albercik>
	 <c6ZRbn0adb.A.si.HIleIB@albercik>
	 <15207.1215996628@turing-police.cc.vt.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=2yqUDKyzXcruIlG+BRvbANgRF2wdvkheFKdxVeCkI2s=;
        b=MCTCaElDsktLqIZu+ajAWXgKj8LU5bnJAs/Thlw6dBv2e/hwktzKLFsASIlaxJEqpK
         kSyDroFBBqzCgh7++dCTqVX5wwohIZDCjqQjFatYb2cpv8QmWkgi6IUHu1rxuzZuvR3l
         ovDxR6jzHIwdznq4NEGJzIB3DrwXtM4EoiQbc=
In-Reply-To: <15207.1215996628-+bZmOdGhbsPr6rcHtW+onFJE71vCis6O@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Valdis.Kletnieks-PjAqaU27lzQ@public.gmane.org
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Mon, Jul 14, 2008 at 12:50 AM,  <Valdis.Kletnieks-PjAqaU27lzQ@public.gmane.org> wrote:
> On Sun, 13 Jul 2008 20:00:46 +0200, "Rafael J. Wysocki" said:
>> This message has been generated automatically as a part of a report
>> of recent regressions.
>>
>> The following bug entry is on the current list of known regressions
>> from 2.6.25.  Please verify if it still should be listed.
>>
>>
>> Bug-Entry     : http://bugzilla.kernel.org/show_bug.cgi?id=10954
>> Subject               : hda_intel: azx_get_response timeout, switching to polling mode: last cmd=0x011f000c
>> Submitter     : Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> Date          : 2008-06-21 2:05 (23 days old)
>> References    : http://marc.info/?l=linux-kernel&m=121401399622190&w=4
>>                 http://marc.info/?t=121416231700010&r=1&w=4
>
> Not sure if it's the same bug or not, this one's been there since before
> 2.6.25 but I haven't bothered chasing it down before. It's still in 26-rc9-mmotd.
>
> Jul 13 05:53:47 turing-police kernel: [ 1459.168266] ALSA sound/pci/hda/hda_intel.c:588: hda_intel: No response from codec, disabling MSI: last cmd=0x012f1c00
> Jul 13 05:53:48 turing-police kernel: [ 1460.169265] ALSA sound/pci/hda/hda_intel.c:601: hda_intel: azx_get_response timeout, switching to polling mode: last cmd=0x012f1c00
>
> Dell Latitude D820, x86_64 kernel.  Audio device is:
>
> 00:1b.0 Audio device: Intel Corporation 82801G (ICH7 Family) High Definition Audio Controller (rev 01)
>
> dmidecode says it's a "Sigmatel 9200".
>
> I've been lazy chasing this one, because all that happens is that MSI gets
> turned off, and it keeps going without it...
>

Could be.
Yeah I must admit too about being lazy with this one;
(spent a few days updating my system with SID);
With Googling a little bit, isn't msi disabled by default?
if not then maybe setting the boot param is something to look into,
as well as tweaking the .config.

-- 
Justin P. Mattock
