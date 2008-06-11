From: "Vegard Nossum" <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [BUG] 2.6.26-rc5-mm2 - kernel BUG at arch/x86/kernel/setup.c:388!
Date: Wed, 11 Jun 2008 20:37:09 +0200
Message-ID: <19f34abd0806111137t4291b9fkb66951aa8f4d456f@mail.gmail.com>
References: <20080609223145.5c9a2878.akpm@linux-foundation.org>
	 <485011DF.9050606@linux.vnet.ibm.com>
	 <1213208897.20475.19.camel@nimitz>
Mime-Version: 1.0
Content-Transfer-Encoding: base64
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=/pK2awL0VdB/DtB2IF/Kn+t8dKLtHqvrTDlF8a2i780=;
        b=gxVUBnPq6k1W93VBOZFt4mqFzxA3IkeG/lMEG4/Ud3NSHIY97an6LmNhzV0LGOWtG4
         kUc8YVA9cC10r0VpNZt7fkuISU4cW2D3lGa1cdNy1+sv5mqkyEucfbG54m3d87/vW7sT
         xlR6Be9wysUexDo2JW5ArHZLU0rJDHIp7FcLg=
In-Reply-To: <1213208897.20475.19.camel@nimitz>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Dave Hansen <dave-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Cc: Kamalesh Babulal <kamalesh-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, Andy Whitcroft <apw-26w3C0LaAnFg9hUCZPvPmw@public.gmane.org>, Balbir Singh <balbir-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, Mike Travis <travis-sJ/iWh9BUns@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

