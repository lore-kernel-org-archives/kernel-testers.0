From: "Peter Teoh" <htmldeveloper-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.26-rc1 ata2 problems????
Date: Sat, 24 May 2008 23:45:24 +0800
Message-ID: <804dabb00805240845t4424d515s5de01154a98fa972@mail.gmail.com>
References: <804dabb00805232324r47745c86v9fa941cb9f3fcb5d@mail.gmail.com>
	 <20080524094014.71ec6f87@bree.surriel.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        bh=nFKORcxvplKQGk3lAbdTT7HAJf1wQtJ8MkmaZbxu6TE=;
        b=UZaVW4LaS821HEy/5vxJH5axkm1TR8r6IhaZUHLGpUXR+0mZieAr5uxN+d5LUZxQhGl1ls/yz0ZTza8k3Tp8mzQBV+WXSScS71Un7MLIU9lXDJ04PkZY7s1LpWuiMsc9IlvLmhzoa7f4mgHGaq4Sbeb6U4EATsdwYzasI1Sdcc0=
In-Reply-To: <20080524094014.71ec6f87-Fuq27k0DHcCSkoNiqTzCLQ@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rik van Riel <riel-ebMLmSuQjDVBDgjK7y7TUQ@public.gmane.org>
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernelnewbies <kernelnewbies-qDhp9YYfzQpg9hUCZPvPmw@public.gmane.org>

Thank you Rik for the answer......just want to confirm some questions...

On Sat, May 24, 2008 at 9:40 PM, Rik van Riel <riel-ebMLmSuQjDVBDgjK7y7TUQ@public.gmane.org> wrote:
> On Sat, 24 May 2008 14:24:47 +0800
> "Peter Teoh" <htmldeveloper-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>
>> Just found this error in the dmesg:
>>
>>
>> ata2.00: qc timeout (cmd 0xa0)
>> ata2.00: exception Emask 0x0 SAct 0x0 SErr 0x0 action 0x6 frozen
>> ata2.00: cmd a0/00:00:00:08:00/00:00:00:00:00/a0 tag 0 pio 16392 in
>>          cdb 4a 01 00 00 10 00 00 00  08 00 00 00 00 00 00 00
>>          res 51/04:01:01:14:eb/00:00:00:00:00/a0 Emask 0x5 (timeout)
>> ata2.00: status: { DRDY ERR }
>
>> Any clues to these messages?
>
> Try smartctl -d ata -a /dev/sdc and look for errors on the disk.
>
> Chances are the disk is going bad in one way or another.  In the
> most benign way you are getting timeouts because the drive cannot
> read a sector easily and keeps retrying over and over again.
>
> In that case, you may be able to force the disk to rewrite the
> sectors properly (and/or relocate them) with a badblocks -n run
> over the whole drive - when booted from a rescue disk!
>
> If your luck is not as good, the drive may have some uncorrectable
> errors, which means it is going bad and you'll want to buy a new
> disk to copy all your data onto.
>
> While you're looking at the smart data anyway, check the drive
> temperature - is it simply running too hot because of sitting
> near other equipment in your case?


Just out of curiosity.....when OS build the list of inodes....it scan
and identify all the corrupted blocks, and so the outcome of mkfs will
be all the uncorrupted blocks on the harddisk - right?   so possibly
there are many other corrupted blocks on the harddisk that failed the
criteria of mkfs on the harddisk - any linux harddisk....is that
correct?

Is there any tools that can allow me to see / identify all these
corrupted blocks?

And given that there are many corrupted blocks, when I do a mkfs to
create a new filesystem, all the corrupted blocks will be marked away,
and therefore the new filesystem should have less total space, but
guaranteed NOT TO HAVE any corrupted blocks, right?

Thank you Rik.


-- 
Regards,
Peter Teoh
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
