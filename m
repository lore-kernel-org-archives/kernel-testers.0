From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13019] /proc/<pid>/maps offset output broken in 2.6.29
Date: Tue, 7 Apr 2009 23:22:08 +0200
Message-ID: <200904072322.09322.rjw@sisk.pl>
References: <n4io5wq70ZO.A.gzG.rFn2JB@chimera> <AsKNxFx2juN.A.9HH.zFn2JB@chimera> <Pine.LNX.4.64.0904070008320.4254@blonde.anvils>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Pine.LNX.4.64.0904070008320.4254-XZxpfvf5U/bbmfIwyoSfiQ@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Chris Friesen <cfriesen-ZIRUuHA3oDzQT0dZR+AlfA@public.gmane.org>, Michael Ellerman <michael-Gsx/Oe8HsFggBc27wqDAHg@public.gmane.org>

On Tuesday 07 April 2009, Hugh Dickins wrote:
> On Mon, 6 Apr 2009, Rafael J. Wysocki wrote:
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13019
> > Subject		: /proc/<pid>/maps offset output broken in 2.6.29
> > Submitter	: "Chris Friesen" <cfriesen-ZIRUuHA3oDzQT0dZR+AlfA@public.gmane.org>
> > Date		: 2009-04-01 23:18 (6 days old)
> > References	: http://marc.info/?l=linuxppc-embedded&m=123862902916059&w=4
> > Handled-By	: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
> 
> No, this shouldn't be listed as a regression from 2.6.28: if it's to be
> counted as a regression at all, it's 2.6.23's regression from 2.6.22.
> (We're about to deal with it in 2.6.30, but hardly worth backporting.)

Thanks, dropped from the list already.

Best,
Rafael
