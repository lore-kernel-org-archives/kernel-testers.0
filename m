From: "Jeff Chua" <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12422] 2.6.28-git can't resume from str
Date: Tue, 20 Jan 2009 09:46:05 +0800
Message-ID: <b6a2187b0901191746u1139d09es22d6c5177635a65@mail.gmail.com>
References: <0GOi9pntEoL.A.iGF.B9QdJB@chimera>
	 <2QN7KFic7LG.A.pF.59QdJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=jTh7E7Sol8r03B+EDlue87x2JpNCPD7g8cqssbO9SMU=;
        b=O7Sbkr3hX++TIboqZRFS6Rb32z+pgQ+tI6t08VaxGL9yr27rBuR+iCwkWLH6+bRxKf
         +U9vZs0tyAH3Gauo1Muezi7TIqCiE4aRmp+F3PZcJi1bF1VLT60htp4ZEhHfCaX+IzWU
         QrsnyUccYHY2X9Y0S+UsWSmE+Wki5UKz6mE5s=
In-Reply-To: <2QN7KFic7LG.A.pF.59QdJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, Daniel Drake <dsd-aBrp7R+bbdUdnm+yROfE0A@public.gmane.org>, Greg Kroah-Hartman <gregkh-l3A5Bk7waGM@public.gmane.org>, Phil Dibowitz <phil-LijsOF1cAEA@public.gmane.org>, Harvey Harrison <harvey.harrison-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Tue, Jan 20, 2009 at 5:32 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12422
> Subject         : 2.6.28-git can't resume from str
> Submitter       : Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date            : 2009-01-10 1:39 (10 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=a0d4922da2e4ccb0973095d8d29f36f6b1b5f703
> References      : http://marc.info/?l=linux-kernel&m=123155157909282&w=4
>                  http://marc.info/?l=linux-kernel&m=123167815028388&w=4
> Handled-By      : Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> Patch           : http://lkml.org/lkml/2009/1/13/144

Rafael,

Confirmed the patch fixed resume from STR. No problem for the past 10 days.

Thanks,
Jeff.
