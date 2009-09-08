From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13949] Cryptoloop stuck I/O issue on partition or loopback device
Date: Tue, 8 Sep 2009 21:05:13 +0200
Message-ID: <200909082105.13124.rjw@sisk.pl>
References: <aIL9jMAYJnG.A.WjH.M3BpKB@chimera> <20090907152553.GA21768@infradead.org> <alpine.DEB.2.00.0909081029050.7636@p34.internal.lan>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.2.00.0909081029050.7636-0qmrozcXWo8bm2hyYBkBBg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Justin Piszcz <jpiszcz-BP4nVm5VUdNhbmWW9KSYcQ@public.gmane.org>
Cc: Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Felix Blyakher <felixb-sJ/iWh9BUns@public.gmane.org>

On Tuesday 08 September 2009, Justin Piszcz wrote:
> 
> On Mon, 7 Sep 2009, Christoph Hellwig wrote:
> 
> > On Sun, Sep 06, 2009 at 08:11:51PM +0200, Rafael J. Wysocki wrote:
> >> This message has been generated automatically as a part of a report
> >> of regressions introduced between 2.6.29 and 2.6.30.
> >>
> >> The following bug entry is on the current list of known regressions
> >> introduced between 2.6.29 and 2.6.30.  Please verify if it still should
> >> be listed and let me know (either way).
> >
> > While this still isn't fixed it has been tracked down to a regression
> > in the loop driver.  Care to adjust the subject?
> >
> 
> Unsure how to edit on the kernel bugtracker but updating this thread to 
> correct the subject.

I've changed the subject and moved the bug to I/O & storage.

Thanks,
Rafael
