From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bisected] [Bug #13821] Replugging USB serial converter uses new device node
Date: Tue, 28 Jul 2009 23:07:52 +0200
Message-ID: <200907282307.53927.rjw@sisk.pl>
References: <20090727175525.20ac4869@lxorguk.ukuu.org.uk> <20090728003120.500c5cf0@lxorguk.ukuu.org.uk> <874osxj7jb.fsf@tac.ki.iif.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <874osxj7jb.fsf-/U8DR9OPLL8grVaPS+uXcA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Ferenc Wagner <wferi-eEbw3PyuezQ@public.gmane.org>
Cc: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, "Carlos R. Mafra" <crmafra2-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Greg KH <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, USB list <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kay Sievers <kay.sievers-tD+1rO4QERM@public.gmane.org>

On Tuesday 28 July 2009, Ferenc Wagner wrote:
> Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org> writes:
> 
> > commit 3f40612e940971ecec29d5375cdcc9f9c9a9f46e
> > Author: Alan Cox <alan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
> > Date:   Tue Jul 28 00:23:39 2009 +0100
> >
> >     tty: USB lock/refcounting fixes
> >     
> >     This fixes
> >     - locking bug that was hidden by ecc2e05e739c30870c8e4f252b63a0c4041f2724
> >     - Regression #13821
> >     - Spurious warning when closing and blocking for data write out
> >     
> >     With these changes my PL2303 always ends up as ttyUSB0 when it should and
> >     the module refcounts stay correct.
> >     
> >     I'll do a more wholesale split & tidy of _open in the next release or two
> >     as we get a standard tty_port_open and port->ops->init port->ops->shutdown
> >     call backs.
> >     
> >     Signed-off-by: Alan Cox <alan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
> 
> I confirm that current git (containing the above patch) has regression
> #13821 fixed, as well as the open bug discovered by Alan Stern.

Thanks, closed.

Rafael
