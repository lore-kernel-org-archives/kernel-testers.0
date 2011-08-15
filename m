From: Pekka Enberg <penberg-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #39922] WIFI becomes EXTREMELY slow ( ath9k ) making the
 connection unusable
Date: Mon, 15 Aug 2011 13:35:39 +0300
Message-ID: <CAOJsxLH3McBv+83rbd9aCfu_OULx=68KWfKwEGoNL5ygK2iM8Q@mail.gmail.com>
References: <xuTC4jRtHbB.A.l4H.gMCSOB@chimera>
	<bkwpSnItbJM.A.tc.-MCSOB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:sender:in-reply-to:references:date
         :x-google-sender-auth:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=tW6Ix64re29NYjM31ti6IP9fTWpeJ5knywRWgLqIi0o=;
        b=EOVmFTOtqVmBubuAoCtecUsv4vPZi/HxmqMpNS/42O6xJwVQXgIsveXDPWRlyeuOWB
         xJEu+o86NAX4w98HfoYYd/Pkdof8QcvWpqzUq8/NzCXhAAOdNnJSBnlSAhnZL85kf44r
         C+qmkyy/8rW//AcwuCaCrhWaa4kBS61qWhWo4=
In-Reply-To: <bkwpSnItbJM.A.tc.-MCSOB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Lukasz Olszewski <lcpak-tIkWECEXGi3VItvQsEIGlw@public.gmane.org>, lrodriguez-DlyHzToyqoxBDgjK7y7TUQ@public.gmane.org, jmalinen-DlyHzToyqoxBDgjK7y7TUQ@public.gmane.org

On Sun, Aug 14, 2011 at 10:07 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote=
:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.39 and 3.0.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.39 and 3.0. =A0Please verify if it still shoul=
d
> be listed and let the tracking team know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
39922
> Subject =A0 =A0 =A0 =A0 : WIFI becomes EXTREMELY slow ( ath9k ) makin=
g the connection unusable
> Submitter =A0 =A0 =A0 : Lukasz Olszewski <lcpak-tIkWECEXGi3VItvQsEIGlw@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2011-07-24 09:20 (22 days old)

There's no evidence in the bug report that the ath9k maintainers know
about this. I'm CC'ing Luis and Jouni.
