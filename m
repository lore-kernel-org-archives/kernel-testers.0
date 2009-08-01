From: "Pallipadi, Venkatesh" <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: RE: [Bug #13667] drm: display arifacts when X.Org is stopped
Date: Fri, 31 Jul 2009 19:28:30 -0700
Message-ID: <7E82351C108FA840AB1866AC776AEC466D66A552@orsmsx505.amr.corp.intel.com>
References: <35kKlbXMqWN.A.RXD.D0oUKB@chimera>
 <200907251833.42598.elendil@planet.nl>
 <21d7e9970907300340t79e063e1n18cdba11538c2fdc@mail.gmail.com>
 <200907301341.01693.elendil@planet.nl>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200907301341.01693.elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Content-Language: en-US
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Dave Airlie <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Siddha, Suresh B" <suresh.b.siddha-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

 

>-----Original Message-----
>From: Frans Pop [mailto:elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org] 
>Sent: Thursday, July 30, 2009 4:41 AM
>To: Dave Airlie
>Cc: Rafael J. Wysocki; Linux Kernel Mailing List; Kernel 
>Testers List; Siddha, Suresh B; Pallipadi, Venkatesh
>Subject: Re: [Bug #13667] drm: display arifacts when X.Org is stopped
>
>On Thursday 30 July 2009, Dave Airlie wrote:
>> On Sun, Jul 26, 2009 at 2:33 AM, Frans Pop<elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org> wrote:
>> > On Thursday 09 July 2009, Frans Pop wrote:
>> >> > However we shall endeavour to fix this issues as it may be
>> >> > systemic of something else going wrong in the new PAT/AGP code.
>> >>
>> >> Great. Thanks in advance, I do appreciate it.
>> >
>> > Any news on this?
>>
>> http://git.infradead.org/users/dwmw2/iommu-agp.git
>>
>> don't suppose you could pull that tree in and see if it helps?
>
>Sure I can :-)
>I merged its master branch on top of current mainline + some 
>local patches 
>I have. But I'm afraid it does not make any difference.
>
>Note that I also added Venki's PAT patch set for .32 [1] in my local 
>patches because of this issue, but that does not make any difference 
>either.
>

Can you please check whether the patch here helps?
http://bugzilla.kernel.org/show_bug.cgi?id=13884

Thanks,
Venki--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
