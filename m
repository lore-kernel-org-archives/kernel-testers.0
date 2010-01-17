From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: 2.6.33-rc2: Reported regressions from 2.6.32
Date: Sun, 17 Jan 2010 16:18:39 +0200
Message-ID: <84144f021001170618g708a7c14ob1b222ab1cbdaa20@mail.gmail.com>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera>
	 <20100116174821.GA18306@redhat.com> <201001162257.16277.rjw@sisk.pl>
	 <alpine.LFD.2.00.1001161402400.13231@localhost.localdomain>
	 <20100117123218.GA3182@redhat.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=wPK5Gcmn6K/QBWDIIBdX+RCmQq27KZRsp3ZTkvYA3us=;
        b=OZN3CrJj7gcqToBiV8BMHJ3SFOjeQQ1WjzO0vW1lfoDUTcKh8ndcofY5vM9WRzyNwz
         bj+RejTc39qm26VAyNitCLbxON+U4Ih0NShZeZ9UOxSiRjPD6hMiNkKTibeYDnDWs8fb
         305Ihj5AAP8udZaPxBGhJ/pwKDgXZTij0fUw4=
In-Reply-To: <20100117123218.GA3182-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Michael S. Tsirkin" <m.s.tsirkin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Network Development <netdev-u79uwXL29TY@public.gmane.org>

On Sun, Jan 17, 2010 at 2:32 PM, Michael S. Tsirkin
<m.s.tsirkin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> On Sat, Jan 16, 2010 at 02:04:07PM -0800, Linus Torvalds wrote:
>>
>>
>> On Sat, 16 Jan 2010, Rafael J. Wysocki wrote:
>> >
>> > > Immediately upon startup, screen is flickering (becomes
>> > > lighter and darker again). The problem occurs with kernels
>> > > 2.6.33-rc1 to 2.6.33-rc4, but not with kernel 2.6.32 and below.
>> >
>> > We've already had several reports like this already.
>> >
>> > Care to review the bugs linked to http://bugzilla.kernel.org/show_=
bug.cgi?id=3D14885
>> > and check if none of them matches the problem you describe?
>>
>> I suspect that should be fixed by commit 33814341f22 ("drm/i915: dis=
able
>> LVDS downclock by default") that got merged today.
>>
>> So try current -git.
>>
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 Linus
>
>
> Tested with 6ccf80eb15ccaca4d3f1ab5162b9ded5eecd9971, still get
> the flickering effect. so 33814341f22 does not seem to help.

Yeah, me too which is why I am doing a git bisect here. What's strange
about it is that the first bisection point seems to suggest that the
regression happened _before_ the DRM merge to 2.6.33-rc1. I guess it's
possible that the bug is already in 2.6.32 but I've yet to see the
flickering effect. Oh well, back to bisect...

                        Pekka
