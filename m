From: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Subject: Re: [Bug #16207] Suspend and VT switch hangs since 2.6.34
Date: Mon, 12 Jul 2010 09:20:03 -0700
Message-ID: <20100712092003.074ab8ee@virtuousgeek.org>
References: <xkNyyYrLiTN.A.s_G.7p7NMB@chimera>
	<Hc02ROPrUsG.A.zdH.cq7NMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Hc02ROPrUsG.A.zdH.cq7NMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Tino Keitel <tino.keitel+xorg-rAwCM5oiXHA@public.gmane.org>

On Sat, 10 Jul 2010 02:33:28 +0200 (CEST)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.33 and 2.6.34.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.33 and 2.6.34.  Please verify if it still should
> be listed and let the tracking team know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16207
> Subject		: Suspend and VT switch hangs since 2.6.34
> Submitter	: Tino Keitel <tino.keitel+xorg-rAwCM5oiXHA@public.gmane.org>
> Date		: 2010-06-09 17:53 (31 days old)
> Message-ID	: <20100609175356.GA17332-dW8JlKMZij8@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=127610606214060&w=2

Two commits in the X server repo (1.8 branch commits shown) might help
here:

commit	665aa7ce8645b50b888db32ebab4e192dbe00649
  OS support: fix writeable client vs IgnoreClient behavior

commit	090d26723f7cdbb3aebfe212170b7f81c163dd7b
  dixstruct: make ignoreCount change more ABI friendly

2.6.34 introduced some new features, and X will test for them and use
them if available.  However, the server's handling of clients was buggy
with the new code, which could cause clients to hang after VT switch,
waiting to be woken up.

-- 
Jesse Barnes, Intel Open Source Technology Center
