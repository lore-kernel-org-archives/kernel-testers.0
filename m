From: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Tue, 23 Sep 2008 16:29:16 +0200 (CEST)
Message-ID: <alpine.LNX.1.10.0809231229460.4671@pegasus.suse.cz>
References: <Pine.LNX.4.64.0809230010460.27884@twin.jikos.cz> <20080922.152815.22060684.davem@davemloft.net> <21d7e9970809221826i76081719pdd749237580fc68e@mail.gmail.com> <20080922.185902.80812984.davem@davemloft.net>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080922.185902.80812984.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, david.vrabel-kQvG35nSl+M@public.gmane.org
Cc: airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org

On Mon, 22 Sep 2008, David Miller wrote:

> So I went through the changes from 2.6.27-rc5 until the SHA1
> ID ec0c15afb41fd9ad45b53468b60db50170e22346 and there were
> definitely no E1000 or E1000E changes during that time.

Some recent comments on [1] seem to indicate that this is somehow coupled 
into prior problems/panics with Intel graphics. 

David, was this also your case, or did the EEPROM got garbled out of a 
sudden?

[1] https://bugzilla.novell.com/show_bug.cgi?id=425480

-- 
Jiri Kosina
SUSE Labs
