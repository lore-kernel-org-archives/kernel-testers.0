From: "=?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?=" <zajec5-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11313] Plugging HDMI causes "unable to handle kernel paging request"
Date: Wed, 20 Aug 2008 13:10:44 +0200
Message-ID: <b170af450808200410v3d7cd076h3e62546b48ddf507@mail.gmail.com>
References: <DLWXHEp37wB.A.duD.yZzpIB@albercik>
	 <sNRO-BDDjQL.A.DYF.sazpIB@albercik>
	 <b170af450808171228i37951c6vd77071da7584669b@mail.gmail.com>
	 <48AB5D17.5030600@goop.org>
Mime-Version: 1.0
Content-Transfer-Encoding: base64
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=1jXBY1NaRSInrSezKEu3z+dMCx9ktNdX2d5dkag6Rys=;
        b=OUHkUInTphLUZRcXBp06J8so0WbH2/s5SYjvUfM1NUHwkQkRUpsvWN9gjBDqm/gUMl
         JNEYxsmpaqk+WtlOpW4PRqg2DixM0nnrX7GwWBYNlz+mzHCKr82Y+p/MsmKeeP0gWvuC
         XJ1yDoLhlALYR36HSzUjw4n+DgeHe4Wih710I=
In-Reply-To: <48AB5D17.5030600-TSDbQ3PG+2Y@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Jeremy Fitzhardinge <jeremy-TSDbQ3PG+2Y@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

MjAwOC84LzE5LCBKZXJlbXkgRml0emhhcmRpbmdlIDxqZXJlbXlAZ29vcC5vcmc+Ogo+IFdoYXQn
cyB5b3VyIC5jb25maWcgb24gdGhpcyBrZXJuZWwsIEJUVz8KCkkgbW9zdGx5IHVzZWQgb3BlblNV
U0UncyBrZXJuZWwgY29uZmlndXJhdGlvbi4gSSBqdXN0IGRpc2FibGVkIHBhcmF2aXJ0LgpodHRw
Oi8vYnVnemlsbGEua2VybmVsLm9yZy9hdHRhY2htZW50LmNnaT9pZD0xNzMyOQoKCjIwMDgvOC8y
MCwgSmVyZW15IEZpdHpoYXJkaW5nZSA8amVyZW15QGdvb3Aub3JnPjoKPiBSYWZhxYIgTWnFgmVj
a2kgd3JvdGU6Cj4+IEJ1ZyBzdGlsbCBleGlzdHMgaW4gY3VycmVudCBnaXQgKHRlc3RlZCAxNSBt
aW51dGVzIGFnbykuCj4+Cj4KPiBDb3VsZCB5b3UgYXBwbHkgdGhpcyBwYXRjaCBhbmQgcG9zdCB0
aGUgb3V0cHV0IG9mIGRtZXNnIGZyb20gYm9vdGluZyAobm8KPiBuZWVkIHRvIGNyYXNoIGl0IGFn
YWluKS4KClN1cmUsIGFzIGV2ZXJ5dGhpbmcgdG8gaGVscCBkZWJ1Z2dpbmcgdGhpcyA6KQpodHRw
Oi8vYnVnemlsbGEua2VybmVsLm9yZy9hdHRhY2htZW50LmNnaT9pZD0xNzMzMAoKLS0gClJhZmHF
giBNacWCZWNraQo=
