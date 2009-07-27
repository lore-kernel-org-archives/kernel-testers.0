From: "Carlos R. Mafra" <crmafra2-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [Bisected] [Bug #13821] Replugging USB serial converter uses new
	device node
Date: Mon, 27 Jul 2009 04:26:23 +0200
Message-ID: <20090727022623.GA6614@Pilar.aei.mpg.de>
References: <Jya1GruKQpD.A.16.2GObKB@chimera> <3zAHs5O6maO.A.p7C.WHObKB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=RixEappee3fvWxbwvKi7R+uJZ5bLTO88lkcxOlSkMhY=;
        b=n2JlvaX/U66XNUDmQroWSCpuwLwbz+SsQoeUdVCybyz36U3ADMxyB5MmEHkEwRF+X1
         uI76UsxSn6RnAAgYnGlKoUhkjuZPAPNzkGiVlrGVbjebR/IT/dVN2HF16weAf04/A4y6
         DJu63ASZTZovDIARcq8Y26jW3aAovhPGJyKZI=
Content-Disposition: inline
In-Reply-To: <3zAHs5O6maO.A.p7C.WHObKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, Ferenc Wagner <wferi-eEbw3PyuezQ@public.gmane.org>, Kay Sievers <kay.sievers-tD+1rO4QERM@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>

On Sun 26.Jul'09 at 22:28:27 +0200, Rafael J. Wysocki wrote:
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13821
> Subject		: Replugging USB serial converter uses new device node
> Submitter	: Ferenc Wagner <wferi-eEbw3PyuezQ@public.gmane.org>
> Date		: 2009-07-18 20:04 (9 days old)
> References	: http://marc.info/?l=linux-kernel&m=124794754015776&w=4

I was scanning the regressions list and noticed that I could reproduce
this bug.

So I bisected it to commit 335f8514f200e63d689113d29cb7253a5c282967
("tty: Bring the usb tty port structure into more use"), from Alan
Cox.

I did not double check if reverting it from -rc4 fixes the issue,
but I noticed that this patch touches drivers/usb/serial/option.c, which
is the driver I used to test this problem.

If there is anything else I can do (give more info, test patches etc),
please let me know.
