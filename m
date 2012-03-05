From: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Subject: Re: [Bug #42649] Regression 3.2 -> 3.3-rc1 commit b4b583d4 inet/media
 keyboard: stuck "extra" keys
Date: Mon, 5 Mar 2012 10:22:46 +0100 (CET)
Message-ID: <alpine.LNX.2.00.1203051022310.23367@pobox.suse.cz>
References: <FNlNbnGKWLP.A.dME.3F9UPB@chimera> <hq7dqombK_C.A.UsF.mG9UPB@chimera> <alpine.LNX.2.00.1203042201220.23367@pobox.suse.cz> <20120304180628.5444b453@ws>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20120304180628.5444b453@ws>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Duncan <1i5t5.duncan-j9pdmedNgrk@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Nikolai Kondrashov <spbnick-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sun, 4 Mar 2012, Duncan wrote:

> > Nikolai already submitted a fix for b4b583d4e here: 
> > http://www.spinics.net/lists/linux-input/msg19542.html
> > 
> > I will be queuing that shortly, and will try to make sure that it
> > makes it into 3.3 still (otherwise 3.3-stable).
> > 
> > Duncan, I'd be interested whether it fixes the issue you are
> > reporting as well.
> 
> Just finished testing.  Confirming.
> 
> 3.3-rc6 unpatched (still) bad,
> 
> 3.3-rc6 with that patch applied, good.

Awesome, thanks a lot for quick verification.

-- 
Jiri Kosina
SUSE Labs
