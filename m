From: Eric Paris <eparis-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #14058] Oops in fsnotify
Date: Mon, 26 Oct 2009 15:51:29 -0400
Message-ID: <1256586689.2775.6.camel@dhcp231-106.rdu.redhat.com>
References: <G2WU8XrUVpF.A.lxF.Ref5KB@chimera>
	 <vX3ILojF2dJ.A.GQ.Bgf5KB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <vX3ILojF2dJ.A.GQ.Bgf5KB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Paris <eparis-FjpueFixGhCM4zKIHC2jIg@public.gmane.org>, Grant Wilson <grant.wilson-1HOZaDBbGgxaa/9Udqfwiw@public.gmane.org>

On Mon, 2009-10-26 at 20:31 +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.30 and 2.6.31.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.30 and 2.6.31.  Please verify if it still should
> be listed and let me know (either way).

Should have been fixed by:
9f0d793b52eb2266359661369ef6303838904855

At least I have my fingers crossed hoping so.  I can't make it happen
with that patch.

-Eric
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14058
> Subject		: Oops in fsnotify
> Submitter	: Grant Wilson <grant.wilson-1HOZaDBbGgxaa/9Udqfwiw@public.gmane.org>
> Date		: 2009-08-20 15:48 (68 days old)
> References	: http://marc.info/?l=linux-kernel&m=125078450923133&w=4
> 
> 

