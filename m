From: Bernd Schubert <bernd.schubert-97jfqw80gc6171pxa8y+qA@public.gmane.org>
Subject: Re: 3.1-rc1-git9: Reported regressions 2.6.39 -> 3.0
Date: Mon, 15 Aug 2011 23:22:17 +0200
Message-ID: <4E498E09.1000208@fastmail.fm>
References: <xuTC4jRtHbB.A.l4H.gMCSOB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=message-id:date:from:mime-version:to:cc
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding; s=smtpout; bh=0mjsrgt/3gdqk/QKJn7teW
	P8n7I=; b=a3hLmViYBAIzCHKOxJLtMx5cnRd/b54k0aikPw0UDOt62k5AGamt/7
	2PxGEt195qbL2LoY2G6vrDUkDymkt5TkmCchJID5KjHRySBopFvz0Sbxje9u99Sn
	ituQCoiczYV2nh0gwXB9l5f26hDU0aOT4YMK+NwCJ0P+99+Zy8BxU=
In-Reply-To: <xuTC4jRtHbB.A.l4H.gMCSOB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Network Development <netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On 08/14/2011 09:02 PM, Rafael J. Wysocki wrote:

> Please let the tracking team know if there are any Bugzilla entries that
> should be added to the list in there.
> 

Could you please add

Bug-Entry       : https://bugzilla.kernel.org/show_bug.cgi?id=41212
Subject         : ipoib causes kernel panic (NULL pointer dereference)
Submitter       : Bernd Schubert <bernd.schubert-97jfqw80gc6171pxa8y+qA@public.gmane.org>
Date            : 2011-08-15 15:40
Patch           : https://bugzilla.kernel.org/attachment.cgi?id=68942


Thanks,
Bernd
