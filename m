From: Sergey Senozhatsky <sergey.senozhatsky-A/MS7pq9VAU@public.gmane.org>
Subject: Re: [Bug #13313] vm86old oops
Date: Thu, 11 Jun 2009 16:02:09 +0300
Message-ID: <20090611130209.GA3458@localdomain.by>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera> <D9VoutSOyXP.A.y8H.Ma7KKB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <D9VoutSOyXP.A.y8H.Ma7KKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>

On (06/07/09 11:52), Rafael J. Wysocki wrote:
>
> The following bug entry is on the current list of known regressions
> from 2.6.29.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13313
> Subject		: vm86old oops
> Submitter	: Sergey Senozhatsky <sergey.senozhatsky-A/MS7pq9VAU@public.gmane.org>
> Date		: 2009-05-14 21:53 (25 days old)
> 

Hello Rafael.

commit 3aa6b186f86c5d06d6d92d14311ffed51f091f40
Author: Lubomir Rintel <lkundrak-NGH9Lh4a5iE@public.gmane.org>
Date:   Sun Jun 7 16:23:48 2009 +0200

x86: Fix non-lazy GS handling in sys_vm86()


        Sergey
