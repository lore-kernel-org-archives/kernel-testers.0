From: Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14379] ACPI Warning for _SB_.BAT0._BIF: Converted Buffer
 to 	expected String
Date: Mon, 12 Oct 2009 11:35:56 +0800
Message-ID: <1255318556.11664.11.camel@minggr.sh.intel.com>
References: <zJ_pXHNwoHC.A.akB.Aal0KB@chimera>
	 <r-4Wjt4coy.A.ZrC.Ual0KB@chimera>
	 <dd18b0c30910112014m4bfdc238j542864bb9f1e8161@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <dd18b0c30910112014m4bfdc238j542864bb9f1e8161-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Mon, 2009-10-12 at 11:14 +0800, Justin Mattock wrote:
> On Sun, Oct 11, 2009 at 3:22 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> >
> > The following bug entry is on the current list of known regressions
> > from 2.6.31.  Please verify if it still should be listed and let me know
> > (either way).
> >
> >
> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=14379
> > Subject         : ACPI Warning for _SB_.BAT0._BIF: Converted Buffer to expected String
> > Submitter       : Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date            : 2009-10-08 21:46 (4 days old)
> > References      : http://marc.info/?l=linux-kernel&m=125504031328941&w=4
> >
> >
> >
> 
> pulled rc4 today and the warning is still present.
> here is the results of git bisect:

Patch at http://bugzilla.kernel.org/show_bug.cgi?id=14379#c1 fixes the
warning.

Actually, the _BIF warning was fixed at commit
e899b6485c332aa2d7510739507ab5e5d7b28e59.
See http://bugzilla.kernel.org/show_bug.cgi?id=11822#c14 

I made a mistake at the cleanup of predefined method table so the
warning shows up again.

Lin Ming

> 
> d9adc2e031bd22d5d9607a53a8d3b30e0b675f39 is the first bad commit
> commit d9adc2e031bd22d5d9607a53a8d3b30e0b675f39
> Author: Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> Date:   Mon Jul 27 11:31:10 2009 +0800
> 
>     ACPICA: reformat predefined method table, no functional change
> 
>     Reformatted the methods that return package objects.
> 
>     Signed-off-by: Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
>     Signed-off-by: Len Brown <len.brown-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> 
> :040000 040000 17c30a6e75ce2fafc677b32bdcf3fbecae8458ab
> f43e38a2a4034bcc73ef14943e61187f11b08731 M      drivers
> 
> I will go and attach the git log to the bug report.
> 
