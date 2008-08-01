From: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [BUILD-FAILURE] 2.6.27-rc1-mm1 - allyesconfig build fails on
 powerpc
Date: Thu, 31 Jul 2008 23:12:06 -0700
Message-ID: <20080731231206.80940fba.akpm@linux-foundation.org>
References: <20080731000354.24b55d5b.akpm@linux-foundation.org>
	<4891B370.5040208@linux.vnet.ibm.com>
	<20080801052936.GZ20457@bakeyournoodle.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080801052936.GZ20457-B47dsA4koDqXvyopL2yb9tBPR1lH4CV8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Tony Breeds <tony-B47dsA4koDqXvyopL2yb9tBPR1lH4CV8@public.gmane.org>
Cc: Kamalesh Babulal <kamalesh-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, linuxppc-dev-mnsaURCQ41sdnm+yROfE0A@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Peter Oberparleiter <peter.oberparleiter-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>

On Fri, 1 Aug 2008 15:29:36 +1000 Tony Breeds <tony-B47dsA4koDqXvyopL2yb9tBPR1lH4CV8@public.gmane.org> wrote:

> On Thu, Jul 31, 2008 at 06:13:28PM +0530, Kamalesh Babulal wrote:
> > Hi Andrew,
> > 
> > make allyesconfig with 2.6.27-rc1-mm1 kernel on powerpc fails with build error
> 
> <snip>
> 
> Turning off GCOV "fixes" this.  Not really the best solution but at
> least it narrows doen the search effort.

Thanks.

> Peter,
> 	Can you have a look at how this can be fixed, if at all?
> 

Am not terribly happy with the state of the gcov patches.  They STILL
leave thousands of dead symlinks lying around after `make mrproper' and
generally seem to muck up the kbuild system a bit, although nothing
that a bit of Sam love wouldn't fix.

Plus it breaks the build on a few architectures (branch out of range,
mainly), but that's a fairly minor thing which could even be worked
around in Kconfig (disable the offending code if gcov is enabled)

