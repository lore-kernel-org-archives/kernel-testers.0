From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Fri, 3 Jul 2009 10:23:48 +0300
Message-ID: <84144f020907030023v2d09632bt13b6c25f96c0b803@mail.gmail.com>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera>
	 <1246374095.8014.28.camel@penberg-laptop>
	 <alpine.DEB.1.10.0906301114450.3879@gentwo.org>
	 <alpine.DEB.2.00.0906301248000.16312@chino.kir.corp.google.com>
	 <alpine.DEB.1.10.0906301632570.22158@gentwo.org>
	 <alpine.DEB.2.00.0906301413460.24397@chino.kir.corp.google.com>
	 <alpine.DEB.1.10.0906301722280.17682@gentwo.org>
	 <alpine.DEB.2.00.0906301445070.26290@chino.kir.corp.google.com>
	 <84144f020906302253n2424d4a5k3aaf124838a041df@mail.gmail.com>
	 <alpine.DEB.2.00.0907021016380.30890@chino.kir.corp.google.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=huUiRFKJVWs1P8f1DItV9j7gFF64CG/YCiuMxbz/Z9I=;
        b=tPqVO2HfnXPy+DqkH5JX+2cqW4Wil0t2DqYRwJOc0Ldl0JiPVKLKierOBU3aceLSxg
         ZDk/Fz4VrjpToCj3hHeTEyDwhSRTsJqFeTams+MJY4fu25OeDiRE4U5zHdXPV1I0FSvX
         N/7dC6EOCjjGu+pGKOIZGvaGWZwXEMTPqUUIA=
In-Reply-To: <alpine.DEB.2.00.0907021016380.30890-X6Q0R45D7oAcqpCFd4KODRPsWskHk0ljAL8bYrjMMd8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>

Hi David,

On Wed, 1 Jul 2009, Pekka Enberg wrote:
>> Lets go with the slab_out_of_memory() patch you outlined in a previous
>> post and implement the slub_debug=p thing Christoph suggested. I think
>> it's the best compromise at this point. When you guys finally see the
>> light, we can always change it to a reasonable default. ;)
>>
>> So can you send a patch, please?

On Thu, Jul 2, 2009 at 8:18 PM, David Rientjes<rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org> wrote:
> Sure, let me know if you think this is -rc material; otherwise, the bug
> will have to be deferred until 2.6.32 with the temporary workaround of
> disabling CONFIG_SLUB_DEBUG_ON.

We're at -rc2 so yes, I do think we should fix 2.6.31.
