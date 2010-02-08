From: Bart Van Assche <bvanassche-HInyCGIudOg@public.gmane.org>
Subject: Re: [Bug #15177] Asynchronous writes up to 30% slower than in 
	previous kernel versions
Date: Mon, 8 Feb 2010 20:16:24 +0100
Message-ID: <e2e108261002081116m5c13d081p161d8697464253f1@mail.gmail.com>
References: <4Ht3jFrT7uE.A.JI.-nzbLB@chimera>
	 <445R0ey9hAI.A.2jB.iozbLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=V48w7ncqeOzbBJJIrwQoj+VeUFnjYy17nT5k3Sf3hsM=;
        b=hY47aa7EW9orpJfB8nhsfH6VNzWhhh3zEH5w3w8Z4m+SuMIFTulWFj/OLJuHcJNjzm
         wc6bcCWMAgMo2yOp7KHi0JkVu2Lvf87h0JnxhmowhihNp97v/ZABCW3+/5nY9E1aYpy9
         XXUEAn2dEJANtcfQgfunueAkMX23APU1iDeZg=
In-Reply-To: <445R0ey9hAI.A.2jB.iozbLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>

On Sun, Feb 7, 2010 at 11:28 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
>
> This message has been generated automatically as a part of a summary =
report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.32. =A0Please verify if it still should be listed and let th=
e tracking team
> know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
15177
> Subject =A0 =A0 =A0 =A0 : Asynchronous writes up to 30% slower than i=
n previous kernel versions
> Submitter =A0 =A0 =A0 : Bart Van Assche <bart.vanassche-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2010-01-30 16:38 (9 days old)

The regression compared to 2.6.32 is solved in 2.6.33-rc7 for the
specific test mentioned in the Bugzilla entry. The regression compared
to 2.6.28 is not yet solved though, so I'm not sure what should happen
with this bug entry.

Bart.
