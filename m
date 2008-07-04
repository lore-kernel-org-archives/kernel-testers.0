From: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: 2.6.26-rc8-mm1: unable to mount nfs shares
Date: Fri, 4 Jul 2008 16:07:11 -0700
Message-ID: <20080704160711.299f26a3.akpm@linux-foundation.org>
References: <20080703020236.adaa51fa.akpm@linux-foundation.org>
	<200807050049.33287.m.kozlowski@tuxland.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200807050049.33287.m.kozlowski-NWF1p15JEu3VItvQsEIGlw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mariusz Kozlowski <m.kozlowski-NWF1p15JEu3VItvQsEIGlw@public.gmane.org>
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org

On Sat, 5 Jul 2008 00:49:33 +0200 Mariusz Kozlowski <m.kozlowski-NWF1p15JEu3VItvQsEIGlw@public.gmane.org> wrote:

> $ mount some/nfs/share
> mount.nfs: Input/output error
> 
> dmesg says: RPC: transport (0) not supported
> 
> but I guess it's known issue http://lkml.org/lkml/2008/7/1/438 ?
> 

OK, thanks, I put Trond's fix into hot-fixes/

--- a/fs/nfs/super.c~nfs-fix-the-mount-protocol-defaults-for-binary-mounts
+++ a/fs/nfs/super.c
@@ -1571,6 +1571,7 @@ static int nfs_validate_mount_data(void 
 
 		if (!(data->flags & NFS_MOUNT_TCP))
 			args->nfs_server.protocol = XPRT_TRANSPORT_UDP;
+		nfs_set_transport_defaults(args);
 		/* N.B. caller will free nfs_server.hostname in all cases */
 		args->nfs_server.hostname = kstrdup(data->hostname, GFP_KERNEL);
 		args->namlen		= data->namlen;
_
