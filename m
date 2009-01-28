From: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12402] 2.6.29-rc: kernel BUG at fs/xfs/support/debug.c:108
Date: Thu, 29 Jan 2009 02:39:17 +0300
Message-ID: <a4423d670901281539s958128avcaf4756021125795@mail.gmail.com>
References: <0GOi9pntEoL.A.iGF.B9QdJB@chimera>
	 <2QN7KFic7LG.A.03.I-QdJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=cwrlsQGLkeWVF+m5YrOSkroRCgkqhi+JWD7MhRSbGIA=;
        b=wgJESzK9r+eh3P6YWloVfP5rbJMCEbit0czLkOZkSGfAYxkkSHcNoG3Bhd5TXP8cN9
         /dAsm1wWfrwbcxr0nPi/OJMgJtIBUZvraWCCC92daO1cjoR92r8KCt+GKbqZucJTAgfF
         846Ut8/SrF6sURmocOKXaOYaErmHjHC8vlFs8=
In-Reply-To: <2QN7KFic7LG.A.03.I-QdJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, Eric Sandeen <sandeen-+82itfer+wXR7s880joybQ@public.gmane.org>, Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>

2009/1/20 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12402
> Subject         : 2.6.29-rc: kernel BUG at fs/xfs/support/debug.c:108
> Submitter       : Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date            : 2009-01-09 04:41 (11 days old)
> References      : http://thread.gmane.org/gmane.comp.file-systems.xfs.general/27548
> Handled-By      : Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
>

Should be closed, thanks.

commit 74e2d06521913443c7e2697037909f5efc200ec5
(Long btree pointers are still 64 bit on disk)
