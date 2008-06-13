From: Byron Bradley <byron.bbradley@gmail.com>
Subject: Re: 2.6.26-rc5-mm3
Date: Fri, 13 Jun 2008 01:04:25 +0100 (BST)
Message-ID: <alpine.DEB.1.00.0806130100300.14928@gamma>
References: <20080611225945.4da7bb7f.akpm@linux-foundation.org> <alpine.DEB.1.00.0806130006490.14928@gamma> <1213314906.16459.90.camel@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1760917AbYFMAEk@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:x-x-sender:to:cc:subject
         :in-reply-to:message-id:references:user-agent:mime-version
         :content-type:from;
        bh=yGYlmKLtX9EldiUP55Cdj120/7akDDPIS3uzE0/Yj20=;
        b=fOddUwQH696Vj+ECkqypzRDLgYBqu1948Ke05iTYjfCKekB64jj+KFxtxb3M9LhLPo
         lUK4Sqx6DTvCLjU2Or/vf1e2disoooJqvs9USrhqR52usNwP90IrRER9GB+aPgKE6qfr
         KoT6Xme51C2NyMOB83ZavP+q+aWhfNEjVh+Ek=
In-Reply-To: <1213314906.16459.90.camel@localhost.localdomain>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Daniel Walker <dwalker@mvista.com>
Cc: Byron Bradley <byron.bbradley@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, linux-mm@kvack.org, Hua Zhong <hzhong@gmail.com>, Ingo Molnar <mingo@elte.hu>

On Thu, 12 Jun 2008, Daniel Walker wrote:

> 
> On Fri, 2008-06-13 at 00:32 +0100, Byron Bradley wrote:
> > Looks like x86 and ARM both fail to boot if PROFILE_LIKELY, FTRACE and 
> > DYNAMIC_FTRACE are selected. If any one of those three are disabled it 
> > boots (or fails in some other way which I'm looking at now). The serial 
> > console output from both machines when they fail to boot is below, let me 
> > know if there is any other information I can provide.
> 
> Did you happen to check PROFILE_LIKELY and FTRACE alone?

Yes, without DYNAMIC_FTRACE the arm box gets all the way to userspace and 
the x86 box panics while registering a driver so most likely unrelated to 
this problem.

-- 
Byron Bradley
