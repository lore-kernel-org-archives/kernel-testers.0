From: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #11500] /proc/net bug related to selinux
Date: Fri, 12 Sep 2008 15:24:43 -0700
Message-ID: <20080912152443.c4e59f42.akpm@linux-foundation.org>
References: <j3zWxt-CgYL.A.WTF.bbsyIB@albercik>
	<SpS7rta8n4.A.i9G.ZcsyIB@albercik>
	<alpine.LRH.1.10.0809130812460.12313@tundra.namei.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LRH.1.10.0809130812460.12313-CK9fWmtY32x9JUWOpEiw7w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: James Morris <jmorris-gx6/JNMH7DfYtjvyW6yDsg@public.gmane.org>
Cc: rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, sds-+05T5uksL2qpZYMLLGbcSA@public.gmane.org

On Sat, 13 Sep 2008 08:14:10 +1000 (EST)
James Morris <jmorris-gx6/JNMH7DfYtjvyW6yDsg@public.gmane.org> wrote:

> On Fri, 12 Sep 2008, Rafael J. Wysocki wrote:
> 
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.26.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11500
> > Subject		: /proc/net bug related to selinux
> > Submitter	: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
> > Date		: 2008-09-04 17:45 (9 days old)
> > References	: http://marc.info/?l=linux-kernel&m=122055041313270&w=4
> 
> I think this might be a regression caused by namespace changes which we 
> addressed in SELinux policy.  Which distro version & policy version is 
> this seen with?
> 

FC5 on x86_32 and FC6 on x86_64.
