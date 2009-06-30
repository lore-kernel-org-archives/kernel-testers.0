From: Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Subject: Re: [Bug #13522] BUG: scheduling while atomic
Date: Mon, 29 Jun 2009 22:15:09 -0700
Message-ID: <20090629221509.1d307184@infradead.org>
References: <ij4ZQY4URcP.A.F3B.vIASKB@chimera>
	<6JJ2m5kyucK.A.D2D.VJASKB@chimera>
	<20090629154119.2c61f234@lxorguk.ukuu.org.uk>
	<20090629162853.GB3461@localdomain.by>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090629162853.GB3461-AfQBxy1nhrTup4dJKg45FQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Sergey Senozhatsky <sergey.senozhatsky-A/MS7pq9VAU@public.gmane.org>
Cc: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Mon, 29 Jun 2009 19:28:53 +0300
Sergey Senozhatsky <sergey.senozhatsky-A/MS7pq9VAU@public.gmane.org> wrote:

> On (06/29/09 15:41), Alan Cox wrote:
> > > This message has been generated automatically as a part of a
> > > report of recent regressions.
> > > 
> > > The following bug entry is on the current list of known
> > > regressions from 2.6.30.  Please verify if it still should be
> > > listed and let me know (either way).
> > 
> > Yes although getting people seeing to test with might_sleep()
> > checks in the tty layer demonstrate the tty layer isn't calling
> > into ppp with irqs disabled when it shouldn't so I'm at a loss as
> > to whether this is a network bug, a scheduler bug or something else.
> > 
> > The schedule error in __tasklet_schedule() is itself rather
> > peicular.
> > 
> 
> Hello Alan, Rafael,
> 
> BUG is still here...


can you enable CONFIG_DEBUG_INFO, and then run this through
scripts/markup_oops.pl ? With a bit of luck it'll point to the exact
code that's going wrong...


-- 
Arjan van de Ven 	Intel Open Source Technology Centre
For development, discussion and tips for power savings, 
visit http://www.lesswatts.org
