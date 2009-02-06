From: "Bob Copeland" <me-aXfl/3sk2vNUbtYUoyoikg@public.gmane.org>
Subject: Re: [Bug #12490] ath5k related kernel panic in 2.6.29-rc1
Date: Fri, 6 Feb 2009 13:48:09 -0500
Message-ID: <20090206184156.M22909@bobcopeland.com>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera> <pWZw1SZjMCH.A.uoH.6vYiJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <pWZw1SZjMCH.A.uoH.6vYiJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Sergey S. Kostyliov" <rathamahata-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, nbd-p3rKhJxN3npAfugRpC6u6w@public.gmane.org

On Wed,  4 Feb 2009 11:23:57 +0100 (CET), Rafael J. Wysocki wrote
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> (either way).
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12490
> Subject		: ath5k related kernel panic in 2.6.29-rc1
> Submitter	: Sergey S. Kostyliov <rathamahata-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-01-12 7:38 (24 days old)
> References	: http://marc.info/?l=linux-kernel&m=123174591509586&w=4
> Handled-By	: Bob Copeland <me-aXfl/3sk2vNUbtYUoyoikg@public.gmane.org>

Yes, this should still be listed.  Seems there is corruption of the rate
indexes but I haven't found it yet.  Felix Fietkau added to CC in case
he has any thoughts.

-- 
Bob Copeland %% www.bobcopeland.com

