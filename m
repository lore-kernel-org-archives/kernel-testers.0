From: Giovanni Pellerano <giovanni.pellerano-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11664] acpi errors and random freeze on sony vaio sr
Date: Mon, 03 Nov 2008 11:14:21 +0100
Message-ID: <490ECEFD.8000409@gmail.com>
References: <Sl8SUNhCbfL.A.O5H.yueDJB@chimera> <4xS1r6m15_B.A.xNB.iveDJB@chimera> <490DF64C.1090104@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :x-enigmail-version:content-type:content-transfer-encoding:sender;
        bh=2Jq8klt0DGs6rIwimAiRbk1K3TMNSJSFZ3qzUovsPtc=;
        b=D975kzjeQEGp1wFHTtUK/OVOBjnD/ny03wnbhRgA0dh2pMwVemD0BydQ4KnQAZN43U
         Vu4dA8LPcPRZkCURa3BoHP0cFonw5BoWQO3plTo2eUcg2X6OKpTLtFKWCzzXxexMf+CS
         pQ8v9XtMedjiaptt5ooXLmSw9nf1mPcrjmcRQ=
In-Reply-To: <490DF64C.1090104-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

With a random factor i also get this:

ACPI Error (evevent-0303): No installed handler for fixed event
[00000002] [20080926]



and the acpi stop handling all events, like powerbutton and other;

any assumptions?
