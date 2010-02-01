From: David Miller <davem@davemloft.net>
Subject: Re: [Bug #15196] kmem_cache_create: duplicate cache ccid2_h
Date: Mon, 01 Feb 2010 04:49:11 -0800 (PST)
Message-ID: <20100201.044911.15611947.davem@davemloft.net>
References: <7b6bb4a51001311930i7d72f60dj3b15ca3e1a715607@mail.gmail.com>
	<20100131.232050.266652459.davem@davemloft.net>
	<20100201115518.GA25094@hmsreliant.think-freely.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20100201115518.GA25094@hmsreliant.think-freely.org>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: nhorman@tuxdriver.com
Cc: xtfeng@gmail.com, rjw@sisk.pl, htd@fancy-poultry.org, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org

From: Neil Horman <nhorman@tuxdriver.com>
Date: Mon, 1 Feb 2010 06:55:18 -0500

> He claims this dependency is deliberate and requires, to which I agree, but he
> would seem to fix that by making the dccp_probe module error out in the event
> that dccp wasn't loaded.  Why bother with that?

Neil, please get into the thread Gerrit started so he can see your
questions and responses too.

I already chided him for not CC:'ing you in the first place, guys
stop hiding from eachother :-)
