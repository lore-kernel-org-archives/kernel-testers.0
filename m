From: Pekka Enberg <penberg-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #39412] Win Vista and Win2K8 guests' network breaks down
Date: Mon, 15 Aug 2011 13:33:07 +0300
Message-ID: <CAOJsxLEToaQe3DrhUQx5FizMnzATxwG8XGCPwZpRFpuBQpq1ug@mail.gmail.com>
References: <xuTC4jRtHbB.A.l4H.gMCSOB@chimera>
	<bkwpSnItbJM.A.nx.VNCSOB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:sender:in-reply-to:references:date
         :x-google-sender-auth:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=jkCV1gRNtj4AL6McILZZPTHos0okEOynJYh4h7KqzZ0=;
        b=JHq8+57XCeDewgUVzMDjYhbbylGQ+hCiQR8qBadRbqrmSC4jSCJPWlO+k8GvjrI6V0
         F/7tBy6tqLWo3QLmGIloYgjBgTEUhBl1sOnv2h0bfhw+37Q58UapouvUMkzO7tMWtP2C
         ksmVpIQlxSZ9U399ihFnt/hd/legpLyqmNcWg=
In-Reply-To: <bkwpSnItbJM.A.nx.VNCSOB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Jay Ren <yongjie.ren-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, stefanha-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org, KVM General <kvm-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sun, Aug 14, 2011 at 10:07 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote=
:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.39 and 3.0.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.39 and 3.0. =A0Please verify if it still shoul=
d
> be listed and let the tracking team know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
39412
> Subject =A0 =A0 =A0 =A0 : Win Vista and Win2K8 guests' network breaks=
 down
> Submitter =A0 =A0 =A0 : Jay Ren <yongjie.ren-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2011-07-15 15:31 (31 days old)

The bugzilla report claims that this commit fixes the regression:

http://git.kernel.org/?p=3Dvirt/kvm/kvm.git;a=3Dcommitdiff;h=3De72ef590=
a3ef3047f6ed5bcb8808a9734f6c4b32

The commit, however, is not in mainline nor does it seem to be tagged
for -stable.
