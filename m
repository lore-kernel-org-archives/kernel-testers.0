From: Alex Romosan <romosan-z2gvhuI27Wv/eO6KEJJvLQ@public.gmane.org>
Subject: Re: [Bug #10865] Oops trying to mount an ntfs partition on thinkpad
Date: Sun, 13 Jul 2008 14:42:49 -0700
Message-ID: <877ibp31gm.fsf@sycorax.lbl.gov>
References: <Y1jK9GMA8kJ.A.qOH.7GleIB@albercik>
	<c6ZRbn0adb.A.D3.1IleIB@albercik>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <c6ZRbn0adb.A.D3.1IleIB@albercik> (rjw-KKrjLPT3xs0@public.gmane.org)
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> writes:

> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.25.  Please verify if it still should be listed.
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=10865
> Subject		: Oops trying to mount an ntfs partition on thinkpad
> Submitter	: Alex Romosan <romosan-z2gvhuI27Wv/eO6KEJJvLQ@public.gmane.org>
> Date		: 2008-06-05 14:47 (39 days old)
> References	: http://marc.info/?l=linux-kernel&m=121267834421414&w=4
>

just tried it with rc9-git12 and now it seems to work but i get a
warning:

  NTFS volume version 3.1.
  NTFS-fs warning (device sda1): load_system_files(): Unsupported volume flags 0x4000 encountered.
  NTFS-fs error (device sda1): load_system_files(): Volume has unsupported flags set.  Mounting read-only.  Run chkdsk and mount in Windows.

i'll try to boot into windows and run chkdsk to see if it makes the
warning go away.

--alex--

-- 
| I believe the moment is at hand when, by a paranoiac and active |
|  advance of the mind, it will be possible (simultaneously with  |
|  automatism and other passive states) to systematize confusion  |
|  and thus to help to discredit completely the world of reality. |
