From: "Dave Airlie" <airlied@gmail.com>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Thu, 25 Sep 2008 06:07:12 +1000
Message-ID: <21d7e9970809241307p2a0e68e0odcf69acff8fe9420@mail.gmail.com>
References: <21d7e9970809232245x6a91c6e2l552ff039d07e2017@mail.gmail.com>
	 <20080924.003638.71148740.davem@davemloft.net>
	 <21d7e9970809240159u6db747eex51892061846b2251@mail.gmail.com>
	 <20080924.020116.193720569.davem@davemloft.net>
	 <21d7e9970809240216m4a93a339sb51a5928fcb5f6fb@mail.gmail.com>
	 <alpine.LNX.1.10.0809241829500.4671@pegasus.suse.cz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754073AbYIXUH3@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=7FD+cK7HAweV05XagnfGzqtx2us6THh4IXH7pNNBaPg=;
        b=vUPm/THfXfOAszjZjWM4SRoin2M1ZElyHGvrUCs5zx2A/COIWtiNgyK7dqK2tMrNz4
         3t9/ZxjV3cFq/uSCgB2FvLLJIHbVnQlOonFodpso4A6tPI9Urf1UIyuLkgTSKn8jn09y
         fp9r8H9fkDP7+IqrrC0eMW4BhWdQE6WbdgK+o=
In-Reply-To: <alpine.LNX.1.10.0809241829500.4671@pegasus.suse.cz>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jiri Kosina <jkosina@suse.cz>
Cc: David Miller <davem@davemloft.net>, jeffrey.t.kirsher@intel.com, david.vrabel@csr.com, rjw@sisk.pl, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, chrisl@vmware.com

On Thu, Sep 25, 2008 at 2:33 AM, Jiri Kosina <jkosina@suse.cz> wrote:
> On Wed, 24 Sep 2008, Dave Airlie wrote:
>
>> Hopefully tglx can supply some traces, I think getting an interrupt
>> during device startup can possibly access the nvram
>> http://www.tglx.de/~tglx/wtf2.txt
>> seems to suggest bad things could happen.
>
> Actually another user has just reported [1] that his e1000e card got
> screwed up exactly at the point when the installer was probing the X
> configuration. So this really seems a lot like some lethal interaction
> between intel graphics and the network card.
>
> Dave (Airlie, too many Daves on CC here really), do you by any chance see
> any recent change in kernel intel graphic parts of DRM be causing this
> breakage?
>

Okay some from the kernel if this isn't in 2.6.26, the drm has
introduced no patches
I can even remotely claim might affect this. So its either userspace
or PAT related.

Dave.
