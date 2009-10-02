From: Jan Scholz <scholz-wOpdxP1gw6Cc+IqHO83+wjjhTm2NLCe8@public.gmane.org>
Subject: Re: [Bug #13935] 2.6.31-rcX breaks Apple MightyMouse (Bluetooth version)
Date: Fri, 02 Oct 2009 14:51:21 +0200
Message-ID: <871vlm3qnq.fsf@scholz.fias.uni-frankfurt.de>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera>
	<COE24pZSBH.A.DPD.fOTxKB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <COE24pZSBH.A.DPD.fOTxKB@chimera> (Rafael J. Wysocki's message of
	"Thu, 1 Oct 2009 21:55:53 +0200 (CEST)")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Ulrich <kernel-4ZM2p5qjiQGewZBzVTKGGg@public.gmane.org>, Jan Scholz <Scholz-wOpdxP1gw6Cc+IqHO83+wjjhTm2NLCe8@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>

Hi,

for me this bug is fixed by:

commit 42960a13001aa6df52ca9952ce996f94a744ea65
HID: completely remove apple mightymouse from blacklist

Cheers,
   Jan

"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> writes:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.30 and 2.6.31.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.30 and 2.6.31.  Please verify if it still should
> be listed and let me know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13935
> Subject		: 2.6.31-rcX breaks Apple MightyMouse (Bluetooth version)
> Submitter	: Adrian Ulrich <kernel-4ZM2p5qjiQGewZBzVTKGGg@public.gmane.org>
> Date		: 2009-08-08 22:08 (55 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=fa047e4f6fa63a6e9d0ae4d7749538830d14a343
>
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/
