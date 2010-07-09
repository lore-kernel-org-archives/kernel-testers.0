From: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Subject: Re: [Bug #16122] 2.6.35-rc1: WARNING at fs/fs-writeback.c:1142 __mark_inode_dirty+0x103/0x170
Date: Thu, 08 Jul 2010 20:19:44 -0500
Message-ID: <4C367930.9000107@lwfinger.net>
References: <-IGZ64uxA6G.A.P0H.bLmNMB@chimera> <TXb9XdQzJoD.A.TQE.dOmNMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=LTJ1YMByIBEpku/spbE8j3nmT1+FXKT/rKR9hlNtiQM=;
        b=OL19u+j5EQapByjWDGOxVexwIZkA+ZGtaSEfg+Eo2PvAnr2HHvCNICea3oQ++ouew7
         +cqBdXBQtjYOjSD+LH7Kb3X2EL22G9SkWIJXFMya8ThPjbWQ/Gs6km4ctBS1eJ01NO8V
         MU7oW3gFmkdeKSezSgQ96m4U8mzXpXgzJjPNM=
In-Reply-To: <TXb9XdQzJoD.A.TQE.dOmNMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jens Axboe <axboe-tSWWG44O7X1aa/9Udqfwiw@public.gmane.org>

On 07/08/2010 06:33 PM, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.34.  Please verify if it still should be listed and let the tracking team
> know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16122
> Subject		: 2.6.35-rc1: WARNING at fs/fs-writeback.c:1142 __mark_inode_dirty+0x103/0x170
> Submitter	: Larry Finger<Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
> Date		: 2010-06-04 13:18 (35 days old)
> Handled-By	: Jens Axboe<axboe-tSWWG44O7X1aa/9Udqfwiw@public.gmane.org>

This bug is still present in 2.6.35-rc4.

Larry
