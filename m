From: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] mn10300: Wire up mn10300_dma_supported
Date: Tue, 26 Jan 2016 17:55:49 +0100
Message-ID: <20160126165549.GA3313@lst.de>
References: <1453791343-12383-1-git-send-email-patchwork@patchwork.roeck-us.net>
Mime-Version: 1.0
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1453791343-12383-1-git-send-email-patchwork@patchwork.roeck-us.net>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Guenter Roeck <patchwork@patchwork.roeck-us.net>
Cc: David Howells <dhowells@redhat.com>, Koichi Yasutake <yasutake.koichi@jp.panasonic.com>, linux-am33-list@redhat.com, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>, Christoph Hellwig <hch@lst.de>

On Mon, Jan 25, 2016 at 10:55:43PM -0800, Guenter Roeck wrote:
> From: Guenter Roeck <linux@roeck-us.net>
> 
> Commit f151341ca00e ("mn10300: convert to dma_map_ops") declares
> mn10300_dma_supported, but does not wire it up. This results in
> the following build warning.
> 
> arch/mn10300/mm/dma-alloc.c: warning:
> 	'mn10300_dma_supported' defined but not used

Thanks for catching this!

Reviewed-by: Christoph Hellwig <hch@lst.de>
