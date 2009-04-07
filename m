From: "Trenton D. Adams" <trenton.d.adams-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13018] 2.6.29 on MacBook 2,1 fails to reboot
Date: Mon, 6 Apr 2009 20:13:44 -0600
Message-ID: <9b1675090904061913o614e02fdl22ef2cf795525a6d@mail.gmail.com>
References: <n4io5wq70ZO.A.gzG.rFn2JB@chimera>
	 <AsKNxFx2juN.A.0OH.0Fn2JB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=Mo4y+3xj43/JoJ7z2CjzigP4+cKj3pk29y1eLmEieDY=;
        b=n/dhaUWL/4lCYA+GOvZV6Tdik+V1RFR5VTRuzRzs76B7n0BpNafrIFmy9aUo9x2vnG
         cWE/eaz2KI1G0WMclSVSWRsizdhkPoISiD3ecWuvUcbg5Y4rDPKk6S7RPhK1Q8esTk17
         NoptI0rps9xOYC8gPZ+dQIf3UOt4b+57k9NPc=
In-Reply-To: <AsKNxFx2juN.A.0OH.0Fn2JB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alistair John Strachan <alistair-T7eSMZptz7IqdlJmJB21zg@public.gmane.org>, mstevens-APqb+XXLJz/QQQFqJy/XgFaTQe2KTcn/@public.gmane.org

Hi Rafael,

Yes, it is still a problem.  I have identified it as far down to being
an alsa problem.  Please follow the other thread related to this.  I
posted some more recent data, with strace info and such.  I also used
git bisect to narrow it down.  I wasn't, however, able to understand
what was happening exactly in the code.

If you need more info, or want me to try something, please just let me =
know.

Thanks.

On Mon, Apr 6, 2009 at 1:05 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.28. =A0Please verify if it still should be listed and let me=
 know
> (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
13018
> Subject =A0 =A0 =A0 =A0 : 2.6.29 on MacBook 2,1 fails to reboot
> Submitter =A0 =A0 =A0 : Trenton Adams <trenton.d.adams-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-03-30 2:04 (8 days old)
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D123837=
870307249&w=3D4
> Handled-By =A0 =A0 =A0: "Morten P.D. Stevens" <mstevens@win-professio=
nal.com>
>
>
>
