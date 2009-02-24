From: Nick Piggin <nickpiggin@yahoo.com.au>
Subject: Re: [Bug #12337] ~100 extra wakeups reported by powertop
Date: Tue, 24 Feb 2009 22:23:38 +1100
Message-ID: <200902242223.39069.nickpiggin@yahoo.com.au>
References: <37338.58465.qm@web53304.mail.re2.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755941AbZBXLYp@vger.kernel.org>
In-Reply-To: <37338.58465.qm@web53304.mail.re2.yahoo.com>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: luis6674@yahoo.com
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "Rafael J. Wysocki" <rjw@sisk.pl>, Kernel Testers List <kernel-testers@vger.kernel.org>

On Tuesday 24 February 2009 21:53:44 Alberto Gonzalez wrote:
> --- On Mon, 2/23/09, Rafael J. Wysocki <rjw@sisk.pl> wrote:
> > The following bug entry is on the current list of known
> > regressions
> > introduced between 2.6.27 and 2.6.28.  Please verify if it
> > still should
> > be listed and let me know (either way).
> >
> >
> > Bug-Entry	:
> > http://bugzilla.kernel.org/show_bug.cgi?id=12337
> > Subject		: ~100 extra wakeups reported by powertop
> > Submitter	: Alberto Gonzalez <luis6674@yahoo.com>
> > Date		: 2008-12-31 12:25 (55 days old)
>
> Still present, yes.

Any chance you could bisect it?
