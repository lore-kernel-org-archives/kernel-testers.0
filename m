From: "Yinghai Lu" <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Sun, 31 Aug 2008 14:03:23 -0700
Message-ID: <86802c440808311403y57ba050q223fbe370d2c7675@mail.gmail.com>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>
	 <200808302334.29156.rjw@sisk.pl>
	 <86802c440808301810r17657f3fnb3c8af5496955e0d@mail.gmail.com>
	 <200808311427.19369.rjw@sisk.pl>
	 <alpine.LFD.1.10.0808311039330.12958@nehalem.linux-foundation.org>
	 <86802c440808311054q4b8e8921qa9f090527b456e34@mail.gmail.com>
	 <alpine.LFD.1.10.0808311100520.12958@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_23139_6993983.1220216603530"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type:references;
        bh=5iOoGPX4wCZ42UzzRZjdesHxSklXY5t0N1J8DtYOBhI=;
        b=fyIxnL3b6TxSklAWH4WO4rh1cX3mpkffEFPQcjw90rvktlUNxnVxd/aWI6RhGj1PSA
         7B3ooFnYWFFY/0G06pAoI1RxGKTlBd967OObO5zcDmaL7w7OphwQLF7lBWP6ziMx+7rv
         KDM7gZHGIWeyGk0Cjk1BBWMGX2603WLl/EwDQ=
In-Reply-To: <alpine.LFD.1.10.0808311100520.12958-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

------=_Part_23139_6993983.1220216603530
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Sun, Aug 31, 2008 at 11:03 AM, Linus Torvalds
<torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:
>
>
> On Sun, 31 Aug 2008, Yinghai Lu wrote:
>>
>> wonder how the probe could find out the size of is 1fff_ffff..
>
> Heh. That's how PCI sizing works: you write all ones to the register, and
> read back the result. The low bits won't change, and that indicates the
> size.
>
> But if _none_ of the bits change, then that simply means that the size
> will be calculated to be 0xffffffff-start.
>
> So the sizing will "work", it will just always report that the BAR covers
> everything from start to the 4G limit.

how about


diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
index cce2f4c..3b5269a 100644
--- a/drivers/pci/probe.c
+++ b/drivers/pci/probe.c
@@ -240,6 +240,11 @@ static int __pci_read_base(struct pci_dev *dev,
enum pci_bar_type type,
        pci_read_config_dword(dev, pos, &l);
        pci_write_config_dword(dev, pos, mask);
        pci_read_config_dword(dev, pos, &sz);
+
+       /* sticky and non changable */
+       if (sz == l)
+               goto fail;
+
        pci_write_config_dword(dev, pos, l);

        /*


Rafael,

can you check attach one  to see if we still have warning ?

YH

------=_Part_23139_6993983.1220216603530
Content-Type: text/x-patch; name=sticky_bar.patch
Content-Transfer-Encoding: base64
X-Attachment-Id: f_fkk5d8xo0
Content-Disposition: attachment; filename=sticky_bar.patch

ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL3Byb2JlLmMgYi9kcml2ZXJzL3BjaS9wcm9iZS5jCmlu
ZGV4IGNjZTJmNGMuLjNiNTI2OWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGNpL3Byb2JlLmMKKysr
IGIvZHJpdmVycy9wY2kvcHJvYmUuYwpAQCAtMjQwLDYgKzI0MCwxMSBAQCBzdGF0aWMgaW50IF9f
cGNpX3JlYWRfYmFzZShzdHJ1Y3QgcGNpX2RldiAqZGV2LCBlbnVtIHBjaV9iYXJfdHlwZSB0eXBl
LAogCXBjaV9yZWFkX2NvbmZpZ19kd29yZChkZXYsIHBvcywgJmwpOwogCXBjaV93cml0ZV9jb25m
aWdfZHdvcmQoZGV2LCBwb3MsIG1hc2spOwogCXBjaV9yZWFkX2NvbmZpZ19kd29yZChkZXYsIHBv
cywgJnN6KTsKKworCS8qIHN0aWNreSBhbmQgbm9uIGNoYW5nYWJsZSAqLworCWlmIChzeiA9PSBs
KQorCQlnb3RvIGZhaWw7CisKIAlwY2lfd3JpdGVfY29uZmlnX2R3b3JkKGRldiwgcG9zLCBsKTsK
IAogCS8qCg==
------=_Part_23139_6993983.1220216603530--
