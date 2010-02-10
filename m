From: Luca Tettamanti <kronos.it-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15195] kernel BUG at include/net/netns/generic.h:41, 
	pfkey_create+0x36/0x18b [af_key]
Date: Wed, 10 Feb 2010 16:59:52 +0100
Message-ID: <68676e01002100759v37f79938p51f3aeb6c068d39a@mail.gmail.com>
References: <4Ht3jFrT7uE.A.JI.-nzbLB@chimera>
	 <445R0ey9hAI.A.4VB.YozbLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=Bqi7rlW1OkV9z6UxjVeUCa/2TYNYgXK+2E0feJZGh4I=;
        b=S4jWdhjcb4smSyYwMJfLQKMrTtQkZfozUYPiIXYrrvV7+ukQzjEx4J7lyayFjz5fgh
         STnJTp1asoDISlQU2BGprQnp59Rc8K3GIhJ4Az2dM8ddKqkjqhc5sAqmWkKISR6K4pWC
         sqgsCR0ObvQ1RU78WceWVbgzNarJdVMSbuzCk=
In-Reply-To: <445R0ey9hAI.A.4VB.YozbLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sun, Feb 7, 2010 at 11:28 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> The following bug entry is on the current list of known regressions
> from 2.6.32. =C2=A0Please verify if it still should be listed and let=
 the tracking team
> know (either way).
>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D15195
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : kernel BUG at include/net/netns=
/generic.h:41, pfkey_create+0x36/0x18b [af_key]
> Submitter =C2=A0 =C2=A0 =C2=A0 : Luca Tettamanti <kronos.it-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org=
>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2010-01-30 13:23 (9 d=
ays old)
> References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-netdev&m=
=3D126485785004775&w=3D4
> Handled-By =C2=A0 =C2=A0 =C2=A0: Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org=
>
> Patch =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : http://patchwork.kernel.or=
g/patch/75891/

=46ixed by commit 180211b841b5bf13ab10d19202adab3eb7749f6c

Luca
