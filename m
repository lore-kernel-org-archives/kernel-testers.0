From: Ray Lee <madrabbit-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12393] debugging in dosemu causes lots of 'scheduling while 
	atomic'
Date: Thu, 5 Feb 2009 08:25:05 -0800
Message-ID: <2c0942db0902050825q90be8d3uf16cafa2e24115bd@mail.gmail.com>
References: <a47yn9c9JrF.A.hz.L5YiJB@chimera>
	 <CGyEB0S4BpO.A.C8C.-5YiJB@chimera>
	 <a5d587fb0902041844v40f1d441s535d070437aa9823@mail.gmail.com>
	 <200902051709.12967.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=Mc9nV4u++456Q4ezcwVE+wkegR8rxppVxLvXQeg1xOE=;
        b=PBJr7iR8OhgfxuZlLzfJ5N/N/kzmggYR9IV+pF46TCWZXbdsEVSlVUXahVCPELPmQy
         vCEENCTDRBn8ZeBx53UU2yQbFk4cqX3O+VWOEowRidCsyQ6lh+Nig6ATEWsF47lYp7PY
         gh73ybCny0GGkSf06ZghIhnanqS8Gl2XmzuH8=
In-Reply-To: <200902051709.12967.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Michal Suchanek <hramrach-aRb0bU7PRFPrBKCeMvbIDA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Thu, Feb 5, 2009 at 8:09 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> On Thursday 05 February 2009, Michal Suchanek wrote:
>> As I said earlier I have received a patch that I applied locally and
>> that fixes the problem.
>>
>> As to if and when the patch actually appears in the kernel is out of
>> my control, and nobody told me that it was applied.
>>
>> If you believe it was applied to a kernel version that is readily
>> available for download I am wiling to test such version.
>
> I don't at the moment.
>
> Can you send me a URL to the patch, please?

http://lkml.org/lkml/2009/1/13/445
