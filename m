From: Kristoffer Ericson <kristoffer.ericson@gmail.com>
Subject: Re: [Bug #14267] Disassociating atheros wlan
Date: Tue, 17 Nov 2009 11:33:20 +0100
Message-ID: <20091117113320.8aef894a.kristoffer.ericson@gmail.com>
References: <ipicVA1QUFF.A.zWB.1mdALB@chimera>
	<OWmO9uyC1hM.A.yiC._ndALB@chimera>
	<4B01F3FE.8040707@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754823AbZKQKlD@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:in-reply-to:references:x-mailer:mime-version
         :content-type:content-transfer-encoding;
        bh=8xZwC5VqN2ihiHrXRbtRncq9gPAS4l8rthNo+RVo7kI=;
        b=kVlBsDunzDhGiOdqPUf3duQiFqQPO3NCp5kfSDxEKWrlqnfk8zRC0lY06aP0aQXnC8
         w0nMMYV6G6AttLCvnL1wqiaAFTVBz7inj+5LhRy+H1f18z39MtQQgpLw2Nrsj70Fk7vy
         CL/CRhLFpAJ4EvwZeTK6OALZqA0KX7xygHqdc=
In-Reply-To: <4B01F3FE.8040707@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Justin P. Mattock" <justinmattock@gmail.com>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Johannes Berg <johannes@sipsolutions.net>, "John W. Linville" <linville@tuxdriver.com>

On Mon, 16 Nov 2009 16:53:18 -0800
"Justin P. Mattock" <justinmattock@gmail.com> wrote:

> Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.30 and 2.6.31.
> >
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.30 and 2.6.31.  Please verify if it still should
> > be listed and let me know (either way).
> >
> >
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14267
> > Subject		: Disassociating atheros wlan
> > Submitter	: Kristoffer Ericson<kristoffer.ericson@gmail.com>
> > Date		: 2009-09-24 10:16 (54 days old)
> > References	: http://marc.info/?l=linux-kernel&m=125378723723384&w=4
> >
> >
> >
> >    
> I'm not sure(I've been procrastinating on this one
> with reverting commits to see if it helps
> the guy that reported this).
> 
>  From over here though there never was a problem
> on my side with the wireless connection(maybe a few disconnects,
> but nothing too harsh).
> 
> At this point the best thing to do is to see what the
> response is from the two gentlemen who where really
> hitting this and seem to be running into issues
> then go from there.

Im still hitting this so basicly using 2.6.30 until it get sorted. Will try and make
some time to test the different commits. Last time I waited for it to disconnect which
could take 10-40min. Since it depends on the network load Im now going to increase
the load to see if I hit it quicker (and thus finding the error commit).

So in short, its still valid and I will try and make time to fix it :)


> 
> Justin P. Mattock
> 
> 


-- 
Kristoffer Ericson <kristoffer.ericson@gmail.com>
