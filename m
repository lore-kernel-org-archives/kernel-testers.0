From: Tetsuo Handa <penguin-kernel-1yMVhJb1mP/7nzcFbJAaVXf5DAMn2ifp@public.gmane.org>
Subject: Re: [Bug #12409] NULL pointer dereference at get_stats()
Date: Tue, 24 Feb 2009 12:54:50 +0900
Message-ID: <200902240354.n1O3sous011760@www262.sakura.ne.jp>
References: <HFSEX4uppGO.A.JSG.2yzoJB@chimera> <LLno3yT_fnC.A.jjH.nzzoJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <LLno3yT_fnC.A.jjH.nzzoJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: rjw-KKrjLPT3xs0@public.gmane.org
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, frederik.deweerdt-kjvbsxwSFqI@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Rafael J. Wysocki wrote:
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12409
> Subject		: NULL pointer dereference at get_stats()
> Submitter	: Tetsuo Handa <penguin-kernel-1yMVhJb1mP/7nzcFbJAaVXf5DAMn2ifp@public.gmane.org>
> Date		: 2008-12-30 12:53 (56 days old)
> References	: http://marc.info/?l=linux-kernel&m=123064167008695&w=4
> Handled-By	: Frederik Deweerdt <frederik.deweerdt-kjvbsxwSFqI@public.gmane.org>
> 
I couldn't reproduce this problem in native and KVM environments.
This problem seems to be VMware specific and priority is low.
Alok Kataria queued this problem.
Thus, this problem has not yet solved but mainline kernels don't need to wait
for this problem.
