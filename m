From: Alistair John Strachan <alistair-T7eSMZptz7IqdlJmJB21zg@public.gmane.org>
Subject: Re: Kernel checking options
Date: Sun, 25 May 2008 22:31:18 +0100
Message-ID: <200805252231.18095.alistair@devzero.co.uk>
References: <g1cfbn$uic$1@ger.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <g1cfbn$uic$1@ger.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Sitsofe Wheeler <sitsofe-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Sunday 25 May 2008 20:27:36 Sitsofe Wheeler wrote:
> Is this list complete? Are they all enabling additional checks?
>
> Additionally are there any options that will make (real) bugs more likely
> to occur? For example does preemption make bugs related to races (that
> could happen without preemption) happen more often?

You're missing the IOMMU test code, which is only available on x86-64 systems.

There might be some other architecture specific options you've missed.

-- 
Cheers,
Alistair.

137/1 Warrender Park Road, Edinburgh, UK.
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
