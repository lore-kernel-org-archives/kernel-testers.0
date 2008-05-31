From: Sitsofe Wheeler <sitsofe-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>
Subject: Kernel testing tips
Date: Sat, 31 May 2008 20:13:49 +0100
Message-ID: <g1s89i$dgp$1@ger.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7Bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

While doing very simple testing I have come across a few themes that might
be useful to other people who want to do light testing of the linux kernel.
Previously I posted another post talking about checking options (things
that would hopefully tell you if the kernel is misbehaving sooner) here -
http://groups.google.com/group/linux.kernel/browse_frm/thread/d73bbfdc7455cba5/d676733d10ccd21a?#d676733d10ccd21a .
Hopefully these posts are useful even if they don't get responses...

Learning to use git
I found http://linux.yyz.us/git-howto.html a reasonable guide to starting to
use git. I wound up having to use man git-bisect a lot to learn how to do
bisection.

Using linux-next via git
There are instructions on
http://linux.f-seidel.de/linux-next/pmwiki/pmwiki.php?n=Linux-next.FAQ
(which unfortunately does not turn up in a google search for linux-next). I
found that to fetch the latest version after doing a git remote update I
have to do git checkout linux-next/master though.

Compile everything you need into the kernel and not into modules
If you are doing builds for a single machine it is often easier to build
everything into the kernel rather than using modules. You can even skip
creating an initrd assuming your setup is simple and you are referring to
devices by /dev/sda? syntax. This also makes it easier to transfer a
finished kernel to another machine (as all you need is the bzImage file).

Compiling on multi-CPU machines
Make sure that if your machine has more than one CPU/core you use the -j
option on make. On a two core box -j5 (even though there are only two cores
and no hyperthreading) seems to yield the lowest compile time.

Bisection
Bisection can allow the narrowing down of a bad patch (assuming the kernel
worked in the past and is broken now). The learning curve is very shallow
(it can be used in a brute force fashion with little understanding) but the
tradeoff is time. The number of commits that happen to linux-next in a day
seems to always be more than 1000 which which means at least 10 recompiles
if yesterday's next worked and today's is broken. Instructions on bisection
can be found on 

On my home desktop (an Athlon 850) it takes at least 35 minutes to do a
complete kernel build. Until you are down to the last few compiles you will
mostly be doing complete builds. In contrast the work laptop I am borrowing
(an Intel Core 2 Duo 1.8Ghz) can finish the same clean build in around 5
minutes.

Let's say you are trying to bisect a persistant hang on boot from 1000
patches (arguably the easiest sort of thing to find because it happens
quickly and is very noticeable) on the laptop. If the laptop boots to a
working logged in desktop in 1 minute 30 seconds and shutting down takes
around 1 minute it will take at least 1 hour and 15 minutes to find the
patch.

Send reports to the right people
Experience says that posting a report to only the LKML will not solicit much
of a response. You pretty much have to CC the right people to stand any
chance of getting a reply. If the problem is in a driver you can try the
driver author as mentioned in the MAINTAINERS file. You can also try
subsystem lists. If you have done a bisection include a CC to the person
who wrote the patch (addresses are shown in the git log of the patch).

Likelihood of responses
When it comes to getting responses things that messages about problems that
have been bisected are usually followed up. Problems about regressions also
seem to get replies. Posts about things like lock dependency warnings and
reports about missing features don't tend to see replies so it's probably
best not to bother making such posts unless you have made a patch which
resolves the issue. 

-- 
Sitsofe | http://sucs.org/~sits/

--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
