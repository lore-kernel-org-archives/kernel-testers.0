From: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
Subject: Re: [Bug #12669] 2.6.28.4 regression: mmap fails if mlockall used
Date: Mon, 9 Feb 2009 10:32:05 +0000 (GMT)
Message-ID: <Pine.LNX.4.64.0902091028390.14410@blonde.anvils>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera> <sWhNs83kKPE.A.jpD.H20jJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <sWhNs83kKPE.A.jpD.H20jJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Sami Farin <safari-kernel-nmB1AuG+Lnw9NyIDpsMsJw@public.gmane.org>

On Sun, 8 Feb 2009, Rafael J. Wysocki wrote:
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12669
> Subject		: 2.6.28.4 regression: mmap fails if mlockall used
> Submitter	: Sami Farin <safari-kernel-nmB1AuG+Lnw9NyIDpsMsJw@public.gmane.org>
> Date		: 2009-02-08 10:52 (1 days old)
> References	: http://marc.info/?l=linux-kernel&m=123409037423068&w=4

Please still list it for now, but I expect
d5b562330ec766292a3ac54ae5e0673610bd5b3d
mm: fix error case in mlock downgrade reversion
(which went in just after -rc4) to have fixed it:
let's wait for confirmation from Sami before removing.

Hugh
