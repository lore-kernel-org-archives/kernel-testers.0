From: Peter 1 Oberparleiter <Peter.Oberparleiter-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
Subject: Re: [BUILD-FAILURE] 2.6.27-rc1-mm1 - allyesconfig build fails on powerpc
Date: Fri, 1 Aug 2008 17:44:07 +0200
Message-ID: <OFD20F5EDA.300B66D1-ONC1257498.00561E0E-C1257498.00567026@de.ibm.com>
References: <20080801052936.GZ20457@bakeyournoodle.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080801052936.GZ20457-B47dsA4koDqXvyopL2yb9tBPR1lH4CV8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Tony Breeds <tony-B47dsA4koDqXvyopL2yb9tBPR1lH4CV8@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kamalesh Babulal <kamalesh-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linuxppc-dev-mnsaURCQ41sdnm+yROfE0A@public.gmane.org, Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>

Tony Breeds <tony-B47dsA4koDqXvyopL2yb9tBPR1lH4CV8@public.gmane.org> wrote on 01.08.2008 07:29:36:

> On Thu, Jul 31, 2008 at 06:13:28PM +0530, Kamalesh Babulal wrote:
> > Hi Andrew,
> > 
> > make allyesconfig with 2.6.27-rc1-mm1 kernel on powerpc fails with
> build error
> 
> <snip>
> 
> Turning off GCOV "fixes" this.  Not really the best solution but at
> least it narrows doen the search effort.
> 
> Peter,
>    Can you have a look at how this can be fixed, if at all?

I did some testing with a cross-compiler myself and I don't think
there is a general solution to this problem. It's not one particular
file that is causing the problem but seemingly the sheer size of the
resulting vmlinux file - even though the toal vmlinux.o size is
"merely" up about 100MiB (from around 1,03Gib to 1,13Gib).

I think I'll need help from people with knowledge of the powerpc
toolchain here.


Regards,
  Peter
