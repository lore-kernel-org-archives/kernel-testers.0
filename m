From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14791] Something has been broken in the network stack this week
Date: Sun, 10 Jan 2010 23:58:54 +0100
Message-ID: <201001102358.54994.rjw@sisk.pl>
References: <wnS54-l8PVO.A.TlF.oMlSLB@chimera> <omZ8aBZReyD.A.rz.COlSLB@chimera> <1263163616.2236.68.camel@localhost>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1263163616.2236.68.camel@localhost>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Ben Hutchings <ben-/+tVBieCtBitmTQ+vhA3Yw@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>

On Sunday 10 January 2010, Ben Hutchings wrote:
> On Sun, 2010-01-10 at 23:27 +0100, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.32.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14791
> > Subject		: Something has been broken in the network stack this week
> > Submitter	: Delete This Account <speedyboyinovator-PkbjNfxxIARBDgjK7y7TUQ@public.gmane.org>
> > Date		: 2009-12-12 13:06 (30 days old)
> 
> You can mark this as Handled-by me, but I'm waiting for someone
> (anyone!) to verify that this can be solved by reverting changes to this
> driver made by commit 37e8273cd30592d3a82bcb70cbb1bdc4eaeb6b71.  The
> submitter has disappeared.
> 
> The patch is trivial:
> 
> --- a/drivers/net/usb/cdc_ether.c
> +++ b/drivers/net/usb/cdc_ether.c
> @@ -419,7 +419,7 @@
>  
>  static const struct driver_info        cdc_info = {
>         .description =  "CDC Ethernet Device",
> -       .flags =        FLAG_ETHER | FLAG_LINK_INTR,
> +       .flags =        FLAG_ETHER,
>         // .check_connect = cdc_check_connect,
>         .bind =         cdc_bind,
>         .unbind =       usbnet_cdc_unbind,
> --- END ---

Thanks, bug entry updated.

Rafael
