From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #24772] Crash with btrfs rootfs on dm-crypt [ kernel BUG at fs/btrfs/inode.c:806! ] on linux 2.6.37-rc5
Date: Thu, 30 Dec 2010 00:07:01 +0100 (CET)
Message-ID: <sV7shrPOroO.A.nPF.r-7GNB@chimera>
References: <96DQe4a_2tH.A.4RE.497GNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <96DQe4a_2tH.A.4RE.497GNB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Fabio Comolli <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.36.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=24772
Subject		: Crash with btrfs rootfs on dm-crypt [ kernel BUG at fs/btrfs/inode.c:806! ] on linux 2.6.37-rc5
Submitter	: Fabio Comolli <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2010-12-10 20:30 (20 days old)
Message-ID	: <AANLkTi=j9zsaYNcu=NgGV=HfE-3rNHzVswov8VrgwjQp-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=129201308706568&w=2

