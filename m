From: Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15805] reiserfs locking
Date: Thu, 22 Apr 2010 04:52:27 +0200
Message-ID: <20100422025224.GA12888@nowhere>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh> <YeFfFNFyTSF.A.wMG.FRSzLB@tosh>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=77eCJR9hZU1vi8xIZZMzpu4NnLjhE8CbmYceP9xJGmc=;
        b=eesvvcbM6ZhxUzK1ATSm05QA4k9uM2O58hkamjtXR3i+PX2ijcvLsqER8SRZ3qU/33
         FDXjdKYcACYo08LqPqyVypm2iyu3OgsnAHCE+X+QI78eeeB0ffz7EkWxWaeFq6jl8Mb8
         TQVwbTX2GWijRLalLJMzhlGu6chCBS4xtojok=
Content-Disposition: inline
In-Reply-To: <YeFfFNFyTSF.A.wMG.FRSzLB@tosh>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jeff Mahoney <jeffm-UqG9ebRoC6bqu1fStC9NPNBPR1lH4CV8@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Tue, Apr 20, 2010 at 05:19:25AM +0200, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.33.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15805
> Subject		: reiserfs locking
> Submitter	: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2010-04-15 21:02 (5 days old)
> Message-ID	: <t2ka4423d671004151402n7b2dc425mdc9c6bb9640d63fb-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=127136535323933&w=2


That doesn't look like related to the bkl removal.

In fact what I wonder is how we missed that before.

vfs_readdir() take the directory inode mutex
    |
    ------- copy_to_user() takes the mm->mmap_sem

sys_unmap() takes mm->mmap_sem
    |
    ------- reiserfs_file_release() takes inode mutex


The lock inversion can not happen as sys_getdents() can't be called
after the directory is closed.

I'm not sure what to do. Adding more people in Cc.
