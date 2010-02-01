From: Robert Hancock <hancockrwd-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14922] 2.6.32 seemed to have broken nVidia MCP7A sata 
	controller
Date: Sun, 31 Jan 2010 19:13:00 -0600
Message-ID: <51f3faa71001311713sf4dbd45w240003a77de24f68@mail.gmail.com>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera>
	 <de962C6zBxL.A.AMF.tFiZLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=yh6DcvdnuUfVpm5nmAnMgqSuS3stWehwdMxmpcAFVA4=;
        b=iQ9jQLMhYfHk2qB7kQeD9bjn5ZQoCnrLl4jZmVgYlHI0O2bP0iVRld0T6IvSDYeGsP
         Phr7ucrA7KfqjBUzqqYIpvOytg9QW/2iSURDTrrMnNUuKx1Sv3RzdrCdWrGdhsnTy6nD
         tDRKSC8W7JgOuw88ur+AfYvv01cWCgWJV+IUs=
In-Reply-To: <de962C6zBxL.A.AMF.tFiZLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Mike Cui <cuicui-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sun, Jan 31, 2010 at 6:43 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
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
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-12-19 6:13 (44 days old)
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-ide&m=3D126120323=
407742&w=3D4
> Handled-By =A0 =A0 =A0: Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Robert Hancock <hancockrwd@gmail.c=
om>

Still outstanding. I posted a patch that should fix the problem,
waiting for feedback from the reporter.
