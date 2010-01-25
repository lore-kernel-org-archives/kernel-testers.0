From: Alex Deucher <alexdeucher-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15017] kexec regression, radeon/kms irq related (bisected)
Date: Sun, 24 Jan 2010 22:26:40 -0500
Message-ID: <a728f9f91001241926m4c19aedbvda295fe3c7daade@mail.gmail.com>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera>
	 <hE3x9c-4KZM.A.kWG.mKMXLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=kq3UhWpcX+VQSxJRkLelD2kr2e3r3KWSG8vd5OYQV2w=;
        b=otYgDcBhYCR2wNWwlSS+uZcQYs22/kPOeqBWR2cjY+WjcSlcYNVpBj78YIawLTCLry
         BJGnZmvdGCKh5/moPwC6bmSjiHVx9kAoWr6fY7rh5NQnjQab9LyQGNqQpS9JhBxxi+J9
         yHHTGTSeu15B0lENnTB1C6bdAHGOxt6VNRmOc=
In-Reply-To: <hE3x9c-4KZM.A.kWG.mKMXLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dave Airlie <airlied-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Markus Trippelsdorf <markus-xp2qqqlHh3xzoYq+O6RWwA@public.gmane.org>

On Sun, Jan 24, 2010 at 5:04 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.32. =A0Please verify if it still should be listed and let me=
 know
> (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
15017
> Subject =A0 =A0 =A0 =A0 : kexec regression, radeon/kms irq related (b=
isected)
> Submitter =A0 =A0 =A0 : Markus Trippelsdorf <markus-xp2qqqlHh3xzoYq+O6RWwA@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2010-01-09 18:49 (16 days old)
> First-Bad-Commit: http://git.kernel.org/?p=3Dlinux/kernel/git/torvald=
s/linux-2.6.git;a=3Dcommit;h=3Dd8f60cfc93452d0554f6a701aa8e3236cbee4636
>
>
>

That bug has patches which fix the issue attached and queued for 2.6.33=
=2E

Alex
