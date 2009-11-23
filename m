From: Hideki Yamane <henrich-8fiUuRrzOP3bmG5+kqVDhQ@public.gmane.org>
Subject: Re: [Bug #14588] Kernel panic - not syncing: stack-protector:
 Kernel stack is corrupted in: ccccb5b0
Date: Mon, 23 Nov 2009 12:55:48 +0900
Message-ID: <20091123125548.e12fe7bd.henrich@debian.or.jp>
References: <7qTjLRFNcGF.A.eSE.kCACLB@chimera>
	<mYW9sxtWd2G.A.YkE.xCACLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <mYW9sxtWd2G.A.YkE.xCACLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Hideki Yamane <henrich-8fiUuRrzOP3bmG5+kqVDhQ@public.gmane.org>

Hi,

On Sat, 21 Nov 2009 16:02:17 +0100 (CET)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.30 and 2.6.31.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.30 and 2.6.31.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14588
> Subject		: Kernel panic - not syncing: stack-protector: Kernel stack is corrupted in: ccccb5b0
> Submitter	: Hideki Yamane <henrich-8fiUuRrzOP3bmG5+kqVDhQ@public.gmane.org>
> Date		: 2009-11-12 02:25 (10 days old)

 With 2.6.32-rc8, it works for me. 

henrich@hatchpotch:~$ uname -a
Linux hatchpotch 2.6.32-rc8 #5 SMP Sun Nov 22 22:32:12 JST 2009 i686 GNU/Linux

henrich@hatchpotch:~$ grep STACKPROTECT /boot/config-2.6.32-rc8 
CONFIG_CC_STACKPROTECTOR=y

-- 
Regards,

 Hideki Yamane     henrich @ debian.or.jp/iijmio-mail.jp
 http://wiki.debian.org/HidekiYamane
