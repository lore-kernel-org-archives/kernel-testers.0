From: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14375] Intel(R) I/OAT DMA Engine init failed
Date: Tue, 27 Oct 2009 01:57:04 +0400
Message-ID: <a4423d670910261457o2e1ccb7t768199dfd9985270@mail.gmail.com>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera>
	 <6dRYo8ss7vL.A.bIH.qre5KB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=SbbS9jkip4N9ZIkBjQvfqMK3j7EAuNo3BhwW+f+uGPo=;
        b=FG0eYAqJ9YiMPjDVh1TtifxlfC2lFPATFzPUX+7smvTDTg6OFsnHYF8V5agGN8S8GI
         iTys6ezWbY/57e2ZjgkpoflEFUzALHaJKUIe/Jw4H4t1erjAxesR8NYuyZNB3Qom0X79
         pns//gyo095xhguFT6PFSvCIVvNIGw8nDCYWM=
In-Reply-To: <6dRYo8ss7vL.A.bIH.qre5KB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dan Williams <dan.j.williams-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

2009/10/26 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.31. =C2=A0Please verify if it still should be listed and let=
 me know
> (either way).
>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D14375
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : Intel(R) I/OAT DMA Engine init =
failed
> Submitter =C2=A0 =C2=A0 =C2=A0 : Alexander Beregalov <a.beregalov@gma=
il.com>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2009-10-02 9:46 (25 d=
ays old)
> References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=
=3D125447680016160&w=3D4
> Handled-By =C2=A0 =C2=A0 =C2=A0: Dan Williams <dan.j.williams@intel.c=
om>
> Patch =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : http://patchwork.kernel.or=
g/patch/51808/

When I patch reiserfs the bug goes to libata, it means ioatdma works
and libata does not. It looks like inaccurate work with memory
somewhere, but I do not know how to find it.
I cannot reproduce it since 2.6.32-rc3 and I do not see any bugs since =
then.
