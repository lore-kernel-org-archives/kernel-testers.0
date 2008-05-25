From: "Peter Teoh" <htmldeveloper-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.26-rc1 ata2 problems????
Date: Sun, 25 May 2008 16:29:58 +0800
Message-ID: <804dabb00805250129x38e7c4c8t6bf52659c664bce5@mail.gmail.com>
References: <804dabb00805232324r47745c86v9fa941cb9f3fcb5d@mail.gmail.com>
	 <20080524094014.71ec6f87@bree.surriel.com>
	 <804dabb00805240845t4424d515s5de01154a98fa972@mail.gmail.com>
	 <20080524121515.4f3d8f3a@bree.surriel.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        bh=EoYu2AuAJTPX6zPSRyyH83WM065tesOxS063RLLtuCE=;
        b=a/Nai6dOmdVW80Z+IDSS/t1Jbqn9R+Z/Z/+NHCR5ycD6Y3vT8Uyrmp2e8Wme+4+Sa/OQYZyWy2m/o2aTG4d4RGMi5LJvJnVAn4s6mtgHFXgbY/3giTBNTXr6CqwJi/PlZdRj0uBq1/HXZ0lK3NxcpOFjOEd25QFxiBQRTW7M4AU=
In-Reply-To: <20080524121515.4f3d8f3a-Fuq27k0DHcCSkoNiqTzCLQ@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rik van Riel <riel-ebMLmSuQjDVBDgjK7y7TUQ@public.gmane.org>
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernelnewbies <kernelnewbies-qDhp9YYfzQpg9hUCZPvPmw@public.gmane.org>

Thank you Rik...

On Sun, May 25, 2008 at 12:15 AM, Rik van Riel <riel-ebMLmSuQjDVBDgjK7y7TUQ@public.gmane.org> wrote:
> On Sat, 24 May 2008 23:45:24 +0800
> "Peter Teoh" <htmldeveloper-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>
>> Just out of curiosity.....when OS build the list of inodes....it scan
>> and identify all the corrupted blocks, and so the outcome of mkfs will
>> be all the uncorrupted blocks on the harddisk - right?
>
> No, mkfs just writes and hopes that the blocks it wrote
> can be read in again later. I do not believe it does any
> testing by default.
>

thank you for the summary....i am looking for codes that does
that.....but got no time to read/understand everything of mkfs......

>> so possibly there are many other corrupted blocks on the harddisk
>
> Yes.
>
>> Is there any tools that can allow me to see / identify all these
>> corrupted blocks?
>
> badblocks
>

wow...this is amazing.....part of e2fs....found my answer...and really
got to start understanding the e2fs package....

> Read the man page carefully, you probably want the "-n" option.
>
>> And given that there are many corrupted blocks, when I do a mkfs to
>> create a new filesystem, all the corrupted blocks will be marked away,
>> and therefore the new filesystem should have less total space, but
>> guaranteed NOT TO HAVE any corrupted blocks, right?
>
> No, mkfs does not scan the disk for bad blocks by default.
>
> --
> All rights reversed.
>

i always find this amusing....it means that I will be paid if I copied
your ideas....or I have to pay you in order that u can copy my
ideas....


-- 
Regards,
Peter Teoh
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
