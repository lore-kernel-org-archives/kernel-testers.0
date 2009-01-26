From: Miklos Szeredi <miklos-sUDqSbJrdHQHWmgEVkV9KA@public.gmane.org>
Subject: Re: [Bug #12208] uml is very slow on 2.6.28 host
Date: Mon, 26 Jan 2009 12:35:24 +0100
Message-ID: <E1LRPkS-000132-2y@pomaz-ex.szeredi.hu>
References: <KTnguC9mFUC.A.VNB.TJRdJB@chimera> <cX2gZ6Cy9nC.A.mqD.ZKRdJB@chimera>
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-reply-to: <cX2gZ6Cy9nC.A.mqD.ZKRdJB@chimera> (rjw-KKrjLPT3xs0@public.gmane.org)
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: rjw-KKrjLPT3xs0@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, miklos-sUDqSbJrdHQHWmgEVkV9KA@public.gmane.org

On Mon, 19 Jan 2009, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.27 and 2.6.28.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.27 and 2.6.28.  Please verify if it still should
> be listed and let me know (either way).

Yes, still unfixed.  There was some private discussion with the
scheduler guys and now I suspect this is not a scheduler regression
but a more longstanding UML bug that was made visible by some
scheduler changes.

Thanks,
Miklos

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12208
> Subject		: uml is very slow on 2.6.28 host
> Submitter	: Miklos Szeredi <miklos-sUDqSbJrdHQHWmgEVkV9KA@public.gmane.org>
> Date		: 2008-12-12 9:35 (39 days old)
> References	: http://marc.info/?l=linux-kernel&m=122907463518593&w=4
> 
> 
> 
