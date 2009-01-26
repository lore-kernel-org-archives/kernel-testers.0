From: Jaswinder Singh Rajput <jaswindercluster-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: hdb: status error: error=0x40 <3>{ UncorrectableError }
Date: Mon, 26 Jan 2009 14:13:16 +0530
Message-ID: <51ac1bba0901260043l2e601156sce007f667d26ccc9@mail.gmail.com>
References: <3f9a31f40901251239k3e368feeib33661d82497725b@mail.gmail.com>
	 <497CD30D.80203@tmr.com>
	 <3f9a31f40901251310g38ecfe61t97e119533215d271@mail.gmail.com>
	 <200901252249.17410.bzolnier@gmail.com>
	 <3f9a31f40901252031l3bb0ec39nd077ff8f13df73bd@mail.gmail.com>
	 <51ac1bba0901252130t408ab568k3b156e130f140a24@mail.gmail.com>
	 <51ac1bba0901252140h60ecd54ds84c354a3796e7eff@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:content-type
         :content-transfer-encoding;
        bh=uss+8hJzwnimcDrDZF0hprAcLHK/ERjEwPscwWOPing=;
        b=f3/ryXwgq0EhjvtuFvIZmLYrD0wAQnuJbHUoG6mVBY8V4h5arNoYxI8BXK9moUgWWo
         5OI4pvmRoS/jTP0OhR1FAhPiVAX5+QiQ0VvSVSHreLeCdSCzWvLfGyywosmv6d9jaYyr
         OUAu6RrOKd83dB9mbcWHNuQDIkDpguvl/hDcA=
In-Reply-To: <51ac1bba0901252140h60ecd54ds84c354a3796e7eff-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Discussion of Rocks Clusters <npaci-rocks-discussion-8ZGgPXq8l90@public.gmane.org>, Bill Davidsen <davidsen-sQDSfeB7uhw@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-kernel <linux-kernel@vger>

On Mon, Jan 26, 2009 at 11:10 AM, Jaswinder Singh
<jaswindercluster-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> On Mon, Jan 26, 2009 at 11:00 AM, Jaswinder Singh
> <jaswindercluster-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>> Story is like this:
>>
>> I was using Fedora 8 on my machine with one hard disk, So I was
>> planning to add another OS 'Rock Cluster 5.1', so I added another
>> working drive as primary slave and start loading Rock cluster 5.1
>> during installation machine reboots so when I log on to Fedora 8
>> machine I get uncorrectable error, I thought may be somehow this drive
>> is broken so I connected another drive as primary slave and I also
>> verified that it is mounting on Fedora 8 and also showing correct
>> data.
>>
>> So I again started Rock Cluster frontend installation , I did manual
>> partition on hdb and during format it shows me unrecoverable error. So
>> when I started Fedora 8 it also show uncorrectable error on another
>> drive also.
>>
>> So I am still trying what goes wrong.
>>

The problem was these drives was having old Redhat partitions and
installation process was not able to delete them properly.

After deleting all old partitions manually now harddisk start working.

Thanks for all your help.

--
JSR
