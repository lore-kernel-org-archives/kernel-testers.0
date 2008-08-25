From: "Vegard Nossum" <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: SLUB/debugobjects locking (Re: 2.6.27-rc4-git1: Reported regressions from 2.6.26)
Date: Mon, 25 Aug 2008 21:44:09 +0200
Message-ID: <19f34abd0808251244v439e78b1hbb24f77c637559c3@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_92374_6092228.1219693449156"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:mime-version:content-type;
        bh=MaB0kgGKHCt0ot7W4/LOEaEzh4qBQphdsztgi8wCOsc=;
        b=ZME4ycrADlr1lGvpNJwcTH8t7mDZgJ82W2Q+Gt7qR3uH26FvBZMM7HHrogp082HQrF
         wbfaQMgFYKC9aR+bBsexr7k794kegynOGz/yXGPVsPO9G1Hq5ofdvsGe58g2RxofFHfP
         3NverZdAQL04Mrp6HUzgWbFXhwLnD73aOeuU0=
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Daniel J Blueman <daniel.blueman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

------=_Part_92374_6092228.1219693449156
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Mon, Aug 25, 2008 at 3:03 PM, Daniel J Blueman
<daniel.blueman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> Hi Linus, Vegard,
>
> On Sun, Aug 24, 2008 at 7:58 PM, Linus Torvalds
> <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:
>> On Sun, 24 Aug 2008, Vegard Nossum wrote:
> [snip]
>> Anyway, I think your patch is likely fine, I just thought it looked a bit
>> odd to have a loop to move a list from one head pointer to another.
>>
>> But regardless, it would need some testing. Daniel?
>
> This opens another lockdep report at boot-time [1] - promoting
> pool_lock may not be the best fix?
>
> We then see a new deadlock condition (on the pool_lock spinlock) [2],
> which seemingly was avoided by taking the debug-bucket lock first.
>
> We reproduce this by booting with debug_objects=1 and causing a lot of activity.

Thanks. I get the same thing here as well.

I tried your suggestion of promoting the lock to irq-safe, and it
fixed the warning for me (didn't get or look for deadlocks yet, but it
seems likely that it is caused by the same thing?), the patch is
attached for reference.

I also don't know if this is the best fix, but I also don't have any
other (better) suggestions.

Others are welcome to pick it up from here...


Vegard

-- 
"The animistic metaphor of the bug that maliciously sneaked in while
the programmer was not looking is intellectually dishonest as it
disguises that the error is the programmer's own creation."
	-- E. W. Dijkstra, EWD1036

------=_Part_92374_6092228.1219693449156
Content-Type: application/octet-stream; name=promoted.patch
Content-Transfer-Encoding: base64
X-Attachment-Id: f_fkbhvyqy0
Content-Disposition: attachment; filename=promoted.patch

