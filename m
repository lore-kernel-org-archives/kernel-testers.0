From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Tue, 9 Jun 2009 10:50:28 +0300
Message-ID: <84144f020906090050y351e3e9cmb69a089e1a996cd4@mail.gmail.com>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera> <4A2BBC30.2030300@lwfinger.net>
	 <84144f020906070640rf5ab14nbf66d3ca7c97675f@mail.gmail.com>
	 <4A2BCC6F.8090004@redhat.com>
	 <84144f020906070732l31786156r5d9753a0cabfde79@mail.gmail.com>
	 <20090608101739.GA15377@csn.ul.ie>
	 <84144f020906080352k57f12ff9pbd696da5f332ac1a@mail.gmail.com>
	 <20090608110303.GD15377@csn.ul.ie>
	 <Pine.LNX.4.64.0906081657001.7036@melkki.cs.Helsinki.FI>
	 <20090608141212.GE15070@csn.ul.ie>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=DWNnL6Pk/Gc/03H21Z5qfNLEMBBXYDWqrX4zFlicM9g=;
        b=JfzJ4CfsuSGNg7HJ0o/kf8h6jYBiKqHGCh47sm5qQB0tFC3zG80G9YS68cFqNj57/7
         64J4AN5oLGDYXqYgS2eIGOLTo58AmJfo1w9b2n6/qfOi+vv67A0j+w2rr9AyS+tLAzuD
         e9TghCBjtpyx/qZGFLuEifkWzCZEmSm8BTKWU=
In-Reply-To: <20090608141212.GE15070-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Cc: Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Mon, Jun 8, 2009 at 5:12 PM, Mel Gorman<mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org> wrote:
> In addition, include how many objects there are per-slab and include what
> the order is being passed to the page allocator when allocating new slabs.
> Would that be enough to determine if fallback-to-smaller orders occured?

Well, if the slab_out_of_memory() is called, we already know the
higher order allocation failed _and_ the fallback allocation failed.
So yes, it would be enough.
