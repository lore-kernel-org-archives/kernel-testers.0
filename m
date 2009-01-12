From: "Alexander Beregalov" <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [xfs-masters] 2.6.29-rc: kernel BUG at fs/xfs/support/debug.c:108
Date: Mon, 12 Jan 2009 03:48:13 +0300
Message-ID: <a4423d670901111648w26e86baajcf7b6d98ff37d043@mail.gmail.com>
References: <20090109044121.GA31280@orion>
	 <a4423d670901091353s7ff12207gcb38eb093d77d401@mail.gmail.com>
	 <a4423d670901091418j5c7fdfb2oeba2f4640f8e29d0@mail.gmail.com>
	 <a4423d670901091511y68a53808rfaab8148526224c6@mail.gmail.com>
	 <a4423d670901100419s2ae106bexac1a538caf654153@mail.gmail.com>
	 <20090110143924.GA25900@infradead.org>
	 <a4423d670901100709v1e7ce0bfs167547c5001787ac@mail.gmail.com>
	 <20090110152803.GA7469@infradead.org> <20090110221459.GA8873@orion>
	 <20090111104659.GB8071@disturbed>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=2dNfTEqdMcZqggnRdCn2EZILYdHyU0KVSvYkzD8WelM=;
        b=pcc/uwlInOEWwq5yAjvSD63Y80o7ODr1MiKVoP3k2Jsu7nSTWYDYSRwoAPbljunWq3
         7NxPjij2iwgyGuuR7olgEzviqUNZGs24n5VqlQ+727z3XOurDxnKEK5AWBAJTZPJUfCU
         23KpOnGLOVPA1jvMQWNj+xyBm434qqZWbvGsk=
In-Reply-To: <20090111104659.GB8071@disturbed>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>, Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, xfs-masters-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org, xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

> Hmmmm - this might be getting closer to the source of the bug.
> It's being detecting when reading in the buffer to do a left shift
> now, not during the delete of a record.
>
> I'd suggest that you treat this as the same failure and continue
> the bisect to try to find when no problems show up at all.

687b890a184fef263ebb773926e1f4aa69240d01 is the first bad commit.
Does it make sense?
It can not be reverted from the current git to be sure it is guilty
due to merge conflicts.
