From: Duncan <1i5t5.duncan@cox.net>
Subject: Re: [Bug #42649] Regression 3.2 -> 3.3-rc1 commit b4b583d4
 inet/media keyboard: stuck "extra" keys
Date: Sun, 4 Mar 2012 18:06:28 -0700
Message-ID: <20120304180628.5444b453@ws>
References: <FNlNbnGKWLP.A.dME.3F9UPB@chimera>
	<hq7dqombK_C.A.UsF.mG9UPB@chimera>
	<alpine.LNX.2.00.1203042201220.23367@pobox.suse.cz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <alpine.LNX.2.00.1203042201220.23367@pobox.suse.cz>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jiri Kosina <jkosina@suse.cz>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Nikolai Kondrashov <spbnick@gmail.com>

On Sun, 4 Mar 2012 22:03:10 +0100 (CET)
Jiri Kosina <jkosina@suse.cz> wrote:

> On Sun, 4 Mar 2012, Rafael J. Wysocki wrote:
> 
> > The following bug entry is on the current list of known regressions
> > from 3.2.

> > Bug-Entry	: https://bugzilla.kernel.org/show_bug.cgi?id=42649
> > Subject	: Regression 3.2 -> 3.3-rc1 commit b4b583d4
> > inet/media keyboard: stuck "extra" keys
> > Submitter	: Duncan <1i5t5.duncan@cox.net> 
> > Date	: 2012-01-24 18:18 (41 days old)
> > First-Bad-Commit:
> > http://git.kernel.org/linus/b4b583d4e9a5ff28c4a150bb25a4fff5cd4dfbbd
> 
> [ adding Nikolai to CC ]
> 
> Nikolai already submitted a fix for b4b583d4e here: 
> http://www.spinics.net/lists/linux-input/msg19542.html
> 
> I will be queuing that shortly, and will try to make sure that it
> makes it into 3.3 still (otherwise 3.3-stable).
> 
> Duncan, I'd be interested whether it fixes the issue you are
> reporting as well.

Just finished testing.  Confirming.

3.3-rc6 unpatched (still) bad,

3.3-rc6 with that patch applied, good.

-- 
Duncan - No HTML messages please, as they are filtered as spam.
"Every nonfree program has a lord, a master --
and if you use the program, he is your master."  Richard Stallman
