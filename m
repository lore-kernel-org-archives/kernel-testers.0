From: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [xfs-masters] 2.6.29-rc: kernel BUG at fs/xfs/support/debug.c:108
Date: Fri, 23 Jan 2009 21:34:36 +0300
Message-ID: <a4423d670901231034k6971ed91tbed3d6eab05d7285@mail.gmail.com>
References: <20090110143924.GA25900@infradead.org>
	 <20090110152803.GA7469@infradead.org> <20090110221459.GA8873@orion>
	 <20090111104659.GB8071@disturbed>
	 <a4423d670901111648w26e86baajcf7b6d98ff37d043@mail.gmail.com>
	 <20090112034550.GI8071@disturbed>
	 <a4423d670901120008j728af9cdrbed8bbb938117ea3@mail.gmail.com>
	 <20090112211848.GL8071@disturbed>
	 <a4423d670901201054t3e48ece2ned4a7e3254250fce@mail.gmail.com>
	 <20090120203319.GA7103@infradead.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=WMY5tJUZGY+wDX10W6rK9EVvsVa691JwmiAEfTgTTY0=;
        b=JuK7h9QhOTk4EYk5/TEBF7xAgkVYVgYm8thLrX/zK9egNfLKAW2k+wesQeimu7qgkG
         QKWSfOSN4m2rSKpHGs5p6WqSZQD7wUnp1GZ6TngW9j0rSo21jydSm/CzNeB9sH51llTk
         DLPAYGYwNJOcdJtGlv8rvdP2RPjilTJL/NCGs=
In-Reply-To: <20090120203319.GA7103-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Cc: Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>, xfs-masters-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org, xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

2009/1/20 Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>:
> On Tue, Jan 20, 2009 at 09:54:44PM +0300, Alexander Beregalov wrote:
>> Hi
>>
>> Is it a new bug?
>> It is pre-2.6.29-rc1 kernel, which was supossed to be free of the bug
>> "fs_is_ok, file: fs/xfs/xfs_btree.c, line: 3327"
>
> From the trace it's a post-btree consolidation kernel, so all the bugs
> in -rc1 are there, too.  It looks like this is the readahead type
> cockup that Geert noticed, so this particular one should be fixed in
> -rc2.
>
> I would strongly recommend to just turn on CNFIG_LBD for post-2.6.28
> kernels for now as all the problems showing up are without CONFIG_LBD.
Yes, both bugs do not appear on kernel with CONFIG_LBD=y.

But I do not need LBD. Does XFS strongly require LBD?
Should I always turn it on even if I do not have files or devices of size 2Tb+ ?
