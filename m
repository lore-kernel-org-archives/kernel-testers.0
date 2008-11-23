From: Pekka Paalanen <pq-X3B1VOXEql0@public.gmane.org>
Subject: Re: [Bug #11996] Tracing framework regression in 2.6.28-rc3
Date: Sun, 23 Nov 2008 15:12:58 +0200
Message-ID: <20081123151258.2e5ed008@daedalus.pq.iki.fi>
References: <sBqd4qMeLzC.A.mgB.B7HKJB@chimera>
	<vyitTh0pP2N.A.-hC.u7HKJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:in-reply-to:references:x-mailer:mime-version
         :content-type:content-transfer-encoding:sender;
        bh=aMS74J4M6eCSdLIWoj315YnLVK9cbbrvq+hs4xJ94R4=;
        b=xP+aJgRtYl3ILiZi9Tx0f02fPoyzwrqAtHyrAwZEg4zV9LCPi/DzWw0rh4CWuN/v3u
         GS03v0aV6rFlB9Jmzd0uzMOhsFz89olmN+6Ju0hjip/o1ersgw8zpJ6wLipocP6YvfzG
         REz59F1hrunJn0mdKNqkrFi/8SPA0dT+Jx5+c=
In-Reply-To: <vyitTh0pP2N.A.-hC.u7HKJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On Sat, 22 Nov 2008 21:28:17 +0100 (CET)
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
> Date		: 2008-11-09 10:13 (14 days old)
> References	: http://marc.info/?l=linux-kernel&m=122624392229317&w=4
> Handled-By	: Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>

Tested 2.6.28-rc6, this bug is fixed.

-- 
Pekka Paalanen
http://www.iki.fi/pq/
