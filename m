From: Bret Towe <magnade-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #42571] BUG in ofcs2_change_file_space
Date: Sun, 11 Mar 2012 21:32:18 -0700
Message-ID: <CALjC5hYgZnUyjEEidp+nasrNkqF690Kc9+3qD6Xyq3U2=vXFNA@mail.gmail.com>
References: <5lvJI01hLEP.A.LnC.3_RXPB@chimera>
	<ZeTzqwlO46F.A.xMD.LASXPB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=0nBuGq0mckVlGXRiScGPiyAI0wy2UY6v6fzbZzViZak=;
        b=FdxcZgSlgwHShwO4EQurgb6WDssEpqn4fbEoTyZGf52RrJeaMEqprZoOv97+y8pLdc
         OZF0D1JfEPU6ThWJsmKpi/8uUBWi8XLUHTibm9/3gyF/zEdf/+aPFsRR0P82NwSSSK+A
         U3TyiXrsspe4qpQvxAyyvqtoPC9Max3TwfNjL46lBkgYNVX69gabgxq4s+eDV2clfQgw
         vMPMOx4959wB/6TAbDILlz21WF0Q62Tysi2OY1aWPlZzCNqMX5ySGxOvicocxp0IcJav
         md0Yj2CZRF5eZUzauFNwmqYovaJJpxag3qEPZIlKbquyFXlCpt4urPfE1sdltCbB7bdK
         ZwKA==
In-Reply-To: <ZeTzqwlO46F.A.xMD.LASXPB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

no change still not upstream

On Sun, Mar 11, 2012 at 2:46 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
>
> This message has been generated automatically as a part of a report
> of regressions introduced between 3.1 and 3.2.
>
> The following bug entry is on the current list of known regressions
> introduced between 3.1 and 3.2. =A0Please verify if it still should
> be listed and let the tracking team know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : https://bugzilla.kernel.org/show_bug.cgi?id=3D=
42571
> Subject =A0 =A0 =A0 =A0 : BUG in ofcs2_change_file_space
> Submitter =A0 =A0 =A0 : Bret Towe <magnade-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2012-01-05 22:23 (67 days old)
> Message-ID =A0 =A0 =A0:
> <CALjC5haTNDMOTDPL1m1uBTc2a-Qb8cvR44SCaVDFMzGc+Gw3+w-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D132580=
236211209&w=3D2
> Patch =A0 =A0 =A0 =A0 =A0 :
> http://oss.oracle.com/pipermail/ocfs2-devel/2012-January/008464.html
>
>
