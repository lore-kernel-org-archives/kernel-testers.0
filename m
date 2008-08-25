From: Avi Kivity <avi-atKUWr5tajBWk0Htik3J/w@public.gmane.org>
Subject: Re: [Bug #11254] KVM: fix userspace ABI breakage
Date: Mon, 25 Aug 2008 13:23:30 +0300
Message-ID: <48B28822.1010103@qumranet.com>
References: <mzBsPw3QUOF.A.87F.wZGsIB@albercik> <VSpL6AnBTS.A.mGB.TcGsIB@albercik> <20080824192714.GC1627@cs181140183.pp.htv.fi>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080824192714.GC1627-re2QNgSbS3j4D6uPqz5PAwR5/fbUUdgG@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

Adrian Bunk wrote:
> The discussion in Bugzilla whether it is a regression at all can be 
> condensed to the following question:
>
> Can a struct that is part of the 2.6.26 userspace headers be defined to 
> be part of an "experimental ABI" and therefore be changed?
>   

It is part of the experimental ABI.

However, as I'm going to apply your patch (as being the simplest fix, 
and as there is no measurable performance impact), the question is moot.

-- 
error compiling committee.c: too many arguments to function
