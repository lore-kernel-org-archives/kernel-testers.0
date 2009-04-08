From: Vegard Nossum <vegard.nossum@gmail.com>
Subject: Re: 2.6.30-rc1 cannot boot: scsi/async
Date: Wed, 8 Apr 2009 19:15:39 +0200
Message-ID: <19f34abd0904081015r5549da00w97593be16373bb8c@mail.gmail.com>
References: <a4423d670904081012j30ad104etefeee0c8c682aca9@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-scsi-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=O+bkEeYzMxqGYpGW2QVldbx3LcD7gAIz3DFVNScnzn8=;
        b=HXxbz++FQJx+/IwCOLqpoUXona8J5MmplytrkNas0OrT4tENbnXwe1Nmh+izhy8AV6
         m1OmLHEND9g6X+iIEjpsa6z9XKVTex+s77mxk7NZUu7LdcS0m8dBhuHa2pmuRnG6iyOs
         oLrYH6Y3M7/2ZIEQpWAW41zjh2xUxN312WwyE=
In-Reply-To: <a4423d670904081012j30ad104etefeee0c8c682aca9@mail.gmail.com>
Sender: linux-scsi-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alexander Beregalov <a.beregalov@gmail.com>
Cc: LKML <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, linux-scsi@vger.kernel.org

2009/4/8 Alexander Beregalov <a.beregalov@gmail.com>:
> Hi
>
> It is 2*2 SMP system, x86_64.
>
> INFO: task async/0:1073 blocked for more than 120 seconds.


Hi,

I just proposed a patch to fix this:

http://marc.info/?l=linux-kernel&m=123920746830420&w=2

Don't know if it's correct or whether it actually fixes the problem,
but you are welcome to try it :-)


Vegard

-- 
"The animistic metaphor of the bug that maliciously sneaked in while
the programmer was not looking is intellectually dishonest as it
disguises that the error is the programmer's own creation."
	-- E. W. Dijkstra, EWD1036
