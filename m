From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #12650] Strange load average and ksoftirqd behavior with
	2.6.29-rc2-git1
Date: Sun, 15 Feb 2009 11:54:08 +0100
Message-ID: <20090215105408.GA31351@elte.hu>
References: <juADNmcceYF.A.mdD.Mr0lJB@chimera> <rjPbZ5GRJPO.A.1kE.ur0lJB@chimera> <20090215080941.GA2295@localhost.localdomain> <20090215090026.GA31147@elte.hu> <alpine.DEB.2.01.0902150210140.25613@bogon.housecafe.de>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.01.0902150210140.25613-uKsf7x9sgtqQ/Pez2Lbyp4QuADTiUCJX@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Christian Kujau <lists-AanptEQQ3TL9uQeqpI+JUg@public.gmane.org>
Cc: Damien Wyart <damien.wyart-GANU6spQydw@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


* Christian Kujau <lists-AanptEQQ3TL9uQeqpI+JUg@public.gmane.org> wrote:

> On Sun, 15 Feb 2009, Ingo Molnar wrote:
> >    http://redhat.com/~mingo/tip.git/tracing-quickstart.txt
> >    http://people.redhat.com/mingo/tip.git/README
> 
> Hm, both URLs gave me a 404, .../tip.git/ seems empty - could these 
> documents find a nice place under Documentation/ perhaps?

Hm, there's a people.redhat.com outage today - find below that file
in plaintext too.

	Ingo

# --------------{ tip.git instructions }---------->

mkdir linux.trees.git || exit -1
cd linux.trees.git

git init
# Add Linus's tree as a remote
git remote add linus git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux-2.6.git

# Add the -tip tree as a remote
git remote add tip git://git.kernel.org/pub/scm/linux/kernel/git/tip/linux-2.6-tip.git

#
# With that setup, just run the following to get any changes you
# don't have.  It will also notice any new branches Ingo/Linus
# add to their repo.  Look in .git/config afterwards, the format
# to add new remotes is easy to figure out.
#
# This will take a lot of time initially (it downloads the ~150MB
# repository), but will be much faster subsequently as it only
# does delta updates. Note that it may warn you about no common
# commits but you can ignore that:
# 
git remote update

#
# Check out the latest -tip branch to a local branch
# in this example, we create a branch called 'tip-latest'
# You can pick whatever name suits you.
#
git checkout -b tip-latest tip/master

#
# if you need to do bisection of the -tip tree, then do:
# (but first check that linus/master is indeed a 'good' kernel :-)
#
git bisect start
git bisect good linus/master
git bisect bad tip/master

#
# If you want to help out with cleanups, and want to pick some
# low hanging fruits, do this:
#
wget http://redhat.com/~mingo/tip.git/code-quality
chmod +x code-quality

./code-quality `find kernel/ -name '*.c'` | tee quality.txt

#
# Pick the file that looks most interesting to you:
#
sort -n -k 4 quality.txt

#
# and if you do some work based on tip.git, in particular when
# you change x86 specific bits, feel free to talk to the
# maintainers about it (especially if you are about to
# do some bigger chunk of work and think that you'd like to
# ask whether it makes sense or whether anyone else is working
# on it):
#
#  X86 ARCHITECTURE (32-BIT AND 64-BIT)
#  P:      Thomas Gleixner
#  M:      tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org
#  P:      Ingo Molnar
#  M:      mingo-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org
#  P:      H. Peter Anvin
#  M:      hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org
#
# And this is the mailing list to send patches to:
#
#  L:      linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
#
# When sending arch/x86 patches, please try to use the following
# subject line format (sample):
#
# Subject: [patch] x86: fix typo in ...
#
