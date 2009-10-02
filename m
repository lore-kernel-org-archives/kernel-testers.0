From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13943] WARNING: at net/mac80211/mlme.c:2292 with ath5k
Date: Fri, 2 Oct 2009 23:42:47 +0200
Message-ID: <200910022342.47977.rjw@sisk.pl>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera> <200910021917.31509.rjw@sisk.pl> <b637ec0b0910021437l5a011f13qfa4dd541607a6dfb@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <b637ec0b0910021437l5a011f13qfa4dd541607a6dfb-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Fabio Comolli <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Luis R. Rodriguez" <mcgrof-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Friday 02 October 2009, Fabio Comolli wrote:
> Hi.
> 
> On Fri, Oct 2, 2009 at 7:17 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > On Friday 02 October 2009, Fabio Comolli wrote:
> >> Hi.
> >> I suppose this is still valid. I had to work around it by rfkill-ing
> >> the device during the suspend process and reenabling at resume time.
> >
> > Thanks for the update.
> >
> >> I can try to reproduce it with 2.6.31.1 if you want it.
> >
> > In fact I'm more interested in whether or not it's still present in the Linus'
> > tree.
> >
> 
> Well, I just tried 2.6.32-rc1-git3 and I have to say that it's mostly
> useless with my eeepc. The warning didn't show up after resume but it
> was impossible to reassociate with my AP and after some tentative the
> screen went blank.
> 
> I was able to poweroff the netbook using the power button but I'm a
> little scared to try again.

It shouldn't kill the system cold dead, so as long as you have your data
backed up, you can do some debugging IMHO.

> Maybe I'll try with -rc3 or something.

I guess you should report the issues you have at the moment.  Then, it's
actually more likely that someone will take care of fixing them.

Thanks,
Rafael
