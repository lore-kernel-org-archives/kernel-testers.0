From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [Bug #13646] warn_on tty_io.c, broken bluetooth
Date: Wed, 26 Aug 2009 09:14:02 +0300
Message-ID: <84144f020908252314l364588bfi16e2d426cece2c5a@mail.gmail.com>
References: <JuOd1ZASH0B.A.YGB.0zGlKB@chimera>
	 <Cg6cQYLdUxG.A.f2B.l0GlKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=8OfjwdbuJjxVBS36yxkNWL3zRdUtc8mlYpcFUVbDjRk=;
        b=BUZg7s43nLvKHsYSYzEhFUTODsmAMHjZu2qrXD8ilKPsNe8oCJLJVRy2TStoAx2n6h
         RoIJ4ET+iTYl9y7oCwolkTu8bCuTjXdZ93aZ7XzN2/8C31yHfsNqCBb+UC6ZBr8gc5UR
         mkbATSwnJ5/E/98MmmAGRXu8GU+31fMXW0mIA=
In-Reply-To: <Cg6cQYLdUxG.A.f2B.l0GlKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Wed, Aug 26, 2009 at 12:05 AM, Rafael J. Wysocki<rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.29 and 2.6.30.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.29 and 2.6.30. =A0Please verify if it still sh=
ould
> be listed and let me know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
13646
> Subject =A0 =A0 =A0 =A0 : warn_on tty_io.c, broken bluetooth
> Submitter =A0 =A0 =A0 : Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-06-19 17:05 (68 days old)
> References =A0 =A0 =A0: http://lkml.org/lkml/2009/6/19/187

Pavel, is this still an open issue? Plenty tty fixes went into 2.6.31
so maybe we need to backport some of them to -stable?
