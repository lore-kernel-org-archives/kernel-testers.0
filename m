From: "Alexander Beregalov" <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [xfs-masters] 2.6.29-rc: kernel BUG at fs/xfs/support/debug.c:108
Date: Sat, 10 Jan 2009 15:19:00 +0300
Message-ID: <a4423d670901100419s2ae106bexac1a538caf654153@mail.gmail.com>
References: <20090109044121.GA31280@orion> <20090109053858.GP9448@disturbed>
	 <a4423d670901091353s7ff12207gcb38eb093d77d401@mail.gmail.com>
	 <a4423d670901091418j5c7fdfb2oeba2f4640f8e29d0@mail.gmail.com>
	 <a4423d670901091511y68a53808rfaab8148526224c6@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=CBKdAvLvF3le/UEQGURnuc681C4Z/72G27uzl8oVeFw=;
        b=lb9rhOUNmGCP0Bv6RLOrBtO0jYxwW8eyKXUW6n/ohaBRX9zikPFMcBT46SQpiTeYDL
         gb5JvSkoLuwYcrZaV3mcaoj596spo8AgzgDy9mAMJQMHdy0xX5TIkOofjEnXB/DKPN/H
         LpQg+n/pvF0/fnjLyZo0nYEmg0MM90rhP2+08=
In-Reply-To: <a4423d670901091511y68a53808rfaab8148526224c6-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>, xfs-masters-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org, xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

2009/1/10 Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>:
> 2009/1/10 Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>:
>> 2009/1/10 Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>:
>>> 2009/1/9 Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>:
>>>> On Fri, Jan 09, 2009 at 07:41:21AM +0300, Alexander Beregalov wrote:
>>>> Looks like the same btree corruption problem as this:
>>>>
>>>> http://oss.sgi.com/archives/xfs/2009-01/msg00118.html
>>>>
>>>> We're working to find the cause right now, but I find it interesting
>>>> that you are running a CONFIG_XFS_DEBUG=y kernel and the first
>>>> point that something is found wrong is the same place that the
>>>> above non-debug case is detecting corruption.
>>>>
>>>> Can you reproduce it/have a reproducable test case?
>>> Yes, it is easy reproducible for me, it happens every time I run
>>> `rtorrent` during few minutes after boot.
>>> I will try to provide simpler testcase.

It is hard to bisect it,
These are last good and bad commits:
good: [854929f05831d3a290a802815ee955b96c740c61] [XFS] add new btree statistics
bad: [7f7c39ccb6045cf1fd5e7684a484c445291b44d4] [XFS] make btree tracing generic
