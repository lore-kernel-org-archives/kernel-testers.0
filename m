From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #31982] XFS memory allocation deadlock in 2.6.38
Date: Sun, 17 Apr 2011 15:52:13 +0200 (CEST)
Message-ID: <IqJL5EkbqD.A.G3E.M4uqNB@chimera>
References: <sam8u5dLkaB.A.afE.53uqNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <sam8u5dLkaB.A.afE.53uqNB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Sean Noonan <Sean.Noonan-dxgubf92oBlWk0Htik3J/w@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.37 and 2.6.38.

The following bug entry is on the current list of known regressions
introduced between 2.6.37 and 2.6.38.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=31982
Subject		: XFS memory allocation deadlock in 2.6.38
Submitter	: Sean Noonan <Sean.Noonan-dxgubf92oBlWk0Htik3J/w@public.gmane.org>
Date		: 2011-03-21 16:19 (28 days old)
Message-ID	: <081DDE43F61F3D43929A181B477DCA95639B52FD-W84Bic8V7yZ3GC5t/3agGVaTQe2KTcn/@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=130072585111310&w=2

