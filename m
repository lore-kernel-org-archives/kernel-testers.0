From: Bart Van Assche <bvanassche-HInyCGIudOg@public.gmane.org>
Subject: Re: [Bug #32982] Kernel locks up a few minutes after boot
Date: Sun, 17 Apr 2011 20:37:39 +0200
Message-ID: <BANLkTi=1jO73DXDTD50bVpU82qphVKmRCw@mail.gmail.com>
References: <OlQwC5HnRsN.A.ULB.OGuqNB@chimera> <_H4l51C1wXN.A.yDC.yGuqNB@chimera>
 <BANLkTimeaHwBiZoz=isCM=qtBxoxaBqDUw@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:in-reply-to:references:from
         :date:x-google-sender-auth:message-id:subject:to:cc:content-type
         :content-transfer-encoding;
        bh=6OLgdEq8UMqMfz4Vceg+tIH7oRNrMgVwW5o9x/WmNfc=;
        b=Uz2kK+Kq+069k3VTeXyBS6tvMTY40DS2iuF2VttyLpsQ1+W5vdkmx9kgnIzjQtkaYN
         iGtGF7W/6cvi1XfOyu5FDd0c/Vm6dSIrDmskk/IhKfTo/8uWgj8bYLbBjZWpofYvjLLv
         sp3jQfW1T2rb2It0jAH30mkz03LkA5UgKBYOQ=
In-Reply-To: <BANLkTimeaHwBiZoz=isCM=qtBxoxaBqDUw-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Neil Brown <neilb-l3A5Bk7waGM@public.gmane.org>, Jens Axboe <jaxboe-5c4llco8/ftWk0Htik3J/w@public.gmane.org>

On Sun, Apr 17, 2011 at 7:03 PM, Linus Torvalds
<torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:
> On Sun, Apr 17, 2011 at 5:57 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrot=
e:
> > This message has been generated automatically as a part of a summar=
y report
> > of recent regressions.
> >
> > The following bug entry is on the current list of known regressions
> > from 2.6.38. =A0Please verify if it still should be listed and let =
the tracking team
> > know (either way).
> >
> >
> > Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
32982
> > Subject =A0 =A0 =A0 =A0 : Kernel locks up a few minutes after boot
> > Submitter =A0 =A0 =A0 : Bart Van Assche <bart.vanassche-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date =A0 =A0 =A0 =A0 =A0 =A0: 2011-04-10 19:55 (8 days old)
>
> Is this machine running a RAID5 setup or something like that?
>
> There is a known interaction with the new block layer plugging code
> and MD. The "hung task" report in that bugzilla looks very much like
> that issue. And you do have "root=3D/dev/md0", so clearly there's som=
e
> md thing going on.
>
> And bisecting might not work all that well for it, because I suspect
> it ends up being very much a matter of IO patterns how it triggers.
>
> Neil supposedly has a patch for it, but I haven't seen it yet. Neil, =
Jens?

(converted top-posting into bottom-posting)

Hello Linus,

On the system on which bug #32982 has been triggered md0, md1 and md2
have been configured as two-disk RAID1 (mirroring).

I've done my best to trigger enough I/O in order to obtain reliable
bisect results. A difficulty I encountered during bisecting though was
that I encountered unbootable kernels (all skipped revisions).

Bart.
