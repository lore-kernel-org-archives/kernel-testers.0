From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #11237] corrupt PMD after resume
Date: Sat, 27 Sep 2008 19:44:39 +0200
Message-ID: <20080927174439.GD26047@elte.hu>
References: <t_PcrlC6ypI.A.tGG.G7m3IB@albercik> <V8eU91268VO.A.L5.C_m3IB@albercik>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <V8eU91268VO.A.L5.C_m3IB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>, Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>, Jeremy Fitzhardinge <jeremy.fitzhardinge-Sxgqhf6Nn4DQT0dZR+AlfA@public.gmane.org>, Jeremy Fitzhardinge <jeremy-TSDbQ3PG+2Y@public.gmane.org>, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>


* Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report of 
> recent regressions.
> 
> The following bug entry is on the current list of known regressions 
> from 2.6.26.  Please verify if it still should be listed and let me 
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11237
> Subject		: corrupt PMD after resume
> Submitter	: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
> Date		: 2008-08-02 9:51 (57 days old)
> References	: http://marc.info/?l=linux-kernel&m=121767073424952&w=4
> Handled-By	: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
> 		  Jeremy Fitzhardinge <jeremy-TSDbQ3PG+2Y@public.gmane.org>
> Patch		: http://marc.info/?l=linux-kernel&m=122001615314700&w=2

actually, it's now believed that this is a BIOS problem that affects all 
Linux versions. The aspect of v2.6.27 is that it happens to put kernel 
pagetables into the area that gets corrupted by the BIOS - and users 
notice that.

i.e. it's not a regression - unless i'm missing something.

	Ingo
