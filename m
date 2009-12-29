From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14904] slab: possible recursive locking detected
Date: Tue, 29 Dec 2009 23:18:16 +0100
Message-ID: <200912292318.16384.rjw@sisk.pl>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera> <NJVdobuNFNK.A.90H.anhOLB@chimera> <84144f020912290737y695f6e41xe599decf1c68c50e@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <84144f020912290737y695f6e41xe599decf1c68c50e-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Heiko Carstens <heiko.carstens-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>

On Tuesday 29 December 2009, Pekka Enberg wrote:
> On Tue, Dec 29, 2009 at 5:09 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> >
> > The following bug entry is on the current list of known regressions
> > from 2.6.32.  Please verify if it still should be listed and let me know
> > (either way).
> >
> >
> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=14904
> > Subject         : slab: possible recursive locking detected
> > Submitter       : Heiko Carstens <heiko.carstens-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
> > Date            : 2009-12-18 11:58 (12 days old)
> > References      : http://marc.info/?l=linux-kernel&m=126113754023909&w=4
> > Handled-By      : Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
> 
> This is the same problem as the following:
> 
> http://bugzilla.kernel.org/show_bug.cgi?id=14951

Thanks, closing as a duplicate.

Rafael
