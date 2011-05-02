From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #33482] [Regression] Bluetooth pairing does not work anymore in 2.6.39-rc3 (works in 2.6.38.3)
Date: Mon, 2 May 2011 23:13:46 +0200
Message-ID: <201105022313.46554.rjw@sisk.pl>
References: <Xp4OiTz83N.A.O0D.JVGvNB@chimera> <G9uL1cldhmL.A.caE.nVGvNB@chimera> <BANLkTimiSXHSxsjPH03Yey555U+F4m1uOA@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <BANLkTimiSXHSxsjPH03Yey555U+F4m1uOA-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Gottfried Haider <gottfried.haider-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On Monday, May 02, 2011, Gottfried Haider wrote:
> Hello Rafael,
> 
> 
> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=33482
> > Subject         : [Regression] Bluetooth pairing does not work anymore in 2.6.39-rc3 (works in 2.6.38.3)
> > Submitter       : Gottfried Haider <gottfried.haider-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date            : 2011-04-16 16:38 (15 days old)
> > Message-ID      : <BANLkTi=LvyZ+7BHfVL849pztfvsYaVM4SQ-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
> > References      : http://marc.info/?l=linux-kernel&m=130297197128328&w=2
> 
> This can be removed from the regression list as it turned out to be
> only a mis-config-uration (oldconfig listed BT_L2CAP as a new config
> option, defaulting to false, when it had been build as a module
> before).

Thanks, closing.

Rafael
