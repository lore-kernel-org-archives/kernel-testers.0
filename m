From: Lennert Buytenhek <buytenh-OLH4Qvv75CYX/NnBR394Jw@public.gmane.org>
Subject: Re: [Bug #11334] myri10ge: use ioremap_wc: compilation failure on ARM
Date: Wed, 10 Sep 2008 14:09:34 +0200
Message-ID: <20080910120934.GA23772@xi.wantstofly.org>
References: <s3QDdfEDq6.A.wlH.MowwIB@albercik> <Wz8EH5sroeE.A.aLC.aqwwIB@albercik>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <Wz8EH5sroeE.A.aLC.aqwwIB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Brice Goglin <brice-vV262kQ/Wyo@public.gmane.org>, Martin Michlmayr <tbm-R+vWnYXSFMfQT0dZR+AlfA@public.gmane.org>

On Sat, Sep 06, 2008 at 11:30:38PM +0200, Rafael J. Wysocki wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11334
> Subject		: myri10ge: use ioremap_wc: compilation failure on ARM
> Submitter	: Martin Michlmayr <tbm-R+vWnYXSFMfQT0dZR+AlfA@public.gmane.org>
> Date		: 2008-08-10 11:25 (28 days old)
> References	: http://marc.info/?l=linux-netdev&m=121836771727632&w=2
> Handled-By	: Lennert Buytenhek <buytenh-OLH4Qvv75CYX/NnBR394Jw@public.gmane.org>
> Patch		: http://bugzilla.kernel.org/show_bug.cgi?id=11334#c13

The patch to fix this is upstream now (in -rc6), as commit
1ad77a876da48331451698cc4172c90ab9b6372f.
