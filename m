From: Stefan Richter <stefanr@s5r6.in-berlin.de>
Subject: Re: [Bug #11824] raw1394: possible deadlock if accessed by
	multithreaded app
Date: Sun, 02 Nov 2008 20:14:06 +0100
Message-ID: <490DFBFE.4000307@s5r6.in-berlin.de>
References: <603i_OdVYPF.A.7_D.mjeDJB@chimera>
	<wOAXuecskPD.A.stH.KleDJB@chimera>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux1394-devel-bounces@lists.sourceforge.net>
In-Reply-To: <wOAXuecskPD.A.stH.KleDJB@chimera>
List-Id: <kernel-testers.vger.kernel.org>
List-Unsubscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
	<mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
	<mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Errors-To: linux1394-devel-bounces@lists.sourceforge.net
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, linux1394-devel@lists.sourceforge.net, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>

Rafael J. Wysocki wrote at LKML:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.27.  Please verify if it still should be listed and let me know
> (either way).

Yes, it is still open.

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11824
> Subject		: raw1394: possible deadlock if accessed by multithreaded app
> Submitter	: Stefan Richter <stefan-r-bz@s5r6.in-berlin.de>
> Date		: 2008-10-25 02:08 (9 days old)
> Handled-By	: Stefan Richter <stefanr@s5r6.in-berlin.de>
> Patch		: http://bugzilla.kernel.org/show_bug.cgi?id=11824#c3

The patch has been committed to linux1394-2.6.git (commit
638570b54346f140bc09b986d93e76025d35180f in the branches misc, for-next,
master) and I plan to send a pull request in a few days if I receive no
objections.
-- 
Stefan Richter
-=====-==--- =-== ---=-
http://arcgraph.de/sr/

-------------------------------------------------------------------------
This SF.Net email is sponsored by the Moblin Your Move Developer's challenge
Build the coolest Linux based applications with Moblin SDK & win great prizes
Grand prize is a trip for two to an Open Source event anywhere in the world
http://moblin-contest.org/redirect.php?banner_id=100&url=/
