From: "Yinghai Lu" <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Sat, 30 Aug 2008 18:10:59 -0700
Message-ID: <86802c440808301810r17657f3fnb3c8af5496955e0d@mail.gmail.com>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>
	 <86802c440808301412k4e0b5562ie03ce41547ddab9a@mail.gmail.com>
	 <86802c440808301413g7f496e8bxd21adc60b328cd24@mail.gmail.com>
	 <200808302334.29156.rjw@sisk.pl>
Mime-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_18297_13614387.1220145060079"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type:references;
        bh=ntolIRMMIOtjy5mlNDTfQT2hH4SAATNrfx1Zx8a4D6c=;
        b=jrV1KrQXCnnFeUKe4/k2kpsG8Py3nhdOwmLjGCLcbvRp2b71HT912nggez6yWw4gpu
         JntvAa+Wx14lxWNEhA3ZvRZW9a33V1lgUOPGaht3FTZcpxnlMJ3HnukvuCQglbEIY5pi
         8l6Ey1OhAmz2AxTe9dO3CTAo157HqJBHSTUXI=
In-Reply-To: <200808302334.29156.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

------=_Part_18297_13614387.1220145060079
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Sat, Aug 30, 2008 at 2:34 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> On Saturday, 30 of August 2008, Yinghai Lu wrote:
>> On Sat, Aug 30, 2008 at 2:12 PM, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>> > On Sat, Aug 30, 2008 at 1:46 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
>> >> On Saturday, 30 of August 2008, Yinghai Lu wrote:
>> >>> please check
>> >>>
>> >>> [PATCH] x86: split e820 reserved entries record to late v4
>> >>> [PATCH] x86: split e820 reserved entries record to late v4 - fix v6
>> >>
>> >> What kernel should I apply those to and in what order?
>> >
>> > linus git tree
>> > 1. [PATCH] x86: split e820 reserved entries record to late v4
>> > 2. [PATCH] x86: split e820 reserved entries record to late v4 - fix v6
>> >
>> > tip/master
>> > 1. Resource handling: add 'insert_resource_expand_to_fit()' function
>> > 2. [PATCH] x86: split e820 reserved entries record to late v4 - fix v6
>>
>> actually it is almost the same to tar ball send you for your system...
>
> I've just tested these two patches on top of the current Linus' tree and the
> system works normally.
>

Can you try attached in addition to those to patches ?

want to check if the BAR3 get new resource..., and after that what
could happen...

YH

------=_Part_18297_13614387.1220145060079
Content-Type: text/x-patch;
 name=assign_resource_for_bar_in_host_bridge.patch
Content-Transfer-Encoding: base64
X-Attachment-Id: f_fkiysq0i0
Content-Disposition: attachment;
 filename=assign_resource_for_bar_in_host_bridge.patch

ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL3NldHVwLWJ1cy5jIGIvZHJpdmVycy9wY2kvc2V0dXAt
YnVzLmMKaW5kZXggODI2MzRhMi4uNGUwZGYwYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9wY2kvc2V0
dXAtYnVzLmMKKysrIGIvZHJpdmVycy9wY2kvc2V0dXAtYnVzLmMKQEAgLTM4LDkgKzM4LDggQEAg
c3RhdGljIHZvaWQgcGJ1c19hc3NpZ25fcmVzb3VyY2VzX3NvcnRlZChzdHJ1Y3QgcGNpX2J1cyAq
YnVzKQogCWxpc3RfZm9yX2VhY2hfZW50cnkoZGV2LCAmYnVzLT5kZXZpY2VzLCBidXNfbGlzdCkg
ewogCQl1MTYgY2xhc3MgPSBkZXYtPmNsYXNzID4+IDg7CiAKLQkJLyogRG9uJ3QgdG91Y2ggY2xh
c3NsZXNzIGRldmljZXMgb3IgaG9zdCBicmlkZ2VzIG9yIGlvYXBpY3MuICAqLwotCQlpZiAoY2xh
c3MgPT0gUENJX0NMQVNTX05PVF9ERUZJTkVEIHx8Ci0JCSAgICBjbGFzcyA9PSBQQ0lfQ0xBU1Nf
QlJJREdFX0hPU1QpCisJCS8qIERvbid0IHRvdWNoIGNsYXNzbGVzcyBkZXZpY2VzIG9yIGlvYXBp
Y3MuICAqLworCQlpZiAoY2xhc3MgPT0gUENJX0NMQVNTX05PVF9ERUZJTkVEKQogCQkJY29udGlu
dWU7CiAKIAkJLyogRG9uJ3QgdG91Y2ggaW9hcGljIGRldmljZXMgYWxyZWFkeSBlbmFibGVkIGJ5
IGZpcm13YXJlICovCg==
------=_Part_18297_13614387.1220145060079--
