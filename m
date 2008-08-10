From: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
Subject: Re: [Bug #11237] [BUG] 2.6.27-rc1 in ext3_find_entry
Date: Sun, 10 Aug 2008 11:50:33 +0100 (BST)
Message-ID: <Pine.LNX.4.64.0808101142470.10875@blonde.site>
References: <VYYCiQF4qDI.A.BPH.KCjnIB@albercik> <cX_-nNkxKaF.A.ZsB.hDjnIB@albercik>
 <20080810034359.GA21407@mit.edu>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080810034359.GA21407-3s7WtUTddSA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>

On Sat, 9 Aug 2008, Theodore Tso wrote:
> On Sun, Aug 10, 2008 at 12:43:51AM +0200, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.26.  Please verify if it still should be listed and let me know
> > (either way).

Yes, it should still be listed.

> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11237
> > Subject		: [BUG] 2.6.27-rc1 in ext3_find_entry
> > Submitter	: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
> > Date		: 2008-08-02 9:51 (8 days old)
> > References	: http://marc.info/?l=linux-kernel&m=121767073424952&w=4
> > Handled-By	: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
> > 
> 
> You might want to change the description to include that it occurred
> after a suspend/resume; Hugh suspects corrupted PMD entries as the
> cause of the crash, and not necessarily anything in the ext3 code.  So
> the title might be a bit misleading.  (At the same time, if turns out
> that the suspend/resume was a red herring, and it looks more like a
> real ext3 bug, please send a note to that effect; right now I'm not
> paying attention to this bug.)

Right, there's no reason at all to suppose it's related to ext3,
that just happened to be the first victim of the corruption on
one occasion.  Carry on paying no attention to this bug, Ted.
"corrupt PMD after resume" perhaps.

Hugh
