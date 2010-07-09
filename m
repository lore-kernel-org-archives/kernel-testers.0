From: Andrew Hendry <andrew.hendry-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #16306] 2.6.35-rc3 BUG: unable to handle kernel NULL pointer 
	dereference at 0000000000000048 cifs_show_options
Date: Fri, 9 Jul 2010 11:03:23 +1000
Message-ID: <AANLkTikt1cJTq7_yYlISBYuAXlF2_X1mausSsr1j6l85@mail.gmail.com>
References: <-IGZ64uxA6G.A.P0H.bLmNMB@chimera>
	<TXb9XdQzJoD.A.DhB.SMmNMB@chimera>
	<20100708204945.01ca1236@corrin.poochiereds.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:in-reply-to
         :references:date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=e+XRnrVRqXC4ZMaIG9qzIGRfy/M1Ebm/SN1ZyiDKcyY=;
        b=jGSuWEVbrJP1M8gzVyH82MK88I4HoQSmgoPyZZCE3uagLsq1VMyev/qD/CiSSKz7u+
         HtuyZd4w1jMF5CbrYXgySnKem1T+qyI/NWAAlux/hm4aYPRF9SApswfBPk7hAYSFzSV+
         PDOApNIwlKcmlL7qpkca7aloWO7X/bGPT4N+A=
In-Reply-To: <20100708204945.01ca1236-4QP7MXygkU+dMjc06nkz3ljfA9RmPOcC@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Jeff Layton <jlayton-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

It might not be a regression, and so far i haven't been able to reprodu=
ce.
Its seems to be related to suspend/resume interface up/down and mount/u=
nmount.
Also potentially with cifs waiting for a NAS to spinup to complete moun=
t.

On Fri, Jul 9, 2010 at 10:49 AM, Jeff Layton <jlayton-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org> wrote=
:
> On Fri, =A09 Jul 2010 01:41:39 +0200 (CEST)
> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
>
>> This message has been generated automatically as a part of a summary=
 report
>> of recent regressions.
>>
>> The following bug entry is on the current list of known regressions
>> from 2.6.34. =A0Please verify if it still should be listed and let t=
he tracking team
>> know (either way).
>>
>>
>> Bug-Entry =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D163=
06
>> Subject =A0 =A0 =A0 =A0 =A0 =A0 =A0 : 2.6.35-rc3 BUG: unable to hand=
le kernel NULL pointer dereference at 0000000000000048 cifs_show_option=
s
>> Submitter =A0 =A0 : Andrew Hendry <andrew.hendry-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> Date =A0 =A0 =A0 =A0 =A0: 2010-06-26 10:46 (13 days old)
>> Message-ID =A0 =A0: <AANLkTilhTrEBYZd4HxeXQk8B6-yV8rCJ2C0jXsEREgIR@m=
ail.gmail.com>
>> References =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D127754922=
110501&w=3D2
>> Handled-By =A0 =A0: Jeff Layton <jlayton-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
>>
>>
>
> Not sure if this is a new bug or not...
>
> I don't think this is really a CIFS bug, per-se. It seems like the
> problem may be that the iterator for /proc/pid/mountinfo is not
> sufficiently protected against removal from the vfsmount list.
>
> Filesystems don't seem to be expected to do any locking in their
> show_options routines though so I'm guessing that something is borked
> in the generic vfs layer.
>
> Either that or this is some sort of generic mem corruption? I'm open =
to
> input from others that have a better grasp of this stuff at the VFS
> layer...
>
> --
> Jeff Layton <jlayton-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
>
