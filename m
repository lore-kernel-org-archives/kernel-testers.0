From: Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15805] reiserfs locking
Date: Sat, 10 Jul 2010 15:56:11 +0200
Message-ID: <20100710135606.GB5306@nowhere>
References: <xkNyyYrLiTN.A.s_G.7p7NMB@chimera> <Hc02ROPrUsG.A.vs.ls7NMB@chimera> <20100710014504.GC5269@nowhere> <20100710070650.GA16248@elte.hu>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=7Q/mER7+a1OgOj3GK085e+nxe0GAsk+2JglpAKEltTM=;
        b=mT8VYW25fgxS3qA0NgaDJ4Eybxb6CMrkXKx7wwL531mmxdTAg2ApbElGujIyhtrJ0y
         sEf7vRtf16fBl6eQpm1g0pKVtQk24EXDMvkHuteEc2yPtvJzDMVrctJ4/7KBeuBzdnfP
         tTUuQ6R0zdLZuzsXoSIHnFIBvphkhKQDxVts8=
Content-Disposition: inline
In-Reply-To: <20100710070650.GA16248-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Alexander Viro <viro-rfM+Q5joDG/XmaaqVzeoHQ@public.gmane.org>

On Sat, Jul 10, 2010 at 09:06:50AM +0200, Ingo Molnar wrote:
> 
> * Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> 
> > On Sat, Jul 10, 2010 at 02:33:24AM +0200, Rafael J. Wysocki wrote:
> > > This message has been generated automatically as a part of a report
> > > of regressions introduced between 2.6.33 and 2.6.34.
> > > 
> > > The following bug entry is on the current list of known regressions
> > > introduced between 2.6.33 and 2.6.34.  Please verify if it still should
> > > be listed and let the tracking team know (either way).
> > > 
> > > 
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15805
> > > Subject		: reiserfs locking
> > > Submitter	: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > > Date		: 2010-04-15 21:02 (86 days old)
> > > Message-ID	: <t2ka4423d671004151402n7b2dc425mdc9c6bb9640d63fb-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
> > > References	: http://marc.info/?l=linux-kernel&m=127136535323933&w=2
> > > Handled-By	: Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > 
> > 
> > It's a duplicate of 16334. Or rather 16334 is a duplicate of this
> > but the discussion about the issue was more developped in 16334.
> > 
> > Anyway this is not a regression (at least not recent) and the fix
> > from Al is in the vfs tree in the for-next branch on commit
> > 6c2bdaf089a3876226893fab00dd83596c465ad2
> > "Fix reiserfs_file_release()"
> 
> Since it's a reproducible deadlock maybe the fix should go upstream faster 
> than v2.6.36?
> 
> Thanks,
> 
> 	Ingo


May be yeah. Although the fix is not a naive trick and it changes a sensitive
piece of code.

Don't know what Al has planned with it.
