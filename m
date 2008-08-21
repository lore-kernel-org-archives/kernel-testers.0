From: "Yinghai Lu" <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11313] Plugging HDMI causes "unable to handle kernel paging request"
Date: Thu, 21 Aug 2008 12:07:18 -0700
Message-ID: <86802c440808211207q28c567e6t995ac3fdac082abc@mail.gmail.com>
References: <DLWXHEp37wB.A.duD.yZzpIB@albercik>
	 <sNRO-BDDjQL.A.DYF.sazpIB@albercik>
	 <b170af450808171228i37951c6vd77071da7584669b@mail.gmail.com>
	 <48AB5D17.5030600@goop.org>
	 <b170af450808200410v3d7cd076h3e62546b48ddf507@mail.gmail.com>
	 <48AC3FA4.9080603@goop.org>
	 <b170af450808201327q48b5b2e0n319c89b0fc1759b6@mail.gmail.com>
	 <48ADB041.9040806@goop.org>
Mime-Version: 1.0
Content-Transfer-Encoding: base64
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=nYB9uEKnnGosnwAM74GLO862SrQCs5ZenEbSTlfkJ+U=;
        b=j0myZgTqDPIiPvTdFWEodeOHrQ3C7BVpiwhOkAr5/cbpmfMPUDmOEpal75zMmj4Fao
         MuS1skyygsNDiVMmdqRzV7WFzfR1HGZGFs0DWOK6eZ+cvb4t5SHrbMOSQQ7+lR0zv7E6
         NTjzoaBetLtIhYRV92cDDQ/Fs9cn1lBh1s7Dk=
In-Reply-To: <48ADB041.9040806-TSDbQ3PG+2Y@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Jeremy Fitzhardinge <jeremy-TSDbQ3PG+2Y@public.gmane.org>
Cc: =?ISO-8859-2?Q?Rafa=B3_Mi=B3ecki?= <zajec5-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>, Jack Steiner <steiner-sJ/iWh9BUns@public.gmane.org>, Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>, Hugh Dickens <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>

T24gVGh1LCBBdWcgMjEsIDIwMDggYXQgMTE6MTMgQU0sIEplcmVteSBGaXR6aGFyZGluZ2UgPGpl
cmVteUBnb29wLm9yZz4gd3JvdGU6Cj4gUmFmYbMgTWmzZWNraSB3cm90ZToKPj4gSSBhZGRlZCBm
dWxsIGRtZXNnIDUgbWludXRlcyBhZnRlciBhZGRpbmcgZ3JlcHBlZDoKPj4gaHR0cDovL2J1Z3pp
bGxhLmtlcm5lbC5vcmcvYXR0YWNobWVudC5jZ2k/aWQ9MTczMzEKPj4KPgo+IE9LLCBJIHRoaW5r
IEkgc2VlIHRoZSBwcm9ibGVtIChwYXN0ZWQgZnJvbSBidWd6aWxsYSBjb21tZW50KToKPgo+Pj4+
Pgo+IFNvbWUgbm90ZXMgYXMgSSBwaWNrIHRocm91Z2ggYWxsIHRoZSBldmlkZW5jZSBzbyBmYXI6
Cj4KPiAtIHRoZSBjcmFzaCBpcyBzcGVjaWZpY2FsbHkgYmVjYXVzZSB0aGVyZSBhcmUgcmVzZXJ2
ZWQgYml0cyBzZXQgaW4gdGhlIHBtZAo+IC0gdGhlIHBtZCBpcyBiMDJhMDAwNDNhNjAwMWEzIGlu
IGJvdGggY2FzZXMKPiAtIHRoZSB2YWRkciBpcyBmZmZmODgwMTNhNjAwMDAwIGluIHRoZSBmaXJz
dCBjcmFzaCwgYW5kCj4gICAgICAgICAgICAgICBmZmZmODEwMTNhNmQxYzAwIGluIHRoZSBzZWNv
bmQKPiAgY29ycmVzcG9uZGluZyB0byB0aGUgc2FtZSBsYXJnZS1wYWdlIHBtZCBtYXBwaW5nIG9m
IHBoeXMgcGFnZSAweDEzYTYwMDAwMAo+IC0gdGhpcyBtYXBzIHRvIGU4MjAgZW50cnkKPiAgQklP
Uy1lODIwOiAwMDAwMDAwMTAwMDAwMDAwIC0gMDAwMDAwMDE0MDAwMDAwMCAodXNhYmxlKQo+IC0g
dGhlIGNvcnJlc3BvbmRpbmcgYm9vdC10aW1lIG1hcHBpbmcgaXMKPgo+IGluaXRfbWVtb3J5X21h
cHBpbmcKPiAgMDEwMDAwMDAwMCAtIDAxNDAwMDAwMDAgcGFnZSAyTQo+IGtlcm5lbCBkaXJlY3Qg
bWFwcGluZyB0YWJsZXMgdXAgdG8gMTQwMDAwMDAwIEAgYjAwMC0xMTAwMAo+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeXl5eXl5eXl5eCgp0aGlzIGlzIGp1
c3QgZXN0aW1hdGVkLiBhbmQgd29yc3QgY2FzZS4KCj4gYWRkciAxMDAwMDAwMDAgcmV1c2luZyBw
Z2QgMjAxODgwIDAwMDAwMDAwMDAyMDIwNjMKPiBsYXN0X21hcF9hZGRyOiAxNDAwMDAwMDAgZW5k
OiAxNDAwMDAwMDAKPgo+ICEhISBhbmQgdGhlIG1lbW9yeSBhbGxvY2F0ZWQgZm9yIHRoaXMgcGFn
ZXRhYmxlIGlzOgo+ICAjNSBbMDAwMDAwODAwMCAtIDAwMDAwMGIwMDBdICAgICAgICAgIFBHVEFC
TEUgPT0+IFswMDAwMDA4MDAwIC0gMDAwMDAwYjAwMF0KPiAgIzYgWzAwMDAwMGIwMDAgLSAwMDAw
MDBjMDAwXSAgICAgICAgICBQR1RBQkxFID09PiBbMDAwMDAwYjAwMCAtIDAwMDAwMGMwMDBdCj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5eXl5e
Xl5eXl5eXl5eXl5eXl5eXl5eCnRoaXMgaXMgY29ycmVjdCB2YWx1ZSB1c2VkIGZpbmFsbHkuCj4K
PiBJT1csIGl0J3MgbWFwcGluZyB1c2luZyBiMDAwLTExMDAwLCBidXQgaXQgaGFzIG9ubHkgcmVz
ZXJ2ZWQgYjAwMCAtIGMwMDAKPgo+IEFsc28sIHRoaXMgaXMgcmlnaHQgaW4gdGhlIG1pZGRsZSBv
ZiB0aGUgSVNBIGFyZWEsIHdoaWNoIHNlZW1zIHJpc2t5Lgo+IDw8PDwKCllICg==
