From: Michal 'vorner' Vaner <vorner-+ZI9xUNit7I@public.gmane.org>
Subject: Re: [Bug #27402] Atheros adapter no longer loads firmware
Date: Mon, 28 Feb 2011 13:51:23 +0100
Message-ID: <20110228125123.GA4810@dragonfly>
References: <JwKd6rET8XO.A._ZC.gbuYNB@chimera>
 <f14qsMvj2tF.A.pHD.ScuYNB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <f14qsMvj2tF.A.pHD.ScuYNB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Michal Vaner <vorner-+ZI9xUNit7I@public.gmane.org>

Good morning

On Mon, Feb 21, 2011 at 11:37:10PM +0100, Rafael J. Wysocki wrote:
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=27402
> Subject		: Atheros adapter no longer loads firmware
> Submitter	: Michal Vaner <vorner-+ZI9xUNit7I@public.gmane.org>
> Date		: 2011-01-23 15:29 (30 days old)
> First-Bad-Commit: http://git.kernel.org/linus/be93112accb42c5586a459683d71975cc70673ca

It seems it got fixed. I have no clue which of the two commits in the relevant
files could possibly fix it, but my adapter works now, with current git version
(493f3358cb289ccf716c5a14fa5bb52ab75943e5).

Thank you

With regard

PS: Sorry for taking so long for the reply, I was abroad last week.

-- 
The problem with graduate students, in general, is that they have
to sleep every few days.

Michal 'vorner' Vaner