T24gNi8xMS8wOCwgRGF2ZSBIYW5zZW4gPGRhdmVAbGludXgudm5ldC5pYm0uY29tPiB3cm90ZToK
PiBPbiBXZWQsIDIwMDgtMDYtMTEgYXQgMjM6MjYgKzA1MzAsIEthbWFsZXNoIEJhYnVsYWwgd3Jv
dGU6Cj4gID4gSGkgQW5kcmV3LAo+ICA+Cj4gID4gVGhlIDIuNi4yNi1yYzUtbW0yIGtlcm5lbCBw
YW5pYydzLCB3aGlsZSBib290aW5nIHVwIG9uIHRoZSB4ODZfNjQKPiAgPiBib3ggd2l0aCB0aGUg
YXR0YWNoZWQgLmNvbmZpZyBmaWxlLgo+Cj4KPiBKdXN0IHRvIHNhdmUgZXZlcnlvbmUgdGhlIHRy
b3VibGUsIGl0IGxvb2tzIGxpa2UgdGhpcyBpcyBhIG5ldyBCVUdfT04oKS4KPiAg77u/Cj4gIGh0
dHA6Ly93d3cua2VybmVsLm9yZy9wdWIvbGludXgva2VybmVsL3Blb3BsZS9ha3BtL3BhdGNoZXMv
Mi42LzIuNi4yNi1yYzUvMi42LjI2LXJjNS1tbTIvYnJva2VuLW91dC9maXgteDg2XzY0LXNwbGF0
LnBhdGNoCj4KPiAgVGhlIG1hY2hpbmUgaW4gcXVlc3Rpb24gaXMgYSBzaW5nbGUtbm9kZSBtYWNo
aW5lLCBidXQgd2l0aAo+ICBDT05GSUdfTlVNQT15Lgo+CgpZZXMuIFNvcnJ5LCBJIGFscmVhZHkg
cmVzcG9uZGVkIGluIGEgc2VwYXJhdGUgZS1tYWlsIChzZWUgYmVsb3cpLCBidXQKdGhhdCBvYnZp
b3VzbHkgbWlzc2VkIGFsbCB0aGUgQ2NzLiBTbyBoZXJlIGl0IGdvZXMgYWdhaW4uLi46CgpJJ20g
YmV0dGluZwoKY29tbWl0IGE5NTNlNDU5N2FiZDUxYjc0Yzk5ZTBlM2I3MDc0NTMyYTYwZmQwMzEK
QXV0aG9yOiBNaWtlIFRyYXZpcyA8dHJhdmlzQHNnaS5jb20+CkRhdGU6ICAgTW9uIE1heSAxMiAy
MToyMToxMiAyMDA4ICswMjAwCgogICAgc2NoZWQ6IHJlcGxhY2UgTUFYX05VTU5PREVTIHdpdGgg
bnJfbm9kZV9pZHMgaW4ga2VybmVsL3NjaGVkLmMKCndpbGwgZml4IHRoaXMgaWYgaXQncyBub3Qg
aW4gLW1tMiBhbHJlYWR5LgoKVGhlIEJVRygpIGlzIHNpbXBseSB0aGVyZSB0byBwcmV2ZW50IHNp
bGVudCBjb3JydXB0aW9uLiBNaWtlIGFscmVhZHkKaGFzIGEgcGF0Y2ggdGhhdCBjaGFuZ2VzIGl0
IHRvIGEgV0FSTigpLCBidXQgaXQgb2J2aW91c2x5IGRpZG4ndCBnZXQKdGhyb3VnaCAoZWl0aGVy
KS4uLgoKClZlZ2FyZAoKCk9uIDYvMTEvMDgsIFZlZ2FyZCBOb3NzdW0gPHZlZ2FyZC5ub3NzdW1A
Z21haWwuY29tPiB3cm90ZToKPiBPbiA2LzkvMDgsIEthbWFsZXNoIEJhYnVsYWwgPGthbWFsZXNo
QGxpbnV4LnZuZXQuaWJtLmNvbT4gd3JvdGU6Cj4gID4gSGkgQW5kcmV3LAo+ICA+Cj4gID4gVGhl
IDIuNi4yNi1yYzUtbW0yIGtlcm5lbCBwYW5pYydzLCB3aGlsZSBib290aW5nIHVwIG9uIHRoZSB4
ODZfNjQKPiAgPiBib3ggd2l0aCB0aGUgYXR0YWNoZWQgLmNvbmZpZyBmaWxlLgo+Cj4gIChQbGVh
c2UgYXBvbG9naXplIGZvciB0aGUgc3RyYW5nZSB3YXkgb2YgcmVwbHlpbmcgdG8gdGhpcyBtZXNz
YWdlLiBJdAo+ICBzZWVtcyB0aGF0IExLTUwgZ2F2ZSB1cCBkZWxpdmVyaW5nIHRvIG15IGFkZHJl
c3MsIHNvIEknbSBjdXJyZW50bHkKPiAgcmVhZGluZyBvZmYgbGttbC5vcmcuKQo+Cj4gIFRoaXMg
c2hvdWxkIGFscmVhZHkgYmUgZml4ZWQsIGJ1dCBBbmRyZXcgcmVmdXNlZCB0byBhcHBseSB0aGUg
cGF0Y2gKPiAgYmVmb3JlIHJlbGVhc2luZyB0aGUgLW1tMSAoYW5kIC1tbTIgYXBwYXJlbnRseSku
IEknbSBhdHRhY2hpbmcgdGhlCj4gIHBhdGNoLCBjYW4geW91IHNlZSBpZiBpdCBoZWxwcz8KPgo+
ICBUaGFua3MuCj4KPgo+ICBWZWdhcmQKCi0tIAoiVGhlIGFuaW1pc3RpYyBtZXRhcGhvciBvZiB0
aGUgYnVnIHRoYXQgbWFsaWNpb3VzbHkgc25lYWtlZCBpbiB3aGlsZQp0aGUgcHJvZ3JhbW1lciB3
YXMgbm90IGxvb2tpbmcgaXMgaW50ZWxsZWN0dWFsbHkgZGlzaG9uZXN0IGFzIGl0CmRpc2d1aXNl
cyB0aGF0IHRoZSBlcnJvciBpcyB0aGUgcHJvZ3JhbW1lcidzIG93biBjcmVhdGlvbi4iCgktLSBF
LiBXLiBEaWprc3RyYSwgRVdEMTAzNgo=
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
