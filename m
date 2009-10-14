From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: Characters vanishing in the tty layer? (maybe related to [Bug
 #14388] keyboard under X with 2.6.31)
Date: Wed, 14 Oct 2009 07:53:11 -0700 (PDT)
Message-ID: <alpine.LFD.2.01.0910140748420.6146@localhost.localdomain>
References: <1255501294.21962.24.camel@concordia>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1255501294.21962.24.camel@concordia>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Michael Ellerman <michael-Gsx/Oe8HsFggBc27wqDAHg@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Boyan <btanastasov-/E1597aS9LT10XsdtD+oqA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, fredlwm-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>, Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>



On Wed, 14 Oct 2009, Michael Ellerman wrote:
> 
> I'm using 80f5069 or thereabouts, plus some powerpc patches. We also see
> the bug in 31, but not in 27.

Could you bisect it? Even if you don't bisect it _all_ the way, 27..31 is 
a big range. Doing just a handful of bisections (say six or seven) would 
cut down the number of commits from 47 thousand to somewhat more 
manageable "hundreds of commits"... But obviously going all the way would 
be better.

		Linus
