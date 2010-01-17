From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: 2.6.33-rc2: Reported regressions from 2.6.32
Date: Sun, 17 Jan 2010 18:43:40 +0200
Message-ID: <84144f021001170843s67afae24oaabf09e9b13af8db@mail.gmail.com>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera>
	 <20100116174821.GA18306@redhat.com> <201001162257.16277.rjw@sisk.pl>
	 <alpine.LFD.2.00.1001161402400.13231@localhost.localdomain>
	 <20100117123218.GA3182@redhat.com>
	 <84144f021001170618g708a7c14ob1b222ab1cbdaa20@mail.gmail.com>
	 <20100117161726.5752b181@schatten.dmk.lab>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type;
        bh=0366UfD7OkBQq3XP1MSOqqOZ4fmKpb+MKx0+Yg3O4vw=;
        b=f2666TFp4wyBfgvppSf40ZkwNOj24s//HsSxvdggHvF1lixz82+2T6SjviTMzZ1gpu
         zv3tPECNsdsncxkkgBjkIcFOglY3jHdanpMZUSeYROsb3pSV93UyTr1/6zU3MAvEhnRi
         rno6M5NNbp8DuKla9RtfHwYCnYAZv+4y/QFko=
In-Reply-To: <20100117161726.5752b181-mGsOIKOveelVRbCss4o9kg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, "Michael S. Tsirkin" <m.s.tsirkin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

Hi Florian,

(Please don't trim the cc list.)

On Sun, Jan 17, 2010 at 5:17 PM, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org> wrote:
> on which side of the merge? linus or drm?
> i.e. it is to be expected to be before the merge, (but on the drm side)
> so don't get confused... or did i misunderstood the situation?

Like I said, don't read too much into the results but the current
situation looks like the regression happened _after_ 2.6.32 but before
any of the DRM code was merged to 2.6.33-rc1. I don't think that makes
much sense which is why I'm back to testing 2.6.32 more to see if the
bug is there already but just harder to trigger for whatever reason.

                        Pekka
