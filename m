From: "Giacomo A. Catenazzi" <cate-8fiUuRrzOP0dnm+yROfE0A@public.gmane.org>
Subject: Re: how to catch an oops on poweroff ?
Date: Fri, 20 Jun 2008 09:58:49 +0200
Message-ID: <485B6339.2030501@debian.org>
References: <1213940272.4877.2.camel@zwerg>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1213940272.4877.2.camel@zwerg>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Alexey Fisher wrote:
> Some last versions i have oops on poweroff  but i can't catch it. Some
> one have any idea how to do this ?
> 
> Alexey.

With serial console or netconsole.

Alternatively you could "halt" the system, instead of poweroff,
so system will halt and keep the oops on screen.

ciao
	cate
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
