From: leiming <tom.leiming@gmail.com>
Subject: Re: 2.6.30-rc2-git2: Reported regressions from 2.6.29
Date: Sat, 18 Apr 2009 11:50:51 +0800
Message-ID: <20090418115051.175f292f@linux-lm>
References: <EJaiQ4Wfaz.A.3YG.4v85JB@chimera>
	<d82e647a0904161837w6b6fb652la0da05f9061e95dc@mail.gmail.com>
	<200904172336.12414.rjw@sisk.pl>
	<20090418103226.54250420@linux-lm>
	<alpine.LFD.2.00.0904171952260.4042@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-acpi-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:in-reply-to:references:x-mailer:mime-version
         :content-type:content-transfer-encoding;
        bh=X32QZXZOqn02ZMWC7oAzrf7qELpjYyH7VpsmtBNHY3E=;
        b=SlmlLCplmfjyCMpMT9zyIUcpBBE/soO94F+6ud4CD5QBfIFGeYB8Vf2EDuHM1Tom17
         N4ZrRjTo/8zi8ohdW9KsW9vChNNRFjtNBMKpqSts8HUlOZIdvG2TOFxSqVjNqv0HoS7F
         WmKV4tfCUw4ECi5kIzIrKwuvpu5m636rKKDzE=
In-Reply-To: <alpine.LFD.2.00.0904171952260.4042@localhost.localdomain>
Sender: linux-acpi-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Adrian Bunk <bunk@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Natalie Protasevich <protasnb@gmail.com>, Kernel Testers List <kernel-testers@vger.kernel.org>, Network Development <netdev@vger.kernel.org>, Linux ACPI <linux-acpi@vger.kernel.org>, Linux PM List <linux-pm@lists.linux-foundation.org>, Linux SCSI List <linux-scsi@vger.kernel.org>, video4linux-list@redhat.com, laurent.pinchart@skynet.be, mchehab@infradead.org

On Fri, 17 Apr 2009 19:55:29 -0700 (PDT)
Linus Torvalds <torvalds@linux-foundation.org> wrote:

> @@ -742,7 +742,7 @@ static int uvc_alloc_urb_buffers(struct
> > uvc_video_device *video, 
> >  	/* Buffers are already allocated, bail out. */
> >  	if (video->urb_size)
> > -		return 0;
> > +		return DIV_ROUND_UP(video->urb_size, psize);
> 
> I don't think this is right. It should round _down_.
> 
> It's supposed to return 'npackets', but if you pass it a different
> packet size than it was passed originally, it can now return a

Now uvc only uses the previous allocated buffer in suspend/resume
path, so the packet size doen't change in this path.

> potentially bigger number than the already allocated buffer, no?

If this case does exist, the URBs need to be updated and the patch is 
not enough. 

> 
> So I think it should round down (ie use a regular divide). No?

Because the following fact:

	uvc_alloc_urb_buffers()
	{
		...
		video->urb_size = psize * npackets; 
		...
	}

so DIV_ROUND_UP still can work correctly.

Thanks!

-- 
Lei Ming
