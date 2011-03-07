From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #29312] Unmounting fails even after the underlying device is long gone
Date: Mon, 7 Mar 2011 21:38:26 +0100
Message-ID: <201103072138.27118.rjw@sisk.pl>
References: <t0W8Ea1iKeB.A.6xD.Lp3cNB@chimera> <GTlFTeOGjrB.A.DoE.Sq3cNB@chimera> <AANLkTimPYKP8S24ivRZXePhc5wM6n3ivzdpJSBaCvG6a@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <AANLkTimPYKP8S24ivRZXePhc5wM6n3ivzdpJSBaCvG6a-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Bart Van Assche <bvanassche-HInyCGIudOg@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On Monday, March 07, 2011, Bart Van Assche wrote:
> On Sun, Mar 6, 2011 at 1:10 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> >
> > This message has been generated automatically as a part of a summary report
> > of recent regressions.
> >
> > The following bug entry is on the current list of known regressions
> > from 2.6.37.  Please verify if it still should be listed and let the tracking team
> > know (either way).
> >
> >
> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=29312
> > Subject         : Unmounting fails even after the underlying device is long gone
> > Submitter       : Bart Van Assche <bart.vanassche-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date            : 2011-02-17 19:20 (18 days old)
> 
> Unmounting works fine again with 2.6.38-rc7+, but I see now a huge
> number of error messages in the system log:
> # grep -c '^Mar  7 18:37:4.* kernel: sd 6:0:0:0: rejecting I/O to
> offline device$' /var/log/messages
> 4987

Well, that probably is a different issue ...

Thanks for the update.

Rafael
