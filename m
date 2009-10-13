From: "Justin P. Mattock" <justinmattock@gmail.com>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Mon, 12 Oct 2009 17:14:56 -0700
Message-ID: <4AD3C680.8060306@gmail.com>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera> <L6tb-VyKHZK.A.PaB.Ozl0KB@chimera> <C4F8B19E-F4B4-47F3-AE5B-4581C8E3F3AE@gmail.com> <87ljjgfcbu.fsf@spindle.srvr.nix> <20091013003841.6c2988d0@lxorguk.ukuu.org.uk> <20091012234641.GF8345@core.coreip.homeip.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1758365AbZJMAQA@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=MU+sNyQTz52TIcssRkjY8fJjCS9g67Bhs1k/TPJHCgw=;
        b=KMBuOlLIVY9iekcdwN4dkU2zi4GjAIyrFtxkXgK7QHrGLDUMamzvFltyeoP2CFbNnx
         oIC+wuMhm6MWKqrIzIb0yjpW/vAiJA17TIGXkjzDmyDcQGHhELXyzH6TsDqQeYc5dZ6/
         KyQNo9+pMlJX5H0JBr1d5uEnMiKZYhZ45reT4=
In-Reply-To: <20091012234641.GF8345@core.coreip.homeip.net>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Alan Cox <alan@lxorguk.ukuu.org.uk>, Nix <nix@esperi.org.uk>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Boyan <btanastasov@yahoo.co.uk>, Ed Tomlinson <edt@aei.ca>, =?ISO-8859-1?Q?=22Fr=E9d=E9ric_L=2E_W=2E_Meunier=22?= <fredlwm@gmail.com>, Linus Torvalds <torvalds@linux-foundation.org>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>

Dmitry Torokhov wrote:
> On Tue, Oct 13, 2009 at 12:38:41AM +0100, Alan Cox wrote:
>    
>>> So it seems likely to me that this is a kernel bug, somewhere, and the
>>> TTY layer seems like a good place to look (OK, a horrible place, but a
>>> *likely* place).
>>>        
>> Somewhere around 2.6.29-30 various things went funny in the keyboard
>> layer for me - notably characters "bleeding" across console switches.
>>
>>      
>
> What do you mean by "bleeding"? Are you sure it is not autorepeat
> kicking in?
>
>    
>>> I'm about to try reverting the suggested commit and will report back. I
>>> see this failure about once a day, so I'll give it three days to go
>>> wrong and then (if it doesn't) will presume it works and so inform you.
>>>
>>>
>>> (Of course with this commit reverted Emacsen start dropping data from
>>> their ptys, and as bad luck would have it I live in (X)Emacs, but that's
>>> on a different machine! so I can have my compile buffer data *and* not
>>> destroy X ;} )
>>>        
>> X doesn't touch the pty layer. It touches vt (extensively) and the input
>> layers. It's vt/kbd access is also very raw so bypasses much of that
>> layer. That isn't to say tty isn't the cause but look for input layer
>> changes too.
>>      
>
>    
FWIW:
Something I noticed with fedora/ubuntu(latest) is while opening
a terminal the history(example: pressing up arrow) will just
start firing off as if I pressed the arrow up key and held it,
all the way until the end of the history file( .bash_history).
seems to do this at a random, if I'm compiling most notable during 
./configure.
(When this happens the screen will be garbled with characters similar to 
this:
^C)

During my clfs build I used fedora as the host system, and this behavior 
went
right into the newly created system. When I built another system, I used 
ubuntu
and it seems to not be as bad, but still present.(I'm thinking , if this 
is what
others are experiencing it must be something in  userspace)

Justin P. Mattock
