From: Chris Ball <cjb-2X9k7bc8m7Mdnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #38922] Lenovo T420 (Sandy Bridge) Crashes on SD Card gpt partition writing and io errors on insert
Date: Sun, 28 Aug 2011 15:51:45 -0400
Message-ID: <m2fwklxqjy.fsf@bob.laptop.org>
References: <Sm7qbRR0zn.A.yAG.LepWOB@chimera>
	<gUVi6eNP8RE.A.uJH.tfpWOB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <gUVi6eNP8RE.A.uJH.tfpWOB@chimera> (Rafael J. Wysocki's message
	of "Sun, 28 Aug 2011 21:01:11 +0200 (CEST)")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Andrei Warkentin <andreiw-3WKxDLwmzFNWk0Htik3J/w@public.gmane.org>, Peter Vollmer <vollmerpeter-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>

Hi Rafael,

On Sun, Aug 28 2011, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.39 and 3.0.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.39 and 3.0.  Please verify if it still should
> be listed and let the tracking team know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=38922
> Subject : Lenovo T420 (Sandy Bridge) Crashes on SD Card gpt partition
> writing and io errors on insert
> Submitter	: Peter Vollmer <vollmerpeter-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
> Date		: 2011-07-07 17:33 (53 days old)
> First-Bad-Commit:
> http://git.kernel.org/linus/a3c7778f8153b9e4eceea6738973280b9e63c618

Yes, still present.

Thanks,

- Chris.
-- 
Chris Ball   <cjb-2X9k7bc8m7Mdnm+yROfE0A@public.gmane.org>   <http://printf.net/>
One Laptop Per Child
