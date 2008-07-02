From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: System hangs on 2.6.26-rc8
Date: Wed, 2 Jul 2008 16:25:05 +0200
Message-ID: <200807021625.05721.rjw@sisk.pl>
References: <48637DCC.3070301@r000n.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <48637DCC.3070301-ioAbOcnQCpJeoWH0uzbU5w@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Roman Mindalev <lists-ioAbOcnQCpJeoWH0uzbU5w@public.gmane.org>
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Thursday, 26 of June 2008, Roman Mindalev wrote:
> I walking in web with Firefox when my system began freezing.
> 1. After pressing "KMenu" menu not showing
> 2. Yakuake's terminals not usable: when I try typing "dmesg | tail" or
> even "ls" system not answering. I can typing anything (including
> pressing Ctrl+C or Ctrl+Z), but reaction = 0
> 3. Consoles (Alt + F1 and other) not usable too. I can't even log-in -
> after typing username and pressing "Enter" password field not available,
> and I can typing any text like:
> ----------------------
> login: r000n
> grt
> rthtr
> y
> trht
> ----------------------
> 4. Switching back to to X from text console not works: I see only black
> screen
> 5. Ctrl + Alt + Del not works, I can restart system only with hardware Reset
> 
> These strange things was 2 times for last day.
> Logs empty, last strings from syslog:
> ------- 1-st time --------------------
> Jun 26 10:37:16 desktop smartd[4967]: Device: /dev/sdb, SMART Usage
> Attribute: 190 Airflow_Temperature_Cel changed from 59 to 58
> Jun 26 10:37:16 desktop smartd[4967]: Device: /dev/sdb, SMART Usage
> Attribute: 194 Temperature_Celsius changed from 115 to 112
> Jun 26 10:39:01 desktop /USR/SBIN/CRON[14210]: (root) CMD (  [ -x
> /usr/lib/php5/maxlifetime ] && [ -d /var/lib/php5 ] && find
> /var/lib/php5/ -type f -cmin +$(/usr/lib/php5/maxlifetime) -print0 |
> xargs -n 200 -r -0 rm)
> Jun 26 10:41:43 desktop ntpd[5006]: synchronized to 204.9.136.253, stratum 2
> Jun 26 10:42:51 desktop ntpd[5006]: synchronized to 89.108.124.4, stratum 2
> Jun 26 10:49:00 desktop syslogd 1.5.0#5: restart.
> --------------------------------------
> ------- 2-st time --------------------
> Jun 26 14:32:37 desktop ntpd[5002]: synchronized to 212.57.153.17, stratum 2
> Jun 26 14:39:01 desktop /USR/SBIN/CRON[5624]: (root) CMD (  [ -x
> /usr/lib/php5/maxlifetime ] && [ -d /var/lib/php5 ] && find
> /var/lib/php5/ -type f -cmin +$(/usr/lib/php5/maxlifetime) -print0 |
> xargs -n 200 -r -0 rm)
> Jun 26 14:44:36 desktop syslogd 1.5.0#5: restart.
> Jun 26 14:44:36 desktop kernel: klogd 1.5.0#5, log source = /proc/kmsg
> started.
> Jun 26 14:44:36 desktop kernel: /tty/ttyr5'
> --------------------------------------
> Firefox 3 from svn, updated ~3 days ago.
> System - Debian sid (updated yesterday).
> Kernel - 2.6.26-rc8
> 
> If need more information, tell me, where I should take it)

Did anything like that happen to you with any previous kernel versions?

Rafael
