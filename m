From: Andrew Lutomirski <luto-3s7WtUTddSA@public.gmane.org>
Subject: Re: [Bug #14472] EXT4 corruption
Date: Thu, 29 Oct 2009 15:57:32 -0400
Message-ID: <cb0375e10910291257t1f2f16ciade932bd78689ccc@mail.gmail.com>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera>
	 <6dRYo8ss7vL.A.haF.Are5KB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=xsAn6Q1yuaJw/Z+y0DuEq/wIDfe9/2sguVBR02bFeWA=;
        b=a/gE/XGLVsflw3ThlEB8KMrLqqWKNoxrGu1AoJJYWiwC8hZwaAKvkM912l0QLhGwlF
         lFoQwJBiutnDmb7OblkHxLBtHob1oYHGj20Yl6fYOol6dT2FGcgSXhtRgumOeb2aPrmq
         +6n9eyBnFYSuJr8M69Wf07ycdqHYwp0L+NDfQ=
In-Reply-To: <6dRYo8ss7vL.A.haF.Are5KB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Shawn Starr <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>, Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>

On Mon, Oct 26, 2009 at 2:55 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.31. =A0Please verify if it still should be listed and let me=
 know
> (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
14472
> Subject =A0 =A0 =A0 =A0 : EXT4 corruption
> Submitter =A0 =A0 =A0 : Shawn Starr <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-10-13 2:07 (14 days old)
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D125539=
997508256&w=3D4
> Handled-By =A0 =A0 =A0: Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>
>


This but is *not* fixed.  I just triggered it a few minutes ago by
abusing i915 and drm, which caused a panic.  This is slightly newer
than 2.6.32-rc5, with a couple of i915 bugfixes thrown in.

Photos are here:
http://web.mit.edu/luto/www/ext4_crashphotos/

This is a very nasty regression, for obvious reasons.

--Andy
