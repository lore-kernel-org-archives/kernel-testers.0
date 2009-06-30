From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Tue, 30 Jun 2009 13:25:57 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0906301318270.20326@chino.kir.corp.google.com>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera> <5Hhc7UkUKEO.A.fNH.4kASKB@chimera> <4A48F114.1010702@lwfinger.net> <alpine.DEB.2.00.0906291642520.17663@chino.kir.corp.google.com> <84144f020906292355o7cf63f7ch47bd19961cf92da3@mail.gmail.com>
 <alpine.DEB.2.00.0906300032310.11018@chino.kir.corp.google.com> <84144f020906300124n24e206b5tc85dd5cc4661bde7@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1246393564; bh=V/4g3pUMHSBUdsCppaCXctIg55o=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=PBFOV5SiShSOecxAkJozXF0zYIPqQS3
	PQjiGX5r6Q2eG7DdcPJIkyPRtOJ/utrc441lt2hrav0x/L805MQrXfQ==
In-Reply-To: <84144f020906300124n24e206b5tc85dd5cc4661bde7-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Tue, 30 Jun 2009, Pekka Enberg wrote:

> On Tue, Jun 30, 2009 at 10:47 AM, David Rientjes<rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org> wrote:
> > I don't think CONFIG_SLUB_DEBUG_ON is generally the configuration used in
> > the real world.
> 
> It is, hence the epic bug report that's eaten too many man hours
> already! Look, we encourage _testers_ to turn all as much as debugging
> options as possible so we catch bugs early. That why the only sane
> defaults are the ones that don't cause other problems!
> 

I feel that asking a user to add a command line parameter such as 
`slub_debug=A' in addition to CONFIG_SLUB_DEBUG_ON will likely lead to 
less testing coverage and bugs going unreported.  CONFIG_SLUB_DEBUG_ON is 
not something that a distro is going to enable or would be used in a 
production environment, it's something that's used to debug slub and/or 
slab allocations either during the development of new kernel code or when 
an underlying problem is realized.

> I don't know why you want to argue this. It's simply not an option to
> say "stupid user, fix your config" in core code like the slab
> allocator. Enabling CONFIG_SLUB_DEBUG_ON is a very reasonable thing to
> do when you are a tester looking for bugs.
> 

Quite the contrary, I agree completely with the above, and that's why I'm 
arguing for full debugging to be enabled when a well-defined configuration 
option is enabled.  I simply don't believe that such debugging should be 
coupled with a command line option to be fully activated for all caches.
