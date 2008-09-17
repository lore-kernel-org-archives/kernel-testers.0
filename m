From: ebiederm@xmission.com (Eric W. Biederman)
Subject: Re: [Bug #11500] /proc/net bug related to selinux
Date: Wed, 17 Sep 2008 14:39:45 -0700
Message-ID: <m1vdwu4fku.fsf@frodo.ebiederm.org>
References: <j3zWxt-CgYL.A.WTF.bbsyIB@albercik>
	<1221483926.30816.18.camel@moss-spartans.epoch.ncsc.mil>
	<20080917125053.1f9ecf37.akpm@linux-foundation.org>
	<200809171724.36269.paul.moore@hp.com>
Mime-Version: 1.0
Return-path: <netdev-owner@vger.kernel.org>
In-Reply-To: <200809171724.36269.paul.moore@hp.com> (Paul Moore's message of
	"Wed, 17 Sep 2008 17:24:36 -0400")
Sender: netdev-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Paul Moore <paul.moore@hp.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Stephen Smalley <sds@tycho.nsa.gov>, jmorris@namei.org, rjw@sisk.pl, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, netdev@vger.kernel.org

Paul Moore <paul.moore@hp.com> writes:

> We suck?  Maybe, but some explanation about why we suck in this 
> particular case would be helpful as far as I'm concerned.  I don't 
> really care about identifying the guilty suckees, I'm more interested 
> in finding out what happened to cause us to suck because of this.

Agreed.  I believe we carefully gave selinux the same paths for /proc/net
that it had before so I don't know why this affects user space.

I know we had some selinux review when we made the change.

Eric
