From: Guenter Roeck <patchwork-2CcfMPLixEJMOuyiOMDZUm2NpIq0e7HX@public.gmane.org>
Subject: [PATCH] mn10300: Wire up mn10300_dma_supported
Date: Mon, 25 Jan 2016 22:55:43 -0800
Message-ID: <1453791343-12383-1-git-send-email-patchwork@patchwork.roeck-us.net>
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=roeck-us.net; s=default; h=Message-Id:Date:Subject:Cc:To:From;
	bh=fF64WXLgL+9SnMiLgq6PeUPy4Xb4eaIoOLruNrCAiPI=; b=qAwgfmdWt0BH0D//ofHK+/0PXe
	f3rP7l8U+kakT7T7vaWf+0zGAmQQYRMnbfZq8vKeB9aRWMmb//Dh0+bIf/lCpDzTvqZ5FUD6SPQOn
	EeUR60M6NJgorofcxvk7UhvFKT1m0lH2exWmg2Qt0wyTwGtDRDXZGadD69TsRb8peI/boD7SE+H5M
	sugrUMuNuOvnEg7jp4v4YtUfYj+RRlWqTzBIHQXWPS61wjB1HhiMnZj/2snYcKCDlZX72LURv3t36
	GQAbrFJWxpTN+RABmryeKdgXMxgD3ub+kkFRPA8Tya6wCKht/FpSp37ZRwQ1qF41B/ujhjw07y3ku
	WzZCBCzg==;
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Howells <dhowells-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: Koichi Yasutake <yasutake.koichi-NAum8xwdG0+S7A1Ibl2khg@public.gmane.org>, linux-am33-list-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>, Christoph Hellwig <hch-jcswGhMUV9g@public.gmane.org>

From: Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>

Commit f151341ca00e ("mn10300: convert to dma_map_ops") declares
mn10300_dma_supported, but does not wire it up. This results in
the following build warning.

arch/mn10300/mm/dma-alloc.c: warning:
	'mn10300_dma_supported' defined but not used

Fixes: f151341ca00e ("mn10300: convert to dma_map_ops")
Cc: Christoph Hellwig <hch-jcswGhMUV9g@public.gmane.org>
Signed-off-by: Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
---
 arch/mn10300/mm/dma-alloc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mn10300/mm/dma-alloc.c b/arch/mn10300/mm/dma-alloc.c
index 8842394cb49a..5ff49d67f55a 100644
--- a/arch/mn10300/mm/dma-alloc.c
+++ b/arch/mn10300/mm/dma-alloc.c
@@ -128,4 +128,5 @@ struct dma_map_ops mn10300_dma_ops = {
 	.map_sg			= mn10300_dma_map_sg,
 	.sync_single_for_device	= mn10300_dma_sync_single_for_device,
 	.sync_sg_for_device	= mn10300_dma_sync_sg_for_device,
+	.dma_supported		= mn10300_dma_supported,
 };
-- 
2.1.4
