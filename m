From: Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Subject: Re: [Bug #12152] Huge wakeups number from i1915
Date: Sun, 7 Dec 2008 14:52:03 -0800
Message-ID: <20081207145203.0f998d5b@infradead.org>
References: <6VnlupFpCsN.A.2rE.MsEPJB@chimera>
	<07Xes05z25M.A.VtF.ksEPJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <07Xes05z25M.A.VtF.ksEPJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Yves-Alexis Perez <corsac-8fiUuRrzOP0dnm+yROfE0A@public.gmane.org>

On Sun,  7 Dec 2008 21:32:54 +0100 (CET)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.27.  Please verify if it still should be listed and let me
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12152
> Subject		: Huge wakeups number from i1915
> Submitter	: Yves-Alexis Perez <corsac-8fiUuRrzOP0dnm+yROfE0A@public.gmane.org>
> Date		: 2008-12-02 16:48 (6 days old)
> References	:
> http://marc.info/?l=linux-acpi&m=122823656702994&w=4
> 

at least in some of the cases where this has been seen the cause is the
following:
The i915 DRM driver used to do polling for completion, busy waiting. It
moved to be interrupt driven, which is usually better for power, but it
will show up as more wakeups in powertop....


-- 
Arjan van de Ven 	Intel Open Source Technology Centre
For development, discussion and tips for power savings, 
visit http://www.lesswatts.org
