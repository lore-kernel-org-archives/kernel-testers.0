From: Bart Van Assche <bvanassche-HInyCGIudOg@public.gmane.org>
Subject: Re: [Bug #15177] Asynchronous writes up to 30% slower than in 
	previous kernel versions
Date: Mon, 15 Feb 2010 08:09:43 +0100
Message-ID: <e2e108261002142309m79648ccbo3779c43ac7e6ab4a@mail.gmail.com>
References: <Z5cmiqDComP.A.gyF.OiIeLB@chimera>
	 <4un6Gst5rKB.A.FwH.TjIeLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=r3LRZNWpmrXUL/hLYzTYuNl+zCCuBoanuISmxUvohV8=;
        b=eVZyyQtf/2G3ixVsfaG+PanlRqWfZU3HTyrwSJWji34W9Q8CwdTbRtmUOtstsl53Q0
         4/ODgub990T2GW0fIuaUMjcdrbVyXCyK0NBO5+mgQ7dex3O8bFgBtWpLbXr+OCacSFdm
         22jB74LxK+08GptNeWiPoMFvpe/7UFzJhgjCw=
In-Reply-To: <4un6Gst5rKB.A.FwH.TjIeLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Mon, Feb 15, 2010 at 12:38 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote=
:
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
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2010-01-30 16:38 (16 days old)

Hello Rafael,

I thought your plan was to move this item to the 2.6.28 regression
list ? See also
http://groups.google.com/group/linux.kernel/msg/474762980e717a13?pli=3D=
1.

Bart.
