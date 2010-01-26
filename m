From: Dmitry Artamonow <mad_soft-aPYA7nAdAYY@public.gmane.org>
Subject: Re: R: [Bug #14886] Asus P2B-DS not detected as SMP moterboard
Date: Tue, 26 Jan 2010 18:53:30 +0300
Message-ID: <20100126155330.GA4231@rainbow>
References: <5550914.425471263201351807.JavaMail.defaultUser@defaultHost>
 <201001112040.45514.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <201001112040.45514.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: "flinco-VGgt2q2+T+FeoWH0uzbU5w@public.gmane.org" <flinco-VGgt2q2+T+FeoWH0uzbU5w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Arkadiusz Miskiewicz <arekm-evZBlRFTdvA@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Feng Tang <feng.tang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Len Brown <len.brown-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On 20:40 Mon 11 Jan     , Rafael J. Wysocki wrote:
> On Monday 11 January 2010, flinco-VGgt2q2+T+FeoWH0uzbU5w@public.gmane.org wrote:
> > Tried 2.6.32.3. The issue is still present.
> 
> Thanks for the update.
> 
> Rafael

(I have some troubles with registering on kernel bugzilla, so posting here,
adding people from bug to CC: list)

Hi!
I'm also using P2B-DS and can confirm that starting with kernel 2.6.32
SMP stopped working (and don't work still - tested with current git
v2.6.33-rc5-238-g158c168) The issue seems to have something to do with the
fact that ACPI is blacklisted on P2B-DS. I used to workaround this bug
on newer kernels (>=2.6.32) by passing "acpi=force" in kernel arguments.
Finally, yesterday I found some time to write simple automated bisection
script and leaved it to run on machine overnight. Here's result:
---------------------------------------------------------------------------
e5b8fc6ac158f65598f58dba2c0d52ba3b412f52 is the first bad commit
commit e5b8fc6ac158f65598f58dba2c0d52ba3b412f52
Author: Len Brown <len.brown-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Date:   Tue Jul 7 23:22:58 2009 -0400

    ACPI: check acpi_disabled in acpi_table_parse() and acpi_table_parse_entries()
    
    Allow consumers of the acpi_table_parse()/acpi_table_parse_entries() API
    to gracefully handle the acpi_disabled=1 case via return value
    rather than checking the global flag themselves.
    
    Signed-off-by: Feng Tang <feng.tang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
    Signed-off-by: Len Brown <len.brown-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
---------------------------------------------------------------------------

I re-checked this result and yes - reverting this commit on both 2.6.32 and
current git (v2.6.33-rc5-238-g158c168) makes problem go away.

-- 
Best regards,
Dmitry "MAD" Artamonow
