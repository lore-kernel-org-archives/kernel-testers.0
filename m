From: Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14379] ACPI Warning for _SB_.BAT0._BIF: Converted Buffer to 
	expected String
Date: Sun, 11 Oct 2009 20:14:09 -0700
Message-ID: <dd18b0c30910112014m4bfdc238j542864bb9f1e8161@mail.gmail.com>
References: <zJ_pXHNwoHC.A.akB.Aal0KB@chimera>
	 <r-4Wjt4coy.A.ZrC.Ual0KB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=tYMala0cq1ZhxUcvZY2UZSmLVLNEUEVXHWUYtGRRMbU=;
        b=iW+bWsrfuiSqqglaS6fm9H40EVQ6AjFPrBNRQ6It15yMwjSBa5Pz04Rb3N2OQqCUco
         8wQTK0EJA673AAOjh3PutFoRMhixk3jYlNz7dzcKDHgAF32B2YD1sHF7nB91e075LQOP
         GSJXJhx92HQqmn+WqGRV+NzS6JVoL0o2UHAqY=
In-Reply-To: <r-4Wjt4coy.A.ZrC.Ual0KB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Sun, Oct 11, 2009 at 3:22 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.31. =A0Please verify if it still should be listed and let me=
 know
> (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
14379
> Subject =A0 =A0 =A0 =A0 : ACPI Warning for _SB_.BAT0._BIF: Converted =
Buffer to expected String
> Submitter =A0 =A0 =A0 : Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-10-08 21:46 (4 days old)
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D125504=
031328941&w=3D4
>
>
>

pulled rc4 today and the warning is still present.
here is the results of git bisect:

d9adc2e031bd22d5d9607a53a8d3b30e0b675f39 is the first bad commit
commit d9adc2e031bd22d5d9607a53a8d3b30e0b675f39
Author: Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Date:   Mon Jul 27 11:31:10 2009 +0800

    ACPICA: reformat predefined method table, no functional change

    Reformatted the methods that return package objects.

    Signed-off-by: Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
    Signed-off-by: Len Brown <len.brown-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

:040000 040000 17c30a6e75ce2fafc677b32bdcf3fbecae8458ab
f43e38a2a4034bcc73ef14943e61187f11b08731 M      drivers

I will go and attach the git log to the bug report.

--=20
Justin P. Mattock
