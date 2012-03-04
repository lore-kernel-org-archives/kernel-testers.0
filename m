From: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Subject: Re: [Bug #42649] Regression 3.2 -> 3.3-rc1 commit b4b583d4 inet/media
 keyboard: stuck "extra" keys
Date: Sun, 4 Mar 2012 22:03:10 +0100 (CET)
Message-ID: <alpine.LNX.2.00.1203042201220.23367@pobox.suse.cz>
References: <FNlNbnGKWLP.A.dME.3F9UPB@chimera> <hq7dqombK_C.A.UsF.mG9UPB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <hq7dqombK_C.A.UsF.mG9UPB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Duncan <1i5t5.duncan-j9pdmedNgrk@public.gmane.org>, Nikolai Kondrashov <spbnick-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sun, 4 Mar 2012, Rafael J. Wysocki wrote:

> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 3.2.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> 
> Bug-Entry	: https://bugzilla.kernel.org/show_bug.cgi?id=42649
> Subject		: Regression 3.2 -> 3.3-rc1 commit b4b583d4 inet/media keyboard: stuck "extra" keys
> Submitter	: Duncan <1i5t5.duncan-j9pdmedNgrk@public.gmane.org>
> Date		: 2012-01-24 18:18 (41 days old)
> First-Bad-Commit: http://git.kernel.org/linus/b4b583d4e9a5ff28c4a150bb25a4fff5cd4dfbbd

[ adding Nikolai to CC ]

Nikolai already submitted a fix for b4b583d4e here: 
http://www.spinics.net/lists/linux-input/msg19542.html

I will be queuing that shortly, and will try to make sure that it makes it 
into 3.3 still (otherwise 3.3-stable).

Duncan, I'd be interested whether it fixes the issue you are reporting as 
well.

Thanks,

-- 
Jiri Kosina
SUSE Labs
