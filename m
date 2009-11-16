From: Andy Lutomirski <amluto@gmail.com>
Subject: Re: [Bug #14472] EXT4 corruption
Date: Mon, 16 Nov 2009 18:30:24 -0500
Message-ID: <9872C96C-FAE8-46E8-9588-25D917AF0EAD@gmail.com>
References: <GUZt44bIwCE.A.vLF.pSdALB@chimera> <xXQGFmujPl.A.EOH.XTdALB@chimera>
Mime-Version: 1.0 (iPhone Mail 7D11)
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755928AbZKPXay@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:references:message-id:from:to
         :in-reply-to:content-type:content-transfer-encoding:x-mailer
         :mime-version:subject:date:cc;
        bh=N91BnlzEZ1+cUfV3iktUWT9lx2LySEjvzd/+ulh/vjg=;
        b=kcC/bRupaTZFQk0hS/hyp0XSU9DinrVrfHb3F6j9DbyB0yCvK0/XAdhJvQlZ257bBD
         Yw66HMFmv3SlW1QL91iytvC7OD4Y0BfHfVS2Q30D6yKHw3ha2nvjMJraEh6qH6bW8IKm
         7Btb4mhS+8e4AA1ibtNkPn1E/M91MIg9saqHQ=
In-Reply-To: <xXQGFmujPl.A.EOH.XTdALB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"; delsp="yes"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Andy Lutomirski <luto@mit.edu>, "Aneesh Kumar K.V" <aneesh.kumar@linux.vnet.ibm.com>, Shawn Starr <shawn.starr@rogers.com>, Theodore Tso <tytso@mit.edu>

I'm think this was the journal checksumming bug, which is fixed.

-Andy



On Nov 16, 2009, at 5:37 PM, "Rafael J. Wysocki" <rjw@sisk.pl> wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.31.  Please verify if it still should be listed and let me  
> know
> (either way).
>
>
> Bug-Entry    : http://bugzilla.kernel.org/show_bug.cgi?id=14472
> Subject        : EXT4 corruption
> Submitter    : Shawn Starr <shawn.starr@rogers.com>
> Date        : 2009-10-13 2:07 (35 days old)
> References    : http://marc.info/?l=linux-kernel&m=125539997508256&w=4
> Handled-By    : Theodore Tso <tytso@mit.edu>
>
>
