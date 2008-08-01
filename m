From: Peter 1 Oberparleiter <Peter.Oberparleiter-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
Subject: Re: [BUILD-FAILURE] 2.6.27-rc1-mm1 - allyesconfig build fails on powerpc
Date: Fri, 1 Aug 2008 17:40:29 +0200
Message-ID: <OF6FEAA9CB.C1447125-ONC1257498.004ECFF8-C1257498.00561AEF@de.ibm.com>
References: <20080731231206.80940fba.akpm@linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080731231206.80940fba.akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Kamalesh Babulal <kamalesh-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linuxppc-dev-mnsaURCQ41sdnm+yROfE0A@public.gmane.org, Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>, Tony Breeds <tony-B47dsA4koDqXvyopL2yb9tBPR1lH4CV8@public.gmane.org>

Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote on 01.08.2008 08:12:06:
> On Fri, 1 Aug 2008 15:29:36 +1000 Tony Breeds <tony-B47dsA4koDqXvyopL2yb9tBPR1lH4CV8@public.gmane.org> 
wrote:
> > On Thu, Jul 31, 2008 at 06:13:28PM +0530, Kamalesh Babulal wrote:
> > > Hi Andrew,
> > > 
> > > make allyesconfig with 2.6.27-rc1-mm1 kernel on powerpc fails 
> > > with build error
> > 
> > <snip>
> > 
> > Turning off GCOV "fixes" this.  Not really the best solution but at
> > least it narrows doen the search effort.
> 
> Thanks.
> 
> > Peter,
> >    Can you have a look at how this can be fixed, if at all?
> > 
> 
> Am not terribly happy with the state of the gcov patches.  They STILL
> leave thousands of dead symlinks lying around after `make mrproper'


This is caused by patch

    gcov-create-links-to-gcda-files-in-build-directory.patch

which can be simply removed as it is no longer needed since patch

    gcov-add-gcov-profiling-infrastructure-revert-link-changes.patch

has been added to -mm.

> and
> generally seem to muck up the kbuild system a bit, although nothing
> that a bit of Sam love wouldn't fix.

Hm, by now the only change to kbuild is the addition of gcc options
-fprofile-arcs/-ftest-coverage depending on the respective config
symbols. If there is anything else that should be changed, please
let me know.

> Plus it breaks the build on a few architectures (branch out of range,
> mainly), but that's a fairly minor thing which could even be worked
> around in Kconfig (disable the offending code if gcov is enabled)

Some of the problems caused/uncovered by enabling gcov profiling for
a kernel build on some architectures simply cannot be fixed by a change
to the kernel patch itself. I'm wondering if it would be possible
to disable this configuration option when specifying allyesconfig. That
way at least generic testing wouldn't be affected.


Regards,
  Peter