ZGlmZiAtLWdpdCBhL2xpYi9kZWJ1Z29iamVjdHMuYyBiL2xpYi9kZWJ1Z29iamVjdHMuYwppbmRl
eCA5ZDgxNjFmLi5hYzQ2NDA1IDEwMDY0NAotLS0gYS9saWIvZGVidWdvYmplY3RzLmMKKysrIGIv
bGliL2RlYnVnb2JqZWN0cy5jCkBAIC0xMTYsOSArMTE2LDEwIEBAIHN0YXRpYyBzdHJ1Y3QgZGVi
dWdfb2JqICpsb29rdXBfb2JqZWN0KHZvaWQgKmFkZHIsIHN0cnVjdCBkZWJ1Z19idWNrZXQgKmIp
CiBzdGF0aWMgc3RydWN0IGRlYnVnX29iaiAqCiBhbGxvY19vYmplY3Qodm9pZCAqYWRkciwgc3Ry
dWN0IGRlYnVnX2J1Y2tldCAqYiwgc3RydWN0IGRlYnVnX29ial9kZXNjciAqZGVzY3IpCiB7CisJ
dW5zaWduZWQgbG9uZyBmbGFnczsKIAlzdHJ1Y3QgZGVidWdfb2JqICpvYmogPSBOVUxMOwogCi0J
c3Bpbl9sb2NrKCZwb29sX2xvY2spOworCXNwaW5fbG9ja19pcnFzYXZlKCZwb29sX2xvY2ssIGZs
YWdzKTsKIAlpZiAob2JqX3Bvb2wuZmlyc3QpIHsKIAkJb2JqCSAgICA9IGhsaXN0X2VudHJ5KG9i
al9wb29sLmZpcnN0LCB0eXBlb2YoKm9iaiksIG5vZGUpOwogCkBAIC0xMzcsNyArMTM4LDcgQEAg
YWxsb2Nfb2JqZWN0KHZvaWQgKmFkZHIsIHN0cnVjdCBkZWJ1Z19idWNrZXQgKmIsIHN0cnVjdCBk
ZWJ1Z19vYmpfZGVzY3IgKmRlc2NyKQogCQlpZiAob2JqX3Bvb2xfZnJlZSA8IG9ial9wb29sX21p
bl9mcmVlKQogCQkJb2JqX3Bvb2xfbWluX2ZyZWUgPSBvYmpfcG9vbF9mcmVlOwogCX0KLQlzcGlu
X3VubG9jaygmcG9vbF9sb2NrKTsKKwlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZwb29sX2xvY2ss
IGZsYWdzKTsKIAogCXJldHVybiBvYmo7CiB9CkBAIC0xNDcsMTggKzE0OCwxOSBAQCBhbGxvY19v
YmplY3Qodm9pZCAqYWRkciwgc3RydWN0IGRlYnVnX2J1Y2tldCAqYiwgc3RydWN0IGRlYnVnX29i
al9kZXNjciAqZGVzY3IpCiAgKi8KIHN0YXRpYyB2b2lkIGZyZWVfb2JqZWN0KHN0cnVjdCBkZWJ1
Z19vYmogKm9iaikKIHsKKwl1bnNpZ25lZCBsb25nIGZsYWdzOwogCXVuc2lnbmVkIGxvbmcgaWR4
ID0gKHVuc2lnbmVkIGxvbmcpKG9iaiAtIG9ial9zdGF0aWNfcG9vbCk7CiAKIAlpZiAob2JqX3Bv
b2xfZnJlZSA8IE9ERUJVR19QT09MX1NJWkUgfHwgaWR4IDwgT0RFQlVHX1BPT0xfU0laRSkgewot
CQlzcGluX2xvY2soJnBvb2xfbG9jayk7CisJCXNwaW5fbG9ja19pcnFzYXZlKCZwb29sX2xvY2ss
IGZsYWdzKTsKIAkJaGxpc3RfYWRkX2hlYWQoJm9iai0+bm9kZSwgJm9ial9wb29sKTsKIAkJb2Jq
X3Bvb2xfZnJlZSsrOwogCQlvYmpfcG9vbF91c2VkLS07Ci0JCXNwaW5fdW5sb2NrKCZwb29sX2xv
Y2spOworCQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZwb29sX2xvY2ssIGZsYWdzKTsKIAl9IGVs
c2UgewotCQlzcGluX2xvY2soJnBvb2xfbG9jayk7CisJCXNwaW5fbG9ja19pcnFzYXZlKCZwb29s
X2xvY2ssIGZsYWdzKTsKIAkJb2JqX3Bvb2xfdXNlZC0tOwotCQlzcGluX3VubG9jaygmcG9vbF9s
b2NrKTsKKwkJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmcG9vbF9sb2NrLCBmbGFncyk7CiAJCWtt
ZW1fY2FjaGVfZnJlZShvYmpfY2FjaGUsIG9iaik7CiAJfQogfQo=
------=_Part_92374_6092228.1219693449156--
