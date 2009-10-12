From: Steven Noonan <steven@uplinklabs.net>
Subject: Re: [Bug #14377] "conservative" cpufreq governor broken
Date: Sun, 11 Oct 2009 18:47:26 -0700
Message-ID: <f488382f0910111847y365ad85fj89fc8c65d510052b@mail.gmail.com>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera>
	 <L6tb-VyKHZK.A.lrB.Rzl0KB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752842AbZJLBsF@vger.kernel.org>
In-Reply-To: <L6tb-VyKHZK.A.lrB.Rzl0KB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Eero Nurkkala <ext-eero.nurkkala@nokia.com>, Rik van Riel <riel@redhat.com>, Thomas Gleixner <tglx@linutronix.de>, Venkatesh Pallipadi <venkatesh.pallipadi@intel.com>

Hi Rafael,

There's a commit to fix this in the stable queue for 2.6.31.x and said
fix is already in the 2.6.32 tree. The commit is titled "NOHZ: update
idle state also when NOHZ is inactive" (fdc6f192e7).

- Steven

On Sun, Oct 11, 2009 at 4:01 PM, Rafael J. Wysocki <rjw@sisk.pl> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.30 and 2.6.31.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.30 and 2.6.31. =A0Please verify if it still sh=
ould
> be listed and let me know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
14377
> Subject =A0 =A0 =A0 =A0 : "conservative" cpufreq governor broken
> Submitter =A0 =A0 =A0 : Steven Noonan <steven@uplinklabs.net>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-10-05 16:32 (7 days old)
> First-Bad-Commit: http://git.kernel.org/?p=3Dlinux/kernel/git/torvald=
s/linux-2.6.git;a=3Dcommit;h=3Df2e21c9610991e95621a81407cdbab881226419b
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D125476=
067108252&w=3D4
>
>
>
