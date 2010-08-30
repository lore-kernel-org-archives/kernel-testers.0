From: Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Subject: Re: [Bug #16399] perf failed with kernel 2.6.35-rc
Date: Mon, 30 Aug 2010 11:12:43 +0200
Message-ID: <1283159563.1820.665.camel@laptop>
References: <c1_O4wHrlB.A.63.mbueMB@chimera>
	 <ByD_7B96czP.A.XtC.eeueMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <ByD_7B96czP.A.XtC.eeueMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Zhang, Yanmin" <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>

On Mon, 2010-08-30 at 01:13 +0200, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.34 and 2.6.35.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.34 and 2.6.35.  Please verify if it still should
> be listed and let the tracking team know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16399
> Subject		: perf failed with kernel 2.6.35-rc
> Submitter	: Zhang, Yanmin <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
> Date		: 2010-07-13 8:14 (48 days old)
> First-Bad-Commit: http://git.kernel.org/linus/1ac62cfff252fb668405ef3398a1fa7f4a0d6d15
> Message-ID	: <1279008849.2096.913.camel-sz7BYL/Y5Hu/P+R7jlPCFVaTQe2KTcn/@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=127900880212470&w=2
> 
> 

Should be fixed by:

commit 351af0725e5222e35741011d1ea62215c1ed06db
Author: Zhang, Yanmin <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Date:   Fri Aug 6 13:39:08 2010 +0800

    perf, x86: Fix Intel-nhm PMU programming errata workaround                                                                                                        
                                                                                                                                                                      
    Fix the Errata AAK100/AAP53/BD53 workaround, the officialy documented                                                                                             
    workaround we implemented in:                                                                                                                                     
                                                                                                                                                                      
     11164cd: perf, x86: Add Nehelem PMU programming errata workaround                                                                                                
                                                                                                                                                                      
    doesn't actually work fully and causes a stuck PMU state                                                                                                          
    under load and non-functioning perf profiling.                                                                                                                    
                                                                                                                                                                      
    A functional workaround was found by trial & error.                                                                                                               
                                                                                                                                                                      
    Affects all Nehalem-class Intel PMUs.                                                                                                                             
                                                                                                                                                                      
    Signed-off-by: Zhang Yanmin <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>                                                                                                        
    Signed-off-by: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>                                                                                                            
    LKML-Reference: <1281073148.2125.63.camel-sz7BYL/Y5Hu/P+R7jlPCFVaTQe2KTcn/@public.gmane.org>                                                                                                   
    Cc: Arjan van de Ven <arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>                                                                                                                      
    Cc: "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>                                                                                                                              
    Cc: <stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org> # .35.x                                                                                                                                   
    Signed-off-by: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> 
