From: Pekka Enberg <penberg@cs.helsinki.fi>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Wed, 1 Jul 2009 08:53:20 +0300
Message-ID: <84144f020906302253n2424d4a5k3aaf124838a041df@mail.gmail.com>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera>
	 <84144f020906292355o7cf63f7ch47bd19961cf92da3@mail.gmail.com>
	 <alpine.DEB.1.10.0906301030260.6124@gentwo.org>
	 <1246374095.8014.28.camel@penberg-laptop>
	 <alpine.DEB.1.10.0906301114450.3879@gentwo.org>
	 <alpine.DEB.2.00.0906301248000.16312@chino.kir.corp.google.com>
	 <alpine.DEB.1.10.0906301632570.22158@gentwo.org>
	 <alpine.DEB.2.00.0906301413460.24397@chino.kir.corp.google.com>
	 <alpine.DEB.1.10.0906301722280.17682@gentwo.org>
	 <alpine.DEB.2.00.0906301445070.26290@chino.kir.corp.google.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1759470AbZGAF7U@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=gBlU7Okn3XT0JJiyfuNjk5wRKTiNEEm+utcO7aSMbDQ=;
        b=JowjMTxYnk9XNV1upce/TZOt5OFIuCNSenTy8jiH3yILGdHD8cEk+hpzR3dBuU0hBz
         9hCh+wSvACrLxJlbsvnDVOZu3f27VBSzA47d7btkvVKRrwUmlwygzSU/YVyyqD72oYSx
         uVajvUOJbBjWqt8mF9R8PVZWfArqK7Rt2t72Y=
In-Reply-To: <alpine.DEB.2.00.0906301445070.26290@chino.kir.corp.google.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Rientjes <rientjes@google.com>
Cc: Christoph Lameter <cl@linux-foundation.org>, Larry Finger <Larry.Finger@lwfinger.net>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Johannes Berg <johannes@sipsolutions.net>

Hi David,

On Wed, Jul 1, 2009 at 12:52 AM, David Rientjes<rientjes@google.com> wrote:
> I think the solution to this is really based on good software engineering
> and test practices, though, so hopefully there'll be a consensus on which
> direction to take before any time is spent in implementing and pushing it.

Lets go with the slab_out_of_memory() patch you outlined in a previous
post and implement the slub_debug=p thing Christoph suggested. I think
it's the best compromise at this point. When you guys finally see the
light, we can always change it to a reasonable default. ;)

So can you send a patch, please?

                        Pekka
