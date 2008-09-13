From: Herton Ronaldo Krzesinski <herton-4qZELD6Fgxg39yzSjRtAkw@public.gmane.org>
Subject: Re: [Bug #11554] Partition check considered as error is breaking mounting in 2.6.27
Date: Sat, 13 Sep 2008 20:37:55 -0300
Message-ID: <200809132037.55922.herton@mandriva.com.br>
References: <j3zWxt-CgYL.A.WTF.bbsyIB@albercik> <SpS7rta8n4.A.oyF.sbsyIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <SpS7rta8n4.A.oyF.sbsyIB@albercik>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Abdel Benamrouche <draconux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Friday 12 September 2008 16:06:31 Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11554
> Subject		: Partition check considered as error is breaking mounting in 2.6.27
> Submitter	: Herton Ronaldo Krzesinski <herton-4qZELD6Fgxg39yzSjRtAkw@public.gmane.org>
> Date		: 2008-09-12 16:56 (1 days old)
> References	: http://marc.info/?l=linux-kernel&m=122123862519434&w=4
> 

Fixed now with commit 8d99f83b9478768d3a8d7d1bcd9bd182c75a0447

--
[]'s
Herton
