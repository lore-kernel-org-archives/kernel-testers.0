From: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Subject: Re: [Bug #22562] Regression in 2.6.37-rc1 - logs spammed with "unable
 to enumerate USB port" - bisected to commit 3df7169e
Date: Sun, 19 Dec 2010 12:19:42 -0600
Message-ID: <4D0E4CBE.5060504@lwfinger.net>
References: <wNJKqSoEutL.A.lKD.odfDNB@chimera> <6Ue85L6pKCJ.A.MoF.2ffDNB@chimera> <4D0E2DD7.4060607@lwfinger.net> <20101219163427.GA22994@suse.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=I80exIUCiiJtLQLAH72CiRZ3oXUYjSJ1e80VqmU7y88=;
        b=fuvUujM+kmWCRSOmP4QU8eiCYJgm7iH1gyY+VaJw4pwGFxVGbqwCt4Piy237LKKQLC
         /HdQuX4sDC5ifb4zJzlqbYY6mVJvaQ9GlsYxG0tdZXrvgAq+/IGPl7885sDOQNWce+SL
         IRbnRHxoHQowOGwqsRDzmfjScIWBqRtTm4/hU=
In-Reply-To: <20101219163427.GA22994-l3A5Bk7waGM@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Greg KH <gregkh-l3A5Bk7waGM@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>

On 12/19/2010 10:34 AM, Greg KH wrote:
> On Sun, Dec 19, 2010 at 10:07:51AM -0600, Larry Finger wrote:
>>
>> Yes, this regression is still present in 2.6.37-rc6. I'm trying to debug this
>> with very little success.
> 
> To be fair, you seem to have the only machine with this problem :(

I know, which is why I feel that I need to debug it.

Larry
