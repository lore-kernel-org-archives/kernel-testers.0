From: greg-R92VP3DqSWVWk0Htik3J/w@public.gmane.org
Subject: Re: [Bug #12208] uml is very slow on 2.6.28 host
Date: Thu, 5 Feb 2009 12:41:36 -0600
Message-ID: <200902051841.n15IfatX032223@wind.enjellic.com>
References: <rjw@sisk.pl>
Reply-To: greg-R92VP3DqSWVWk0Htik3J/w@public.gmane.org
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
       "[Bug #12208] uml is very slow on 2.6.28 host" (Feb  4, 11:58am)
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Miklos Szeredi <miklos-sUDqSbJrdHQHWmgEVkV9KA@public.gmane.org>

On Feb 4, 11:58am, "Rafael J. Wysocki" wrote:
} Subject: [Bug #12208] uml is very slow on 2.6.28 host

Good day to everyone.

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.27 and 2.6.28.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.27 and 2.6.28.  Please verify if it still should
> be listed and let me know (either way).
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12208
> Subject		: uml is very slow on 2.6.28 host
> Submitter	: Miklos Szeredi <miklos-sUDqSbJrdHQHWmgEVkV9KA@public.gmane.org>
> Date		: 2008-12-12 9:35 (55 days old)
> References	: http://marc.info/?l=linux-kernel&m=122907463518593&w=4

I'm not convinced its as fast as it should be on 2.6.27.

I'm currently testing 2.6.27.14 hosts on several different pieces of
hardware with a common 2.6.23.17 guest.

Currently the UML guest on my desktop machine which is an 11 year old
300Mhz dual-processor Pentium-II with 256MB of RAM running 2.6.22.14
is giving a rather sound performance drubbing to the identical UML
guest running on a 2.5GHZ dual-quad 5420 with 16GB of RAM running a
32-bit 2.6.27.14.

}-- End of excerpt from "Rafael J. Wysocki"

As always,
Dr. G.W. Wettstein, Ph.D.   Enjellic Systems Development, LLC.
4206 N. 19th Ave.           Specializing in information infra-structure
Fargo, ND  58102            development.
PH: 701-281-1686
FAX: 701-281-3949           EMAIL: greg-R92VP3DqSWVWk0Htik3J/w@public.gmane.org
------------------------------------------------------------------------------
"There's no such thing as a wizard who minds his own business."
                                -- Berengis the Black Court Mage
                                   to the Earls Caeline
