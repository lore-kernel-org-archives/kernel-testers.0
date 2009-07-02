From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Thu, 2 Jul 2009 10:18:35 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0907021016380.30890@chino.kir.corp.google.com>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera> <84144f020906292355o7cf63f7ch47bd19961cf92da3@mail.gmail.com> <alpine.DEB.1.10.0906301030260.6124@gentwo.org> <1246374095.8014.28.camel@penberg-laptop> <alpine.DEB.1.10.0906301114450.3879@gentwo.org>
 <alpine.DEB.2.00.0906301248000.16312@chino.kir.corp.google.com> <alpine.DEB.1.10.0906301632570.22158@gentwo.org> <alpine.DEB.2.00.0906301413460.24397@chino.kir.corp.google.com> <alpine.DEB.1.10.0906301722280.17682@gentwo.org>
 <alpine.DEB.2.00.0906301445070.26290@chino.kir.corp.google.com> <84144f020906302253n2424d4a5k3aaf124838a041df@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1246555125; bh=MyXiW0IQCbti7fLwMyc8Wv9NM2A=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=cgVxG9lEbYvlBLKzOjJ7p7ZdU5t6yRN
	MSCArD6o6Bm3Wzr0Hj6RcYmnbL8bf3XUN8MnouB4MGit10GxulKLtQw==
In-Reply-To: <84144f020906302253n2424d4a5k3aaf124838a041df-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>

On Wed, 1 Jul 2009, Pekka Enberg wrote:

> Lets go with the slab_out_of_memory() patch you outlined in a previous
> post and implement the slub_debug=p thing Christoph suggested. I think
> it's the best compromise at this point. When you guys finally see the
> light, we can always change it to a reasonable default. ;)
> 
> So can you send a patch, please?
> 

Sure, let me know if you think this is -rc material; otherwise, the bug 
will have to be deferred until 2.6.32 with the temporary workaround of 
disabling CONFIG_SLUB_DEBUG_ON.
