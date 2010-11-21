From: "Carlos R. Mafra" <crmafra2-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #22102] [2.6.36-09452-g2d10d87] BUG: unable to handle
 kernel NULL pointer dereference at (null)
Date: Sun, 21 Nov 2010 21:22:26 +0100
Message-ID: <20101121202226.GA16656@Pilar.aei.mpg.de>
References: <sKkKYVppECN.A.KhC.Phb5MB@chimera>
 <ATV3yiK8i4C.A.HCF.jib5MB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=1QWYVrPN6nP+LagosrK/0ouB0RnXvptFLek2df/4A54=;
        b=L1WX4YEqRkgl+lE2uZe4UKPovg5UT/nJx77mwQEAssshSwviJS88zXAO9xe03Jaoxw
         KTOO3wAUgHGE3sTMyjhnqeN38HjB+LXSKJq0lmDtEPT3hFVbpGKYmmOubFKFLlWZLnJp
         76XfXUlGXsUVoDLJjXGbuhK9nJHhHIRqD0554=
Content-Disposition: inline
In-Reply-To: <ATV3yiK8i4C.A.HCF.jib5MB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On Fr 19.Nov'10 at  0:42:44 +0100, Rafael J. Wysocki wrote:
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=22102
> Subject		: [2.6.36-09452-g2d10d87] BUG: unable to handle kernel NULL pointer dereference at (null)
> Submitter	: Carlos R. Mafra <crmafra2-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2010-10-30 20:07 (20 days old)
> Message-ID	: <20101030200751.GA2866-8NNKxJcwqxqHjx4iBuKRcg@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=128846935825136&w=2

2.6.37-rc2 does not have the problem, this can be closed.
