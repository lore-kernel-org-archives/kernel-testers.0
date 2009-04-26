From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13003] [2.6.29 regression] ivtv driver causes strange oops'es, disrupts software suspend
Date: Sun, 26 Apr 2009 11:46:28 +0200 (CEST)
Message-ID: <egHshlwQQFE.A.C_C.ipE9JB@chimera>
References: <tur5OtdUm3E.A.r2B.7oE9JB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <tur5OtdUm3E.A.r2B.7oE9JB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Artem S. Tashkinov" <t.artem-VInPYn6yXxRWk0Htik3J/w@public.gmane.org>, Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.28 and 2.6.29.

The following bug entry is on the current list of known regressions
introduced between 2.6.28 and 2.6.29.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13003
Subject		: [2.6.29 regression] ivtv driver causes strange oops'es, disrupts software suspend
Submitter	: Artem S. Tashkinov <t.artem-VInPYn6yXxRWk0Htik3J/w@public.gmane.org>
Date		: 2009-04-03 14:57 (24 days old)
Handled-By	: Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>

