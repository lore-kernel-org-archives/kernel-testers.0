From: "Alexander Beregalov" <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [xfs-masters] 2.6.29-rc: kernel BUG at fs/xfs/support/debug.c:108
Date: Sat, 10 Jan 2009 00:53:42 +0300
Message-ID: <a4423d670901091353s7ff12207gcb38eb093d77d401@mail.gmail.com>
References: <20090109044121.GA31280@orion> <20090109053858.GP9448@disturbed>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=xK8GCcl0L5UHGTt4D0/ZIUUJRR7h1CyTAAylMkFr63Y=;
        b=DggYtH1jbZkhfa5Ml5JmJXOjo+e+UiRrx/QKIJYJyxjyKOueoR7be+yxHLe+U6OtvG
         SxoPmIcwywx7SFi4+iVEeReJMWUCq05pYQkSxGwzsBeJL1mHlGfknJGejrvJbCg21aV7
         7B4VPXuQg0rS05oT9+MrVMraTsFUkefJ91VXk=
In-Reply-To: <20090109053858.GP9448@disturbed>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>, xfs-masters-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org, xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

2009/1/9 Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>:
> On Fri, Jan 09, 2009 at 07:41:21AM +0300, Alexander Beregalov wrote:
> Looks like the same btree corruption problem as this:
>
> http://oss.sgi.com/archives/xfs/2009-01/msg00118.html
>
> We're working to find the cause right now, but I find it interesting
> that you are running a CONFIG_XFS_DEBUG=y kernel and the first
> point that something is found wrong is the same place that the
> above non-debug case is detecting corruption.
>
> Can you reproduce it/have a reproducable test case?
Yes, it is easy reproducible for me, it happens every time I run
`rtorrent` during few minutes after boot.
I will try to provide simpler testcase.
