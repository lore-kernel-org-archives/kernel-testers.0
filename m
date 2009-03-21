From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn-yOkvZcmFvRU@public.gmane.org>
Subject: Re: [Bug #12868] iproute2 and regressing "ipv6: convert tunnels to net_device_ops"
Date: Sat, 21 Mar 2009 21:16:48 +0100
Message-ID: <87iqm2hbrj.fsf@nemi.mork.no>
References: <HPkmj74uawF.A.iqE.M8TxJB@chimera>
	<fnEpM0mQZjO.A.o3E.S8TxJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <fnEpM0mQZjO.A.o3E.S8TxJB@chimera> (Rafael J. Wysocki's message
	of "Sat, 21 Mar 2009 18:07:29 +0100 (CET)")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="macroman"
To: "Rafael J. Wysocki" <public-rjw-KKrjLPT3xs0-z5DuStaUktnZ+VzJOa5vwg@public.gmane.org>
Cc: Linux Kernel Mailing List <public-linux-kernel-u79uwXL29TY76Z2rM5mHXA-z5DuStaUktnZ+VzJOa5vwg@public.gmane.org>, Kernel Testers List <public-kernel-testers-u79uwXL29TY76Z2rM5mHXA-z5DuStaUktnZ+VzJOa5vwg@public.gmane.org>, Jan Engelhardt <public-jengelh-nopoi9nDyk+ELgA04lAiVw-z5DuStaUktnZ+VzJOa5vwg@public.gmane.org>, netdev <public-netdev-u79uwXL29TY76Z2rM5mHXA-z5DuStaUktnZ+VzJOa5vwg@public.gmane.org>, Stephen Hemminger <public-shemminger-ZtmgI6mnKB3QT0dZR+AlfA-z5DuStaUktnZ+VzJOa5vwg@public.gmane.org>




"Rafael J. Wysocki" <rjw-KKrjLPT3xs0-XMD5yJDbdMReXY1tMh2IBg@public.gmane.org> writes:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.27 and 2.6.28.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.27 and 2.6.28.  Please verify if it still shou=
ld
> be listed and let me know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D12868
> Subject		: iproute2 and regressing "ipv6: convert tunnels to net_devi=
ce_ops"
> Submitter	: Jan Engelhardt <jengelh-nopoi9nDyk+ELgA04lAiVw-XMD5yJDbdMRS5n6/RkiaJA@public.gmane.org=
ne.org>
> Date		: 2009-03-09 14:46 (13 days old)
> First-Bad-Commit: http://git.kernel.org/?p=3Dlinux/kernel/git/torvald=
s/linux-2.6.git;a=3Dcommit;h=3D1326c3d5a4b792a2b15877feb7fb691f8945d203
> References	: http://marc.info/?l=3Dlinux-netdev&m=3D123660999632730&w=
=3D4


This is fixed by commit 1b1d8f73a44fe1796a73a97ebcb08cad18b97f07
currently in davem's net-2.6 tree.


Bj=C3=B8rn

