From: "Vegard Nossum" <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #10724] ACPI: EC: GPE storm detected, disabling EC GPE
Date: Sun, 13 Jul 2008 22:48:26 +0200
Message-ID: <19f34abd0807131348s5e211ebdk1faa5c32ef04f1cf@mail.gmail.com>
References: <Y1jK9GMA8kJ.A.qOH.7GleIB@albercik>
	 <c6ZRbn0adb.A.LgB.aKleIB@albercik>
	 <dd18b0c30807131234n5edf3e1dt93022a45d427b1fd@mail.gmail.com>
	 <19f34abd0807131252k5499e6e2sc93f8cd70f488b7e@mail.gmail.com>
	 <Pine.LNX.4.64.0807132122001.16625@blonde.site>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=8UZD01LtfRjIaMEyM8BYvIDVLwp9PfGwBgsgQIEm0Q4=;
        b=D5AE2NJGy8ypdio/G0QQYr2gKpUi5Ef8txfMTDMyoAGvT80scEVmaaESAmwNlRTioc
         rM6hr0t58P3Sv5Ib0Xx010B1UngfT/SgEjublmyyhoTwvyFEowGZ+YCk7pui2FlYaAb7
         DNuK2aFf65APImqoW6sjzrjmzUjdpR40jKL+A=
In-Reply-To: <Pine.LNX.4.64.0807132122001.16625-popGQ1T0qN76K7/ahGyk6A@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
Cc: Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alexey Starikovskiy <astarikovskiy-l3A5Bk7waGM@public.gmane.org>

On Sun, Jul 13, 2008 at 10:27 PM, Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org> wrote:
>> I didn't follow the discussion, but I may contribute the following information:
>>
>> This message first appears in my logs on May 16. That was with kernel
>> version 2.6.24.5-85.fc8. The kernel I used before that was
>> 2.6.24.4-64.fc8 (May 3). My logs go back to November 8
>> (2.6.23.1-42.fc8). So we can hardly consider this a regression since
>> 2.6.25, but rather one since 2.6.24?
>>
>> (I'll also note that this message appears quite infrequently here.
>> Only 42 times in 219 boot-ups. So it would be hard to bisect, but I'm
>> guessing the error was introduced somewhere between 2.6.24.4 and
>> 2.6.24.5.)
>
> You're comparing against Fedora kernels, which often contain
> patches which haven't got into mainline yet.  As in this case.
> Unless it used to be assembled from separate pieces, there was
> no "GPE storm detected" message in 2.6.24.N or 2.6.25.N: it was
> added in 2.6.26-rc1.
>
> I sometimes see it too, on a Fujitsu-Siemens laptop.

Oh, right. So what exactly is the bug here? That the message appears
at all? Or is there another specific change that would cause the
warning to trigger once added? Or why do we have bugzilla entries for
broken hardware? Is there anything I can do to help the situation as
the owner of a machine which exhibits the problem?

Thanks for the info :-)


Vegard

-- 
"The animistic metaphor of the bug that maliciously sneaked in while
the programmer was not looking is intellectually dishonest as it
disguises that the error is the programmer's own creation."
	-- E. W. Dijkstra, EWD1036
