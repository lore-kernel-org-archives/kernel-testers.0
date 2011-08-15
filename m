From: Pekka Enberg <penberg-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #38612] Boot time warnings in APIC
Date: Mon, 15 Aug 2011 09:16:27 +0300
Message-ID: <CAOJsxLEuwUNhOqGUg=3oKt-HOWFRo2Ewe47YhH0NnLeuDUjsHQ@mail.gmail.com>
References: <xuTC4jRtHbB.A.l4H.gMCSOB@chimera>
	<bkwpSnItbJM.A.iJB.HOCSOB@chimera>
	<CAOJsxLEF6sSibtTGa+un_4eDLHMniFyAkSOUtHYpmFtPTbEKiA@mail.gmail.com>
	<CAAmnkz=2zDa2TTHduUvkwXA7X3ojYqQ+kRPPAwanOUu38YDrjg@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:sender:in-reply-to:references:date
         :x-google-sender-auth:message-id:subject:from:to:cc:content-type;
        bh=9gCF4zM8PpZposDLJoFeOvnA3D5Pf3jRdLJKA57FiEE=;
        b=GFelYlioEhewqUUM4+CbFWS9gvR3rLoPPTMuQjcIhAwkDmH5UIJZUqktRKdfxwc5mK
         dk56b0z4TSTu8hN9rR7RDif66IKKQ4ijXPkXpZm/1KVxazYEIrtsuu/eQrRpkdrBMyCT
         JEqNbM+vieSln7zabsDv9vt+lo29xLJkF3TR0=
In-Reply-To: <CAAmnkz=2zDa2TTHduUvkwXA7X3ojYqQ+kRPPAwanOUu38YDrjg-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Bill Huey (hui)" <bill.huey-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, Tejun Heo <tj-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

On Mon, Aug 15, 2011 at 9:14 AM, Bill Huey (hui) <bill.huey-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> The crash itself was pretty random and the machine was half crippled.
> That's the best I can do in that circumstance.

How did you capture the oops? Did you try netconsole? There's
documentation of it in Documentation/networking/netconsole.txt and
this article explains how to set it up:

http://mindplusplus.wordpress.com/2010/03/06/using-netconsole-on-linux/
