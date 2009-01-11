From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #12413] iwl3945 - Error for wireless request "Set Encode" (8B2A)
Date: Sun, 11 Jan 2009 19:51:32 +0100
Message-ID: <200901111951.32544.rjw@sisk.pl>
References: <nn3SOLVZ28H.A.bY.CafaJB@chimera> <nHCfeC0YLrE.A.Gn.LafaJB@chimera> <20090111190455.21b2f7f2@tux.DEF.witbe.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090111190455.21b2f7f2-Hu5lHNoInTV+MQpiyFM1nV6hYfS7NtTn@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Paul Rolland (=?utf-8?b?44Od44O844Or44O744Ot44Op44Oz?=)" <rol-fjEKYshTNZ1eoWH0uzbU5w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sunday 11 January 2009, Paul Rolland wrote:
> Hello,
> 
> On Sun, 11 Jan 2009 12:41:09 +0100 (CET)
> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> 
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.27 and 2.6.28.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.27 and 2.6.28.  Please verify if it still should
> > be listed and let me know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12413
> > Subject		: iwl3945 - Error for wireless request "Set
> > Encode" (8B2A) Submitter	: Paul Rolland <rol-fjEKYshTNZ1eoWH0uzbU5w@public.gmane.org>
> > Date		: 2009-01-02 18:32 (10 days old)
> > References	: http://marc.info/?l=linux-kernel&m=123092155803366&w=4
> > 
> 
> This is fixed. Please consider it as a user-bug if you want. 
> Anyway, the fix was to enable :
>  
> "Intel Wireless WiFi Next Gen AGN"
> 
> in addition to the already enabled support for the iwl3945. 
> Not sure why we now need to enable both, but this solved the problem
> for me.
> Wifi is now fully functional.

Thanks for the update, the bug has been closed.

Rafael
