From: Robert Hancock <hancockrwd-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14922] 2.6.32 seemed to have broken nVidia MCP7A sata 
	controller
Date: Sun, 10 Jan 2010 17:17:04 -0600
Message-ID: <51f3faa71001101517i10bde693n51688e2bd8c411b8@mail.gmail.com>
References: <nzLqtSp97aP.A.RGB.hglSLB@chimera>
	 <CXIfLt-ygXM.A.-sB.uglSLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=baYhK7o1KVmLCgAlgbSNfhuDn6UrTQ62Tm/TjWH0L24=;
        b=n3xSAElTEJSwgsraDqyyvXk6g0nXhkZAWW6LXz+FmxR9O5yrEsvpHbeqsvDldU33nG
         KdGOr0U6eXd9pExd4lVB1r2X9bNe6ngQczLHZtLG1DReZhIac/CcrnGE/ranNbA9QLpw
         4shATpFRirOKmpzmuR5yE609XIT3fJQak0c8s=
In-Reply-To: <CXIfLt-ygXM.A.-sB.uglSLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Mike Cui <cuicui-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sun, Jan 10, 2010 at 4:56 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32. =A0Please verify if it still sh=
ould
> be listed and let me know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
14922
> Subject =A0 =A0 =A0 =A0 : 2.6.32 seemed to have broken nVidia MCP7A s=
ata controller
> Submitter =A0 =A0 =A0 : Mike Cui <cuicui-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-12-19 6:13 (23 days old)
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-ide&m=3D126120323=
407742&w=3D4
> Handled-By =A0 =A0 =A0: Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Robert Hancock <hancockrwd@gmail.c=
om>

Still outstanding. Waiting for testing results from the reporter with
that drive on another AHCI controller, if possible. I CCed Peer Chen
from NVIDIA on the Bugzilla report, maybe they know if there is some
known problem with FPDMA AA on that controller.
