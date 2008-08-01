From: Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>
Subject: Re: [BUILD-FAILURE] 2.6.27-rc1-mm1 - allyesconfig build fails on powerpc
Date: Fri, 1 Aug 2008 18:45:25 +0200
Message-ID: <20080801164525.GA2299@uranus.ravnborg.org>
References: <20080731000354.24b55d5b.akpm@linux-foundation.org> <4891B370.5040208@linux.vnet.ibm.com> <20080801052936.GZ20457@bakeyournoodle.com> <20080731231206.80940fba.akpm@linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20080731231206.80940fba.akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Tony Breeds <tony-B47dsA4koDqXvyopL2yb9tBPR1lH4CV8@public.gmane.org>, Kamalesh Babulal <kamalesh-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, linuxppc-dev-mnsaURCQ41sdnm+yROfE0A@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Peter Oberparleiter <peter.oberparleiter-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>

> 
> Am not terribly happy with the state of the gcov patches.  They STILL
> leave thousands of dead symlinks lying around after `make mrproper' and
> generally seem to muck up the kbuild system a bit, although nothing
> that a bit of Sam love wouldn't fix.

Have not had time / energy to get aroud to it.
Other things continue to pop up and time is limited at the moment
as in more limited than usual).

	Sam
