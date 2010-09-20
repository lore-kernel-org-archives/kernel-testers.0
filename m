From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #18272] 2.6.35.*: horrible (exponential? >linear) slowdown to unusability (ACPI idle?)
Date: Mon, 20 Sep 2010 21:57:22 +0200 (CEST)
Message-ID: <aRnAGz9xZ8K.A.lAF.897lMB@chimera>
References: <r2gGqgg1zFC.A.LrE.w97lMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <r2gGqgg1zFC.A.LrE.w97lMB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>, Nix <nix-dKoSMcxRz+Te9xe1eoZjHA@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, Venkatesh Pallipadi <venki-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.34 and 2.6.35.

The following bug entry is on the current list of known regressions
introduced between 2.6.34 and 2.6.35.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=18272
Subject		: 2.6.35.*: horrible (exponential? >linear) slowdown to unusability (ACPI idle?)
Submitter	: Nix <nix-dKoSMcxRz+Te9xe1eoZjHA@public.gmane.org>
Date		: 2010-09-05 0:51 (16 days old)
First-Bad-Commit: http://git.kernel.org/linus/30a564be9d9554c168a654eddc2165869cc0d7bf
Message-ID	: <87zkvx2ese.fsf-AdTWujXS48Mg67Zj9sPl2A@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=128364994602942&w=2

