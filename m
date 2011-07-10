From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #38102] BUG kmalloc-2048: Poison overwritten
Date: Sun, 10 Jul 2011 14:32:18 +0200
Message-ID: <201107101432.18589.rjw@sisk.pl>
References: <AtAvQwe5sAK.A.loH.OlYGOB@chimera> <gK_efVqs2fP.A.O5H.olYGOB@chimera> <CAB9v_DGfA4YLhDKeEZziFLgCak8cL+CjGdjkiwa_YtF_HHw5Dg@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <CAB9v_DGfA4YLhDKeEZziFLgCak8cL+CjGdjkiwa_YtF_HHw5Dg-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Alexey Zaytsev <alexey.zaytsev-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On Sunday, July 10, 2011, Alexey Zaytsev wrote:
> On Sun, Jul 10, 2011 at 14:58, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.38 and 2.6.39.
> >
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.38 and 2.6.39.  Please verify if it still should
> > be listed and let the tracking team know (either way).
> 
> Hey.
> 
> This is not a regression, it's been this way since at least since
> 2.6.27 (checked), and probably from the beginning.

Thanks, dropping from the list.

Rafael
