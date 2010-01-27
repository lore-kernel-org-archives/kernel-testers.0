From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [Bug #14897] i915: Commit 0e442c60 causes flickering
Date: Wed, 27 Jan 2010 14:44:25 +0200
Message-ID: <84144f021001270444o1a2eba51t7917fb447cdc247d@mail.gmail.com>
References: <pYFNu11z2aM.A.pJH.CZMXLB@chimera>
	 <q60Z28d_9yH.A.7k.sZMXLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=XzX0dMJCQBEdQuVLHRnzTWG6IJJlwXcuKNQit5TDpgo=;
        b=qxmH5gdrptkQMaqiKUsGzUUpISAeX6IWeJDrW7bDz1iH2lf7dgWOoLE6jplbToj5aE
         DvyXIsx0VQ6RBn+7IPyK5VCk+o/sj0L+FUArqsNWwpbDxRaim7M9rhyI8kD+ylnq4F7M
         A/IYRXD4GWN7le2bW/vlgTyMpNVJ/Ti7dZ/SU=
In-Reply-To: <q60Z28d_9yH.A.7k.sZMXLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, David John <davidjon-XRr60H37pjdAfugRpC6u6w@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>

On Mon, Jan 25, 2010 at 12:23 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote=
:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32. =A0Please verify if it still sh=
ould
> be listed and let me know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
14897
> Subject =A0 =A0 =A0 =A0 : i915: Commit 0e442c60 causes flickering
> Submitter =A0 =A0 =A0 : David John <davidjon-XRr60H37pjdAfugRpC6u6w@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-12-09 17:26 (47 days old)
> First-Bad-Commit: http://git.kernel.org/?p=3Dlinux/kernel/git/torvald=
s/linux-2.6.git;a=3Dcommit;h=3D0e442c60dd39ac6924b11a20497734bd2303744c
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D126037=
889600769&w=3D4

David, bunch of i915 flickering fixes have gone into 2.6.33-rc5. Is
this still a problem?
