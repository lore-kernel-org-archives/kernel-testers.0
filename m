From: Jiri Slaby <jirislaby-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12908] acpi_ex_extract_from_field -- div by zero
Date: Tue, 07 Apr 2009 13:03:10 +0200
Message-ID: <49DB32EE.4050309@gmail.com>
References: <n4io5wq70ZO.A.gzG.rFn2JB@chimera> <AsKNxFx2juN.A.l9H.UGn2JB@chimera> <alpine.LFD.2.00.0904070008140.5698@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=Yu7uYxdyCU8pF2+Ijv9uTo24lvwU9dJapxrZOJNePAY=;
        b=r09o9kY7UjwzLpRAUDTh1PhTQ0oydhkGlyjci0R0pzDv3wcNPCbKFVZkYcEzoEzgsD
         4iY2yFl43Nmnc6PlLyaopcTwe8KvKbUz+kVxTaGI9q9J2YoePvufN0/+rHrJkPpI0qLd
         NUzH0hriZF+ZiVU2KQwYmMPOyAVoKi44bhk9Q=
In-Reply-To: <alpine.LFD.2.00.0904070008140.5698-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Len Brown <lenb-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On 04/07/2009 06:09 AM, Len Brown wrote:
> On Mon, 6 Apr 2009, Rafael J. Wysocki wrote:
> 
>> This message has been generated automatically as a part of a report
>> of recent regressions.
>>
>> The following bug entry is on the current list of known regressions
>> from 2.6.28.  Please verify if it still should be listed and let me know
>> (either way).
>>
>>
>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12908
>> Subject		: acpi_ex_extract_from_field -- div by zero
>> Submitter	: Jiri Slaby <jirislaby-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> Date		: 2009-03-15 10:47 (23 days old)
>> References	: http://marc.info/?l=linux-kernel&m=123711408225013&w=4
>> Handled-By	: Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> 
> This is unreproducible and now marked closed.

s/un/hardly /. As I wrote earlier this usually happens after few days
being off which makes it peculiar.

> The theory is that somebody (else:-) scribbled on random kernel memory...

Might be, this will probably be hard to catch :/.

Or even a HW malfunction...
