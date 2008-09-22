From: "Dave Airlie" <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Mon, 22 Sep 2008 16:59:51 +1000
Message-ID: <21d7e9970809212359y6876c405ub57dca3e9ee737e4@mail.gmail.com>
References: <PJz8fNrJNHG.A.65F.wzq1IB@albercik>
	 <7lIhZC4hCxE.A.yj.E2q1IB@albercik>
	 <20080921.165159.67476441.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=pLMws5oEZvn3Zw0YTgh+nb0Z0aekF4XqxVzSMKM37fc=;
        b=oVgmenFP9TPy6sJutsfu8u9atWdZDh1AjQ2Pl59B51YcEMuX4yb1BpnEnMSi0H3iYQ
         o5nj/KDdhIZHfNy9RMDONHkIzwEXFGmJ2aHybP1JnbH3TRnRu4bwd1y84VzUzjhfC7dV
         wcxb5PqD5srT1exJfWiY86DWulCRA1Iw5sPTk=
In-Reply-To: <20080921.165159.67476441.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org

On Mon, Sep 22, 2008 at 9:51 AM, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org> wrote:
> From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
> Date: Sun, 21 Sep 2008 20:54:13 +0200 (CEST)
>
>> Bug-Entry     : http://bugzilla.kernel.org/show_bug.cgi?id=11382
>> Subject               : e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
>> Submitter     : David Vrabel <david.vrabel-kQvG35nSl+M@public.gmane.org>
>> Date          : 2008-08-08 10:47 (45 days old)
>> References    : http://marc.info/?l=linux-kernel&m=121819267211679&w=4
>> Handled-By    : Christopher Li <chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org>
>
> Fixed by:
>
> commit 78566fecbb12a7616ae9a88b2ffbc8062c4a89e3
> Author: Christopher Li <chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org>
> Date:   Fri Sep 5 14:04:05 2008 -0700
>
>    e1000: prevent corruption of EEPROM/NVM
>
>    Andrey reports e1000 corruption, and that a patch in vmware's ESX fixed
>    it.
>
>    The EEPROM corruption is triggered by concurrent access of the EEPROM
>    read/write. Putting a lock around it solve the problem.
>

Just noticed I replied to davem and not to everyone.. so I did some
further hunting.

Okay so e1000e seems to have a problem in this area, that this *DOESN'T* fix.

I've reconstructed my boot timeline from message logs

Sep 3rd, I booted rawhide kernel 2.6.27-0.290.rc5.fc10.i686

I suspended/resume a few times in between with no issues.

Sep 8th I booted my own 2.6.27-rc5 kernel based from
ec0c15afb41fd9ad45b53468b60db50170e22346

This got a corrupted e1000e checksum and every kernel since has.

Dave.
