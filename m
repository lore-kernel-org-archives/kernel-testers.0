From: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
Subject: Re: [Bug #12609] v2.6.29-rc2 libata sff 32bit PIO regression
Date: Thu, 5 Feb 2009 17:30:49 +0000 (GMT)
Message-ID: <Pine.LNX.4.64.0902051723520.1445@blonde.anvils>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera> <pWZw1SZjMCH.A.o-D.uuYiJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <pWZw1SZjMCH.A.o-D.uuYiJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>, Sergei Shtylyov <sshtylyov-hkdhdckH98+B+jHODAdFcQ@public.gmane.org>

On Wed, 4 Feb 2009, Rafael J. Wysocki wrote:
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12609
> Subject		: v2.6.29-rc2 libata sff 32bit PIO regression
> Submitter	: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
> Date		: 2009-01-23 23:52 (13 days old)
> References	: http://marc.info/?l=linux-kernel&m=123275478111406&w=4
> 		  http://marc.info/?l=linux-kernel&m=123254501314058&w=4
> Handled-By	: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
> 		  Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
> Patch		: http://marc.info/?l=linux-kernel&m=123254501314058&w=2

Yes, this does still need to be listed.  My initial patch for it was
not enough, but I think the three patches necessary have all now been
posted (though Sergei may rewrite mine).  I'm expecting Alan to gather
them together and send them in due course, but I believe he's occupied
with other stuff just at the moment.

Hugh
