From: Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
Subject: [PATCH] serial: clps711x: Fix bad usage of IS_ERR_VALUE
Date: Tue,  9 Feb 2016 07:06:47 -0800
Message-ID: <1455030407-9075-1-git-send-email-linux@roeck-us.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=roeck-us.net; s=default; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From;
	bh=6GZV4tRWJVyJCJKfiRBRia66S81Uh37Rz5OyPAx9RUQ=; b=nTzjQ7beKmrXir1iguX2lNE3QI
	jeB8Uh9TyPwPb5Q98GIbOizmg2IEdgKO2EhAdJ1gCPXO90riarYHFEksbAk2H3SAHu9+TEVkXluAp
	5NzhnbUsupajhpqvlp7Q4YpXJiatYIFG9w72fKTSfCaz18UZRsplyC5ZLykMeNUXcoFc2H5vjqQ5X
	OhzL+o1C5Bh2tKxVo6tcDrFgLhpI3RXW8A8/rK6nWi2JnmHrdhlLdCk3ajTghkk6Gw0EAec37G0mS
	MvBITxVJWwze5lxDXV9jqTmbfNS60ewhKkg8rxyKdSVH9zMc4cL4MvMDYKhWLrDtn6gTCeL+w9N7P
	Y8ajQg/Q==;
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>
Cc: Jiri Slaby <jslaby-IBi9RG/b67k@public.gmane.org>, linux-serial-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>

IS_ERR_VALUE() assumes that its parameter is an unsigned long.
It can not be used to check if an unsigned int reflects an error.
Doing so can result in the following build warning.

drivers/tty/serial/clps711x.c: In function =E2=80=98uart_clps711x_probe=
=E2=80=99:
include/linux/err.h:21:38: warning:
	comparison is always false due to limited range of data type
drivers/tty/serial/clps711x.c:471:6: note: in expansion of macro =E2=80=
=98IS_ERR_VALUE=E2=80=99

If that warning is seen, an error return from platform_get_irq() is mis=
sed.

Use a temporary variable to check for errors from platform_get_irq().
Also don't use IS_ERR_VALUE() to check if an integer variable is < 0.
The variable can be checked directly in that case.

Signed-off-by: Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
---
 drivers/tty/serial/clps711x.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/tty/serial/clps711x.c b/drivers/tty/serial/clps711=
x.c
index b3a4e0cdddaa..5beafd2d2218 100644
--- a/drivers/tty/serial/clps711x.c
+++ b/drivers/tty/serial/clps711x.c
@@ -450,6 +450,7 @@ static int uart_clps711x_probe(struct platform_devi=
ce *pdev)
 	struct clps711x_port *s;
 	struct resource *res;
 	struct clk *uart_clk;
+	int irq;
=20
 	if (index < 0 || index >=3D UART_CLPS711X_NR)
 		return -EINVAL;
@@ -467,12 +468,13 @@ static int uart_clps711x_probe(struct platform_de=
vice *pdev)
 	if (IS_ERR(s->port.membase))
 		return PTR_ERR(s->port.membase);
=20
-	s->port.irq =3D platform_get_irq(pdev, 0);
-	if (IS_ERR_VALUE(s->port.irq))
-		return s->port.irq;
+	irq =3D platform_get_irq(pdev, 0);
+	if (irq < 0)
+		return irq;
+	s->port.irq =3D irq;
=20
 	s->rx_irq =3D platform_get_irq(pdev, 1);
-	if (IS_ERR_VALUE(s->rx_irq))
+	if (s->rx_irq < 0)
 		return s->rx_irq;
=20
 	if (!np) {
--=20
2.5.0
