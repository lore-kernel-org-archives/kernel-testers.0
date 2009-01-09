From: "Alexander Beregalov" <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [xfs-masters] 2.6.29-rc: kernel BUG at fs/xfs/support/debug.c:108
Date: Sat, 10 Jan 2009 02:11:03 +0300
Message-ID: <a4423d670901091511y68a53808rfaab8148526224c6@mail.gmail.com>
References: <20090109044121.GA31280@orion> <20090109053858.GP9448@disturbed>
	 <a4423d670901091353s7ff12207gcb38eb093d77d401@mail.gmail.com>
	 <a4423d670901091418j5c7fdfb2oeba2f4640f8e29d0@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=g3G8V9UgjMLOiURluV6ba7eLwK47+PcsyUqYjDyEwaE=;
        b=d7WMaxfbqczZwCfwNWlXDxXoQQCBB+1l6d/lMyQGR0yMmkuxCeDE4b50VKMn7OGS1z
         T5SeZmLWIPfpMAUjNdJ7nI1iuSI9H7e85FaUg0WaRSJ53y70OQMpuDUBxsD8RJ8UFKO0
         FmYUJT1yM0ZJWiqnxuPZpS5OnX8V5z7NsD9nc=
In-Reply-To: <a4423d670901091418j5c7fdfb2oeba2f4640f8e29d0-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>, xfs-masters-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org, xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

2009/1/10 Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>:
> 2009/1/10 Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>:
>> 2009/1/9 Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>:
>>> On Fri, Jan 09, 2009 at 07:41:21AM +0300, Alexander Beregalov wrote:
>>> Looks like the same btree corruption problem as this:
>>>
>>> http://oss.sgi.com/archives/xfs/2009-01/msg00118.html
>>>
>>> We're working to find the cause right now, but I find it interesting
>>> that you are running a CONFIG_XFS_DEBUG=y kernel and the first
>>> point that something is found wrong is the same place that the
>>> above non-debug case is detecting corruption.
>>>
>>> Can you reproduce it/have a reproducable test case?
>> Yes, it is easy reproducible for me, it happens every time I run
>> `rtorrent` during few minutes after boot.
>> I will try to provide simpler testcase.
>>
>
> This time I get it during log replaing before mounting.
>
> * Mounting local filesystems...
> [  214.039447] XFS mounting filesystem sda3
> [  214.190773] Ending clean XFS mount for filesystem: sda3
> [  214.321525] XFS mounting filesystem sdb1
> [  214.453029] Starting XFS recovery on filesystem: sdb1 (logdev: internal)
> [  215.062964] Ending XFS recovery on filesystem: sdb1 (logdev: internal)
> [  215.163358] Assertion failed: fs_is_ok, file: fs/xfs/xfs_btree.c, line: 3327

Dave, how can I extract useful information from the log? How can I
replay it by one transaction?
Perhaps it is possibly to find  the trasaction which triggers the bug.
I used `xfs_logprint -C` to save the log, but it is more than 100Mb.
