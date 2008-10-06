From: Jeff Mahoney <jeffm-IBi9RG/b67k@public.gmane.org>
Subject: Re: [Bug #11504] reiserfs ????BUG in 2.6.27-rc5
Date: Mon, 06 Oct 2008 16:21:59 -0400
Message-ID: <48EA7367.10001@suse.com>
References: <0pOgGB.A.uLG.E475IB@wind> <yWwteD.A.dN.u575IB@wind> <48EA423F.50401@oracle.com> <jsrke45fle552s5p007o1pm77v7s3vk15p@4ax.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <jsrke45fle552s5p007o1pm77v7s3vk15p-e09XROE/p8c@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Grant Coady <gcoady.lk-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, reiserfs-devel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Grant Coady wrote:
> Did you unload the live filesystem's module above?  May it's a case of 
> don't do that?

When the file system is mounted, the module count is incremented. You
can't remove the module underneath a live file system.

- -Jeff

- --
Jeff Mahoney
SUSE Labs
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.9 (GNU/Linux)
Comment: Using GnuPG with SUSE - http://enigmail.mozdev.org

iEYEARECAAYFAkjqc2cACgkQLPWxlyuTD7ICtwCfabHYk34DH5pFDQyChfxpokdx
/EsAn1bpcobk7oLu1K0OwrzWIXj3r08e
=2yov
-----END PGP SIGNATURE-----
