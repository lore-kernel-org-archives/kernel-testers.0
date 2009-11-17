From: "Justin P. Mattock" <justinmattock@gmail.com>
Subject: Re: [Bug #14267] Disassociating atheros wlan
Date: Tue, 17 Nov 2009 10:07:09 -0800
Message-ID: <4B02E64D.2010700@gmail.com>
References: <ipicVA1QUFF.A.zWB.1mdALB@chimera>	<OWmO9uyC1hM.A.yiC._ndALB@chimera>	<4B01F3FE.8040707@gmail.com> <20091117113320.8aef894a.kristoffer.ericson@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755852AbZKQSGc@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=rBv7z/ZJyXWgKdRzEm4ZbBczx0qdp9mSMc5ayboI24s=;
        b=EGDy92EIOHnulajGMDcBc9GYJ0CxBrhZpf3eaGWDttb0Sm/55fLVVlPqnmc6SMoG5/
         rc5U0JSvYNz/g4jTA4A5utpyyVxNaYbuwF9/P7abyojQDFoHytBOHHi9q9EKD/c4ylKM
         pkHy3+L4l81uIieidE58cCMsvg00hgbrhOLQE=
In-Reply-To: <20091117113320.8aef894a.kristoffer.ericson@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Kristoffer Ericson <kristoffer.ericson@gmail.com>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Johannes Berg <johannes@sipsolutions.net>, "John W. Linville" <linville@tuxdriver.com>

Kristoffer Ericson wrote:
>
>
> Im still hitting this so basicly using 2.6.30 until it get sorted. Will try and make
> some time to test the different commits. Last time I waited for it to disconnect which
> could take 10-40min. Since it depends on the network load Im now going to increase
> the load to see if I hit it quicker (and thus finding the error commit).
>
> So in short, its still valid and I will try and make time to fix it :)
>
>
>
>    
o.k. so it is something that is enough to
cause an inconvenience.

Justin P. mattock
