From: Jarek Poplawski <jarkao2-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.30-rc1: e1000: list_add corruption
Date: Thu, 9 Apr 2009 07:12:42 +0000
Message-ID: <20090409071242.GA5515@ff.dom.local>
References: <20090408.212040.184687004.davem@davemloft.net>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=csJa1Tj9IvcuVDK4FbGt7jgOiQjmzEWnBcL5SUgrs1g=;
        b=oiOMAesqXnQtnogaxuifyWolsPZB5Tj/Ld/ysYVQyXYonxqJjfPDOljisxF2WkU3dQ
         qyz79r+ska4cD3azdfQhOiByhgEY6K9bieut1S+mhFz+5/aw2T4zwVvdCWsRMEdMkweb
         6l0de7uGvUy5l7poo02EIWRvHBsCtVJRe3HyQ=
Content-Disposition: inline
In-Reply-To: <20090408.212040.184687004.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, e1000-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org

On 09-04-2009 06:20, David Miller wrote:
> From: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date: Thu, 9 Apr 2009 08:16:00 +0400
> 
>> The host has two interfaces
>> eth0 - e1000, eth1 - forcedeth.
>> Both are not working after that messages.
> 
> It looks like the NAPI pending list is being modified in an illegal
> state by forcedeth, and mid-stream to a list_del() an e1000 interrupt
> comes in and this tries to schedule the e1000 NAPI context and we get
> list corruption.

Good point! Feel free to send a patch. ;-)

Jarek P.
