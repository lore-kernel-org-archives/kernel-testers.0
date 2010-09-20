From: Daniel J Blueman <daniel.blueman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #16462] unable to connect to AP on legal channel 13
Date: Mon, 20 Sep 2010 22:07:46 +0100
Message-ID: <AANLkTik5gibBKuayOvCsp0ZGxQWC0saGGbGgnQ=HOCSx@mail.gmail.com>
References: <r2gGqgg1zFC.A.LrE.w97lMB@chimera>
	<aRnAGz9xZ8K.A.SAG.e_7lMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:in-reply-to
         :references:date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=KNwv77QtJglKUJJhLpatqLn/9cNNE489rgZrFVirp7g=;
        b=ajkZhNcITmKjEcwFRN0MEP53R6RgqnU4ObOCgwSH1ffM+VlhWE2wRZEofx1QT4dLan
         5NaxWW49P/vAL5EFDtDhnAu4gX6Tzb9N1OFMUyqJOW6UOs35+lJUxpHBPK8MuHAfifpG
         qNc0qVh4Pg7+d5if/pP/yLW6siI+U4BBnJ6oE=
In-Reply-To: <aRnAGz9xZ8K.A.SAG.e_7lMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

Hi Rafael,

On 20 September 2010 20:57, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.34 and 2.6.35.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.34 and 2.6.35. =A0Please verify if it still sh=
ould
> be listed and let the tracking team know (either way).
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
16462
> Subject =A0 =A0 =A0 =A0 : unable to connect to AP on legal channel 13
> Submitter =A0 =A0 =A0 : Daniel J Blueman <daniel.blueman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2010-07-25 17:06 (58 days old)

I have verified this issue still exists in 2.6.36-rc4, alas.

Thanks,
  Daniel
--=20
Daniel J Blueman
