From: Pekka Paalanen <pq-X3B1VOXEql0@public.gmane.org>
Subject: Re: [Bug #11996] Tracing framework regression in 2.6.28-rc3
Date: Mon, 17 Nov 2008 00:35:31 +0200
Message-ID: <20081117003531.4c8b5679@daedalus.pq.iki.fi>
References: <VwdsQNEjR_C.A.CiD.9_FIJB@chimera>
	<Q7OAnAv0V3D.A.GwE.gAGIJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:in-reply-to:references:x-mailer:mime-version
         :content-type:content-transfer-encoding:sender;
        bh=84Q//MtfR7CbJuOMACGnmZoz8pvXwp95jnhisaPHcSw=;
        b=pX9+/DkVkZ+2x1bqgsqvx597vcFD9Z3n2Fxakmjv6WSInbb2vcumAmNE+4dx68Y+Nu
         J1gqnc/GDuCgruqAfECWrBmLWtj9qvebDiEMTh46438FCyGi7XqX30v4Q5w6LVjOsUSx
         kiYQ3J/5OoznL1SASLYSiW66i9sA9eQDFQsRo=
In-Reply-To: <Q7OAnAv0V3D.A.GwE.gAGIJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sun, 16 Nov 2008 17:35:18 +0100 (CET)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.27.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11996
> Subject		: Tracing framework regression in 2.6.28-rc3
> Submitter	: Pekka Paalanen <pq-X3B1VOXEql0@public.gmane.org>
> Date		: 2008-11-09 10:13 (8 days old)
> References	: http://marc.info/?l=linux-kernel&m=122624392229317&w=4
> Handled-By	: Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>

Steve, Ingo, did you get into an agreement on the patch?
What should I test?

I see -rc5 is out, but I didn't spot the fix in the changelog.

(The ring buffer NULL dereference on resize / unallocated max tracer.)

-- 
Pekka Paalanen
http://www.iki.fi/pq/
