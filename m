From: Robert Hancock <hancockrwd-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13179] CD-R: wodim intermittent failures
Date: Sat, 16 May 2009 16:51:52 -0600
Message-ID: <4A0F4388.9010502@gmail.com>
References: <_AjETDMbIoL.A.DcH.RYzDKB@chimera> <385Pu-agh7M.A.3ZB.GZzDKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=ERx/fLJXINA2loO3NR7X6/RH7k7TZfZ58+PBKmi8DSE=;
        b=bSD6lMDncAtlCqhWMNMXKgRLUYlreB3vAaWrhs7FelKtfRfukmjibvNOS7mhHV+xka
         iNokYi06cOXIsI1l7EP2ZzY0h0CciZYH0uzenu7y4bUXF0U6I9Rax0z9NgYMmPPuqOi9
         nvRQVhJoY1fkbMFqby3mNO9P+iWNeW56yQMVk=
In-Reply-To: <385Pu-agh7M.A.3ZB.GZzDKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andy Isaacson <adi-3HqRAUrWAWyGglJvpFV4uA@public.gmane.org>, Joerg Schilling <Joerg.Schilling-8LS2qeF34IpklNlQbfROjRvVK+yQ3ZXh@public.gmane.org>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.29.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13179
> Subject		: CD-R: wodim intermittent failures
> Submitter	: Andy Isaacson <adi-3HqRAUrWAWyGglJvpFV4uA@public.gmane.org>
> Date		: 2009-04-21 1:52 (26 days old)
> References	: http://marc.info/?l=linux-kernel&m=124027879214231&w=4

Last I heard the reporter was going to attempt to bisect the problem to 
see when the spurious udev events he was seeing started happening..
