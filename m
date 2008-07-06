From: James Bottomley <James.Bottomley-d9PhHud1JfjCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>
Subject: Re: [Bug #10861] 2.6.26-rc4-git2 - long pause during boot
Date: Sun, 06 Jul 2008 09:33:07 -0500
Message-ID: <1215354787.4197.1.camel@localhost.localdomain>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik>
	 <uBi7uNfg81L.A.teC.90LcIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
	s=2007; t=1215354792; bh=Wmu2HTYcRGc0aW+VtezagET95tqXUpsmyIz1WJZnhi
	A=; l=569; h=Subject:From:To:Cc:In-Reply-To:References:Content-Type:
	 Date:Message-Id:Mime-Version:Content-Transfer-Encoding; b=U1/djoqs
	vY48c4j+FVD5aWr4hiCRSJrMftqH6lPr4AC48CLeobFwgzhsS6EkVTnrV8R6EaEZgmR
	HLhZZ9R+tKXkt40xZasORJphVi+UTmK5wndYtPv5vmaBCb1bhBFteHuXTXmmF+mUuvO
	5WTzPlTijmHvkXfRvHkwZwmybE9gw=
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
	s=2007; t=1215354790; bh=Wmu2HTYcRGc0aW+VtezagET95tqXUpsmyIz1WJZnhi
	A=; l=569; h=Subject:From:To:Cc:In-Reply-To:References:Content-Type:
	 Date:Message-Id:Mime-Version:Content-Transfer-Encoding; b=SCsAjYxk
	QOl4PHc+d2CqwTPUrfXkbK+iAAZdQb8EALGH37HCi9GvyKKzHG7c3A3zwl5c30MP11Y
	YzkIt5a8dSSaWcBQ/QcEApV2anRtDIvLhCF0ssxmrtS2GOyTQNNRHNClsfXvif6zGoy
	aViU8zX25K/j8MhrYxSaG769Po/k8=
In-Reply-To: <uBi7uNfg81L.A.teC.90LcIB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Chris Clayton <chris2553-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>, Hannes Reinecke <hare-l3A5Bk7waGM@public.gmane.org>, Kay Sievers <kay.sievers-tD+1rO4QERM@public.gmane.org>

On Sun, 2008-07-06 at 13:45 +0200, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.25.  Please verify if it still should be listed.

Erm, this isn't a kernel regression, it's a udev rule problem.

The rule has been identified and fixed; the reporter confirms it fixes
the problem and the upstream maintainer of udev is putting out a release
with it in ... what more exactly needs to be done?

James

