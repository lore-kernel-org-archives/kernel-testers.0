From: Grant Coady <grant_lkml-rGYn+TmxqGy6c6uEtOJ/EA@public.gmane.org>
Subject: Re: 2.6.26-rc5-mm2 lockup up on Intel G33+ICH9R+Core2Duo, -mm1 okay
Date: Tue, 10 Jun 2008 20:20:09 +1000
Message-ID: <73ls44tntnv8ro57chp1on2crsqkoilmkj@4ax.com>
References: <20080609223145.5c9a2878.akpm@linux-foundation.org>
Reply-To: Grant Coady <gcoady.lk-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080609223145.5c9a2878.akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org

On Mon, 9 Jun 2008 22:31:45 -0700, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:

>
>ftp://ftp.kernel.org/pub/linux/kernel/people/akpm/patches/2.6/2.6.26-rc5/2.6.26-rc5-mm2/
>
>- This is a bugfixed version of 2.6.26-rc5-mm1 - mainly to repair a
>  vmscan.c bug which would have prevented testing of the other vmscan.c
>  bugs^Wchanges.

No it's not :)

-mm1 worked fine here but -mm2 locks up just after saying:
agpgart: Detected 7164K stolen memory.

Nothing in logs (session not recorded - hit reset to restart).

config and dmseg for -mm1 at (same .config for mm2):

  http://bugsplatter.mine.nu/test/boxen/pooh/config-2.6.26-rc5-mm1a.gz
  http://bugsplatter.mine.nu/test/boxen/pooh/dmesg-2.6.26-rc5-mm1a.gz

Grant.
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
