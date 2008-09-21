From: "Justin Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11552] Disabling IRQ #23
Date: Sun, 21 Sep 2008 16:16:42 -0700
Message-ID: <dd18b0c30809211616g658b50c8k2ea9f9953f1de96f@mail.gmail.com>
References: <PJz8fNrJNHG.A.65F.wzq1IB@albercik>
	 <7lIhZC4hCxE.A.vqG.X0q1IB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=C30NdTra9Di2e6fpXrXclqwCZqF1iBftUooSx2kcRis=;
        b=qcn5UFyTwA2SGN9/zPEjwaP6HJdYorMfM1xQxu08Lus1RS/aiLHPXWF12ovY2Mkir2
         3XeIm67frkJpmax7nq/lx0rGMW3V2Orz9lMZWvC5zI6rq4Q5WJB2oby62EEHUQi7Sgzt
         gks9AyT/Bd6elR3Z7vsP3aGTrTNonABoxeqc0=
In-Reply-To: <7lIhZC4hCxE.A.vqG.X0q1IB@albercik>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, David Brownell <david-b-yBeKhBN/0LDR7s880joybQ@public.gmane.org>

On Sun, Sep 21, 2008 at 11:54 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=11552
> Subject         : Disabling IRQ #23
> Submitter       : Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date            : 2008-09-09 19:08 (13 days old)
> References      : http://marc.info/?l=linux-kernel&m=122098735230906&w=4
>                  http://marc.info/?l=linux-kernel&m=122107367715361&w=4
> Handled-By      : David Brownell <david-b-yBeKhBN/0LDR7s880joybQ@public.gmane.org>
>                  Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
> Patch           : http://marc.info/?l=linux-kernel&m=122187222705195&w=4
>
>
>

not sure if it should be;
From over here, I did a bad install
of isight-firmware-tools, causing hal and udev
to clash.  After making sure the package was either
using hal or udev, there is no message of disable irq #23.
If its not too much trouble is there a way to verify that this was
the case, i.g. if udev creates a dev, then hal creates the same device
will this cause ehci_hcd to have messages of this kind? If so
then thats what happened, if not then theres something else causing this.

-- 
Justin P. Mattock
