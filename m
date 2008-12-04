From: "Frederik Deweerdt" <frederik.deweerdt-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12047] ACPI toshiba: only register rfkill if bt is enabled
Date: Thu, 4 Dec 2008 08:31:25 +0100
Message-ID: <cd50ff710812032331g69a64a91l89ea239481102b61@mail.gmail.com>
References: <QFIA5HSHV8B.A.2aG.hoxNJB@chimera>
	 <bfPM5B8Tx2B.A.V_H.OpxNJB@chimera>
Reply-To: frederik.deweerdt-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:reply-to
         :to:subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=uHv862i1iW4sLgbSE8QuouoD+/DfZ7dX8XhikZaxPp4=;
        b=ac/bythqPVT9+UKOcmOw03OsEVTIIGjgvm3FA1Rwc1+K/hY2RWLr+PiXo2cch9szBH
         I71gtgitmydXSNicH/U0GcEQVzigHs+h4wTyUMebNZnKC59RwsiUDUfbsvd98Z4alI4B
         PvDUTgIjFpO7hDeB+UpHdrv3NDN/Rt6Pp+7rI=
In-Reply-To: <bfPM5B8Tx2B.A.V_H.OpxNJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrey Borzenkov <arvidjaar-JGs/UdohzUI@public.gmane.org>

Hello Rafael,
On Wed, Dec 3, 2008 at 10:58 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.27.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12047
> Subject         : ACPI toshiba: only register rfkill if bt is enabled
> Submitter       : Andrey Borzenkov <arvidjaar-JGs/UdohzUI@public.gmane.org>
> Date            : 2008-10-28 19:10 (37 days old)
> References      : http://marc.info/?l=linux-kernel&m=122522113619025&w=2
> Handled-By      : Frederik Deweerdt <frederik.deweerdt-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Patch           : http://marc.info/?l=linux-kernel&m=122526843117478&w=2
Still should be listed, an updated patch is in -mm now.

Regards,
Frederik
