From: Carl-Valentin Schmitt <cv.debian-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: SOLVED: Re: holy bim-bam ! kernels obviously have no bugs !
Date: Mon, 2 Apr 2012 23:04:07 +0200
Message-ID: <CALO-NbqQOBGyTy08OkKcpVBdcw3PV6sZ+=o2bO84b12MUHcJVw@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type
         :content-transfer-encoding;
        bh=LptkKR5xaFkUmKiwenWVn7Fx2dZe7zpDVb3TihKE5Hw=;
        b=H2J2kFyZ3SZwjeXQMOorWUaAwQ/3wnRpH6LfVpxnnnqQ2EZ5EomjXVaACIatxUAnkg
         oYbpVoWB0IuLkPPT6U03rU7sjcsheAhfWJfxNV3Q1rGHvAZsF/jDYc5irr0pGmNq1SV2
         dt9cvn8V9gFlqCsPGsaoBUFhyXv/3ynMeKs9bKkL1+p7bVu4VyO/P6HiBD2ihY+pUWOY
         pf1D5NHFnCflLyx1J913gQmvY2Hx6OZrAbuUVTshhHAVQRfNRW4n8GMKsN98FnZMEYYV
         Afj2oHHEZNiauOrYslsDs2ilL/pAZ711CNfNkirdltMcUXStQyyBT5JdSRiyCiV3n8gu
         4Ucg==
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Hello kernel-testers,

sorry for the trash of myself like you see below.

In the meantime I solved this problem, by installing the house-made
packages of debian-drivers
for NVIDIA-cards.

It works now with no problems.

Regards.
Val.

Am 24. Dezember 2011 13:25 schrieb Carl-Valentin Schmitt
<cv.debian-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>:
>
>
> Hello kernel-testers,
>
> here is Debian Squeeze 6.0.3 (stable)
>
> NVIDIA-installer depends on libc resp. on glibc
> and installing a kernel depends too on libc resp. on glibc.
>
> I have trouble with NVIDIA-installer and with installing a kernel
> ( I tried 3.1.2 and 3.1.5)
>
> NVIDIA-installer is breaking off to compile a nvidia-kernel.
> (all necessary packages are installed.)
>
> And I tried to compile a new kernel with 3.1.2 first , then with 3.1.=
5
> both have same FATAL - report:
>
> Booting kernel 3.1.5 is breaking off with 2 lines of :
>
> FATAL : Could not load /lib/modules/3.1.5/modules.
> dep: No such file or directory
>
> ( in kernel 3.1.2 it were 3 lines of that FATAL error )
>
> It looks as if Kernel is not finding my hard-disk, but SATA-modules a=
re
> compiled.
>
> /lib/modules/3.1.5/modules.dep=A0 is existing as file.
>
> After I tried to install with nvidia-installer
> the bug-report by installing a kernel (make or make all is breaking o=
ff)
> changed to this output:
>
>
> LD=A0=A0=A0=A0=A0 drivers/gpu/stub/built-in.o
>
> =A0=A0=A0=A0=A0 CC=A0=A0=A0=A0=A0 drivers/gpu/vga/vgaarb.o
>
> =A0=A0=A0=A0=A0 LD=A0=A0=A0=A0=A0 drivers/gpu/vga/built-in.o
>
> =A0=A0=A0=A0=A0 LD=A0=A0=A0=A0=A0 drivers/gpu/built-in.o
>
> =A0=A0=A0 ld: error: drivers/gpu/vga/built-in.o: incompatible target
>
> =A0=A0=A0 make[2]: *** [drivers/gpu/built-in.o] Fehler 1
>
> =A0=A0=A0 make[1]: *** [drivers/gpu] Fehler 2
>
> =A0=A0=A0 make: *** [drivers] Fehler 2
>
> It looks to me, that kernel-packages (which are taken out now from th=
e list
> at www.kernel.org)
> had no bugs. It was a problem caused by libc resp. glibc ?!
>
> Here all package-dependencies of nvidia-installer and of installing a=
 newer
> kernel
> are fulfilled.
>
> Now it is Christmas ' Eve.
> Have a nice and peaceful time.
>
> Greetings.
> Val.
> cv.debian-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
>
>
