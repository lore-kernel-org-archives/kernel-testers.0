From: FUJITA Tomonori <fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org>
Subject: Re: [Bug #12612] hard lockup when interrupting cdda2wav
Date: Tue, 17 Mar 2009 09:53:03 +0900
Message-ID: <20090317095254P.fujita.tomonori@lab.ntt.co.jp>
References: <9nR7rAsBwYG.A.iEG.fOCvJB@chimera>
	<qm8_cedJGaP.A.3-G.5OCvJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <qm8_cedJGaP.A.3-G.5OCvJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: rjw-KKrjLPT3xs0@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org, hias-vtPv7MOkFPkAvxtiuMwx3w@public.gmane.org, James.Bottomley-d9PhHud1JfjCXq6kfMZ53/egYHeGw8Jk@public.gmane.org

On Sat, 14 Mar 2009 20:20:17 +0100 (CET)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.27 and 2.6.28.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.27 and 2.6.28.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12612
> Subject		: hard lockup when interrupting cdda2wav
> Submitter	: Matthias Reichl <hias-vtPv7MOkFPkAvxtiuMwx3w@public.gmane.org>
> Date		: 2009-01-28 16:41 (46 days old)
> References	: http://marc.info/?l=linux-kernel&m=123316111415677&w=4
> Handled-By	: FUJITA Tomonori <fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org>
> Patch		: http://marc.info/?l=linux-scsi&m=123371501613019&w=2

This still should be listed. I think that the fix (in James'
scsi-misc) will be merged to 2.6.30-rc1 then be backported.
