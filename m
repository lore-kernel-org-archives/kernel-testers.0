From: Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
Subject: [PATCH] [media] atmel-isi: Fix bad usage of IS_ERR_VALUE
Date: Tue,  9 Feb 2016 06:43:42 -0800
Message-ID: <1455029022-8234-1-git-send-email-linux@roeck-us.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=roeck-us.net; s=default; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From;
	bh=RATTOuCW8jFSfrVwN5+pBMJrgr9KAnE3SKaLnYtXP5o=; b=WpOEGF5Di9uvBN4d6tr0XXk6A8
	XgMbKE67iNPBSyJa//a1PRoO06/P/Qy6lF2gUNNuvPQbnh/m/pCV0PVxBZx+aHJyOmWYzUs9WoWp3
	CTPjAPDXpTAUxw6cYHKMyODF8j1jbXm0WVtRdWV3M1qNl4zA9P+Qc7PtbX6TcrOfvLS4wzvy+DwIn
	P0l6cOeDM9P/wI2JIT9Q75fQZ18ngPCdLaeFBWrQc65xeIuLkkWUrLQ23X3iRz33BDKxinc4Gl4y3
	fYKSQwl/B2+TR+vMwaUEQ5gtnVkvX1bLgqmFDPA2XXxODWnqFD8lXKi5tWoB6gx2a0Ynhlhmyow+a
	bBMG5BLw==;
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Ludovic Desroches <ludovic.desroches-AIFe0yeh4nAAvxtiuMwx3w@public.gmane.org>
Cc: Guennadi Liakhovetski <g.liakhovetski-Mmb7MZpHnFY@public.gmane.org>, Mauro Carvalho Chehab <mchehab-JPH+aEBZ4P+UEJcrhfAQsw@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>

IS_ERR_VALUE() assumes that its parameter is an unsigned long.
It can not be used to check if an unsigned int reflects an error.
Doing so can result in the following build warning.

drivers/media/platform/soc_camera/atmel-isi.c:
	In function =E2=80=98atmel_isi_probe=E2=80=99:
	include/linux/err.h:21:38: warning:
		comparison is always false due to limited range of data type
drivers/media/platform/soc_camera/atmel-isi.c:1089:6: note:
	in expansion of macro =E2=80=98IS_ERR_VALUE=E2=80=99

If that warning is seen, the return value from platform_get_irq() is no=
t
checked for errors.

Signed-off-by: Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
---
 drivers/media/platform/soc_camera/atmel-isi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/soc_camera/atmel-isi.c b/drivers/me=
dia/platform/soc_camera/atmel-isi.c
index 1af779ee3c74..ab2d9b9b1f5d 100644
--- a/drivers/media/platform/soc_camera/atmel-isi.c
+++ b/drivers/media/platform/soc_camera/atmel-isi.c
@@ -1026,7 +1026,7 @@ static int atmel_isi_parse_dt(struct atmel_isi *i=
si,
=20
 static int atmel_isi_probe(struct platform_device *pdev)
 {
-	unsigned int irq;
+	int irq;
 	struct atmel_isi *isi;
 	struct resource *regs;
 	int ret, i;
@@ -1086,7 +1086,7 @@ static int atmel_isi_probe(struct platform_device=
 *pdev)
 		isi->width_flags |=3D 1 << 9;
=20
 	irq =3D platform_get_irq(pdev, 0);
-	if (IS_ERR_VALUE(irq)) {
+	if (irq < 0) {
 		ret =3D irq;
 		goto err_req_irq;
 	}
--=20
2.5.0
