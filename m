From: Frederic Weisbecker <fweisbec@gmail.com>
Subject: Re: [Bug #15805] reiserfs locking
Date: Sat, 10 Jul 2010 03:45:06 +0200
Message-ID: <20100710014504.GC5269@nowhere>
References: <xkNyyYrLiTN.A.s_G.7p7NMB@chimera> <Hc02ROPrUsG.A.vs.ls7NMB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=5IzgMMJXnhwgKHKFwIS2U+xOt9jddOw89n7da7faIio=;
        b=PPxTqSiXhFjPK5ZskC/Gvmx6BAUSZe2/KegXYr9NvOZmKVxU4KtXRfshDU3izsASMD
         L9cKMKzhLyTUeoIjV0V2nYZsZWcbTtP9sS0tld8BUoSYlDLsi48HM/CS6XlcIwp2woON
         lRT+E5ETgERJKC6kW0QGYitSp+rJJxIEmKm+U=
Content-Disposition: inline
In-Reply-To: <Hc02ROPrUsG.A.vs.ls7NMB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Alexander Beregalov <a.beregalov@gmail.com>

On Sat, Jul 10, 2010 at 02:33:24AM +0200, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.33 and 2.6.34.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.33 and 2.6.34.  Please verify if it still should
> be listed and let the tracking team know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15805
> Subject		: reiserfs locking
> Submitter	: Alexander Beregalov <a.beregalov@gmail.com>
> Date		: 2010-04-15 21:02 (86 days old)
> Message-ID	: <t2ka4423d671004151402n7b2dc425mdc9c6bb9640d63fb@mail.gmail.com>
> References	: http://marc.info/?l=linux-kernel&m=127136535323933&w=2
> Handled-By	: Frederic Weisbecker <fweisbec@gmail.com>


It's a duplicate of 16334. Or rather 16334 is a duplicate of this
but the discussion about the issue was more developped in 16334.

Anyway this is not a regression (at least not recent) and the fix
from Al is in the vfs tree in the for-next branch on commit
6c2bdaf089a3876226893fab00dd83596c465ad2
"Fix reiserfs_file_release()"

Thanks.
