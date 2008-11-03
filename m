From: "Tomas Winkler" <tomasw-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11845] Suspend regression on Lenovo x60
Date: Mon, 3 Nov 2008 11:04:29 +0200
Message-ID: <1ba2fa240811030104w3ebc3acfs2e1a135457a1bade@mail.gmail.com>
References: <603i_OdVYPF.A.7_D.mjeDJB@chimera>
	 <wOAXuecskPD.A.3LH.0keDJB@chimera>
	 <20081102220758.GA14374@localhost.aei.mpg.de>
	 <200811030055.22645.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=Fd9u/ZWbm4xuOqmeqCwFufMm4C5bxvOqFApA9fVhD5c=;
        b=w9FiodIKwId2M1WDpvvJ8Z7cjVJ+H/ub/ILgNv0npALiJb5E278CRlAwE6rgmOYVcr
         +TMTDND95YRkfH3r2PuAp55NuSl64wR4r/HqQZKf4hSGvh9X5sUm1WW9Cnz5j/QDno8w
         at0X5R0VZC8Gu1CMvSbzrm5TfsTSba72AXomI=
In-Reply-To: <200811030055.22645.rjw-KKrjLPT3xs0@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: "Carlos R. Mafra" <crmafra2-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>

On Mon, Nov 3, 2008 at 1:55 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> On Sunday, 2 of November 2008, Carlos R. Mafra wrote:
>> On Sun  2.Nov'08 at 17:07:01 +0100, Rafael J. Wysocki wrote:
>> > This message has been generated automatically as a part of a report
>> > of recent regressions.
>> >
>> > The following bug entry is on the current list of known regressions
>> > from 2.6.27.  Please verify if it still should be listed and let me know
>> > (either way).
>> >
>> >
>> > Bug-Entry   : http://bugzilla.kernel.org/show_bug.cgi?id=11845
>> > Subject             : Suspend regression on Lenovo x60
>> > Submitter   : Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
>> > Date                : 2008-10-24 18:02 (10 days old)
>> > References  : http://marc.info/?l=linux-next&m=122487159829507&w=4
>> >               http://marc.info/?l=linux-kernel&m=122512449714310&w=4
>> > Handled-By  : Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
>> >               Tomas Winkler <tomasw-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> > Patch               : http://marc.info/?l=linux-kernel&m=122513311900482&w=4
>> >               http://marc.info/?l=linux-wireless&m=122518625308673&w=4
>>
>> It is fixed by commit 10d0bd56966571d0324dfd9bbb8aa913a60bef5f which
>> is now in Linus' tree.
>
> Thanks, closed.

Is this queued  also for 2.6.27 stable ? My email was bounced back
I've used linux-stable-4mT8j8lBKmdzeIdxy0IIJw@public.gmane.org
Thanks
Tomas
