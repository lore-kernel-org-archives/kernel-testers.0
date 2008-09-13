From: James Morris <jmorris-gx6/JNMH7DfYtjvyW6yDsg@public.gmane.org>
Subject: Re: [Bug #11500] /proc/net bug related to selinux
Date: Sat, 13 Sep 2008 10:15:43 +1000 (EST)
Message-ID: <alpine.LRH.1.10.0809131012310.13073@tundra.namei.org>
References: <j3zWxt-CgYL.A.WTF.bbsyIB@albercik> <SpS7rta8n4.A.i9G.ZcsyIB@albercik> <alpine.LRH.1.10.0809130812460.12313@tundra.namei.org> <20080912152443.c4e59f42.akpm@linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080912152443.c4e59f42.akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, sds-+05T5uksL2qpZYMLLGbcSA@public.gmane.org

On Fri, 12 Sep 2008, Andrew Morton wrote:

> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11500
> > > Subject		: /proc/net bug related to selinux
> > > Submitter	: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
> > > Date		: 2008-09-04 17:45 (9 days old)
> > > References	: http://marc.info/?l=linux-kernel&m=122055041313270&w=4
> > 
> > I think this might be a regression caused by namespace changes which we 

By which I mean, this was caused by a non-SELinux change to the upstream 
kernel many, many eons ago.

> > addressed in SELinux policy.  Which distro version & policy version is 
> > this seen with?
> > 
> 
> FC5 on x86_32 and FC6 on x86_64.

As mentioned in the bugzilla, any related avc messages would be useful.


-- 
James Morris
<jmorris-gx6/JNMH7DfYtjvyW6yDsg@public.gmane.org>
