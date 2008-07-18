From: "Fabio Comolli" <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #10724] ACPI: EC: GPE storm detected, disabling EC GPE
Date: Fri, 18 Jul 2008 11:17:31 +0200
Message-ID: <b637ec0b0807180217n3b16bcb9wce81161c2c539d7f@mail.gmail.com>
References: <Y1jK9GMA8kJ.A.qOH.7GleIB@albercik>
	 <c6ZRbn0adb.A.LgB.aKleIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=t6UtS64hPGv/TVfMjmAL+2XLjhwpl5G6lg+DrfLF188=;
        b=HIJr/YayTWobGiQo7tqC2CANDdTC/bK/UkO4MrVqRNoMAGMq3OW+mqRGYLFIG6XsAg
         qJDYRQuZLIifeMdx0p/l6piQTWTBkRS0+ZHZ9GDFF+dQtmlgqg7arq6ze1xo9diDp4Ut
         FLCfZPF+Mrw25cKY4S97ZihanRVEDlYrDGalw=
In-Reply-To: <c6ZRbn0adb.A.LgB.aKleIB@albercik>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alexey Starikovskiy <astarikovskiy-l3A5Bk7waGM@public.gmane.org>, Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

Hi.
I also have this problem with 2.6.26 and when it happens I can notice
that sometimes gnome-power-manager is slow to respond when I switch to
AC from battery and viceversa. Also, sometimes the g-p-m icon
disappears and I have to restart the process.

I tried two days ago the patch

   http://bugzilla.kernel.org/attachment.cgi?id=16365&action=view

and everything seems to work ok since then. Before that, the message
showed up sometimes at boot time, sometimes minutes later, very
reliably.

This is with a two years old fairly standard HP laptop.

Regards,
Fabio



On Sun, Jul 13, 2008 at 8:00 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.25.  Please verify if it still should be listed.
>
>
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=10724
> Subject         : ACPI: EC: GPE storm detected, disabling EC GPE
> Submitter       : Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date            : 2008-05-16 6:17 (59 days old)
> References      : http://marc.info/?l=linux-kernel&m=121091875711824&w=4
>                  http://lkml.org/lkml/2008/5/18/168
>                  http://lkml.org/lkml/2008/5/25/195
> Patch           : http://bugzilla.kernel.org/attachment.cgi?id=16364&action=view
>                  http://bugzilla.kernel.org/attachment.cgi?id=16365&action=view
>
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/
>
