From: David Greaves <david-FQ/kcb21CSxWk0Htik3J/w@public.gmane.org>
Subject: Re: [Bug #11460] 2.6.27-rc3 to -rc4 regression: init 0 hangs in halt
Date: Sat, 30 Aug 2008 23:20:54 +0100
Message-ID: <48B9C7C6.2060209@dgreaves.com>
References: <q6jBvyFdWbL.A.K4C.fhbuIB@albercik> <N8SeMoDzuxC.A.-VD.xhbuIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <N8SeMoDzuxC.A.-VD.xhbuIB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11460
> Subject		: 2.6.27-rc3 to -rc4 regression: init 0 hangs in halt
> Submitter	: David Greaves <david-FQ/kcb21CSxWk0Htik3J/w@public.gmane.org>
> Date		: 2008-08-30 04:07 (1 days old)

Yes.

I'm trying to bisect it but came across a bug/problem in git doing bisects.
(see message subject "setlocalversion wasn't producing git labels for bisect")

David
