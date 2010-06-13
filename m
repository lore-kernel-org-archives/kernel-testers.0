From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [Bug #15713] hackbench regression due to commit 9dfc6e68bfe6e
Date: Sun, 13 Jun 2010 20:08:50 +0300
Message-ID: <AANLkTil5gl_EHnDmiVjxy69uzohEFvOMXxJR8ZbKqOhN@mail.gmail.com>
References: <g77CuMUl7QI.A.5wF.V5OFMB@chimera>
	<YPGdyfWGvNK.A.Y9.U8OFMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:sender:received
         :in-reply-to:references:date:x-google-sender-auth:message-id:subject
         :from:to:cc:content-type:content-transfer-encoding;
        bh=vGsqpHVb9io8P/paDSQgZviVV3RI5BJTW+fYdht2Zls=;
        b=KzT0kOwtTrr4oBCYSSqaGXj0uFWxZv5oKgmpYnRhjSwmKxWADxWCGV31IqzyZCa+Jr
         vU55JQGXl7BifdQBGH6XzTcKG7dDjcJxPp9832R7+5UYQ4Cb/sR+l+fHmpAw9xJk5Oh+
         JYThkXgHZOUWJwh1h3yk+G2GiD1wKiCoe9Pe4=
In-Reply-To: <YPGdyfWGvNK.A.Y9.U8OFMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Alex Shi <alex.shi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Sun, Jun 13, 2010 at 5:48 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.33 and 2.6.34.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.33 and 2.6.34. =A0Please verify if it still sh=
ould
> be listed and let the tracking team know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
15713
> Subject =A0 =A0 =A0 =A0 : hackbench regression due to commit 9dfc6e68=
bfe6e
> Submitter =A0 =A0 =A0 : Alex Shi <alex.shi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2010-03-25 8:40 (81 days old)
> First-Bad-Commit: http://git.kernel.org/linus/9dfc6e68bfe6ee452efb1a4=
e9ca26a9007f2b864
> Message-ID =A0 =A0 =A0: <1269506457.4513.141.camel-c8rhgrCDLIED0+JXs3kMbXiarf2KHLdh@public.gmane.org=
com>
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D126950=
632920682&w=3D4
> Handled-By =A0 =A0 =A0: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Pekka Enberg <penberg-bbCR+/B0CiyQsjOdHcOuAw@public.gmane.org=
fi>

=46ixed by:

http://git.kernel.org/?p=3Dlinux/kernel/git/torvalds/linux-2.6.git;a=3D=
commit;h=3D73367bd8eef4f4eb311005886aaa916013073265

in 2.6.35-rc1 and the commit is tagged for stable.
