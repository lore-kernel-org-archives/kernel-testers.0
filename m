From: Jarek Poplawski <jarkao2@gmail.com>
Subject: Re: 2.6.30-rc1: e1000: list_add corruption
Date: Thu, 9 Apr 2009 08:01:59 +0000
Message-ID: <20090409080159.GA5845@ff.dom.local>
References: <20090408.212040.184687004.davem@davemloft.net> <20090409071242.GA5515@ff.dom.local> <20090409.005106.96791990.davem@davemloft.net>
Mime-Version: 1.0
Return-path: <netdev-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=WesO88XXGHEMSBC4xwpPS+CbMWKBGXjAG3VQy2ihD2s=;
        b=pEfz2pC3LSgwsRpjhDH1maucjavFFbuwPijTOlmNy+XWuGzUQok8i9NTOEat2K+si4
         58N1eqixfhJz1yDo5xpDu2MwcTw88prS4APN8js2WWUpJKc4RWvlDgYHD1dWIcUFh3O+
         dDPddjlvdNTUsNVWRJFHLOkfONYA04sxCXlh8=
Content-Disposition: inline
In-Reply-To: <20090409.005106.96791990.davem@davemloft.net>
Sender: netdev-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Miller <davem@davemloft.net>
Cc: a.beregalov@gmail.com, kernel-testers@vger.kernel.org, netdev@vger.kernel.org, e1000-devel@lists.sourceforge.net

On Thu, Apr 09, 2009 at 12:51:06AM -0700, David Miller wrote:
> From: Jarek Poplawski <jarkao2@gmail.com>
> Date: Thu, 9 Apr 2009 07:12:42 +0000
> 
> > On 09-04-2009 06:20, David Miller wrote:
> >> From: Alexander Beregalov <a.beregalov@gmail.com>
> >> Date: Thu, 9 Apr 2009 08:16:00 +0400
> >> 
> >>> The host has two interfaces
> >>> eth0 - e1000, eth1 - forcedeth.
> >>> Both are not working after that messages.
> >> 
> >> It looks like the NAPI pending list is being modified in an illegal
> >> state by forcedeth, and mid-stream to a list_del() an e1000 interrupt
> >> comes in and this tries to schedule the e1000 NAPI context and we get
> >> list corruption.
> > 
> > Good point! Feel free to send a patch. ;-)
> 
> A real shame, since I sent that analysis in hoping someone else
> would do the rest of the digging and write the fix. :-/

Hmm... What rest? Alexander?

Jarek P.
