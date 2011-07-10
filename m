From: Pekka Enberg <penberg-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: 3.0-rc6-git6: Reported regressions from 2.6.39
Date: Sun, 10 Jul 2011 13:55:11 +0300
Message-ID: <CAOJsxLEzUC9k0Y2PNxQpCs0WCjQBmP0O2dDxTzPzhGEcvQVDeQ@mail.gmail.com>
References: <Y7LyOsOBwFM.A.kJG.kBYGOB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:sender:in-reply-to:references:date
         :x-google-sender-auth:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=VbWuGu9P8cPEKLwoGU7XpgO8b8rI5Apor/ulAeGrt6Y=;
        b=RZ41+9oFLcnO39QO+Aky/EpaR+qTXLoDgeStAI3jeqrubn+TvyhhTlyS0lz3T25Y7c
         PQOEmgig3INCuCTKZfK7e4Qn5Je1SCkV/l4xrQ+3jlW83okLY1BxuIEqjulXh57roa81
         /MCMfOztjgfonoxEOdhwadgQZUo89FwRJOWhk=
In-Reply-To: <Y7LyOsOBwFM.A.kJG.kBYGOB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Steve <stefan.bosak-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sun, Jul 10, 2011 at 1:19 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
38672
> Subject =A0 =A0 =A0 =A0 : KVM guest boot crashed
> Submitter =A0 =A0 =A0 : Steve <stefan.bosak-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2011-07-02 06:56 (9 days old)
> First-Bad-Commit: http://git.kernel.org/linus/6506e4f995967b1a48cc344=
18c77b318df92ce35

That URL gives me "404 - Unknown commit object" and Bugzilla comments
give me the impression it's actually a QEMU bug. Hmm?
