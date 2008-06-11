From: Frederik Deweerdt <deweerdt@free.fr>
Subject: Re: 2.6.26-rc5-mm2: OOM with 1G free swap
Date: Wed, 11 Jun 2008 09:31:01 +0200
Message-ID: <20080611073101.GA3591@slug>
References: <20080611060029.GA5011@martell.zuzino.mipt.ru> <20080610232705.3aaf5c06.akpm@linux-foundation.org> <20080611153457.7882.KOSAKI.MOTOHIRO@jp.fujitsu.com>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755160AbYFKHb0@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent:sender;
        bh=0aIXg77JK6bn/DlKuWHp0g+Ef/NKT8DO5P5WZoaLWEA=;
        b=vADaIZsCzqcKALo9a/30fjGMvU5p3Z+2qNhWEj+olvaAWmyA3sPR7ESGF/XgaJ8gmm
         z3txmoVPWDl9UC/Uzl8i1wGjIox8fLCgFSWxjN6EaDuErA05wtw9wwFg/8LUP+4cgalN
         lBCB9C77miHKOJdqCuw337ojb2S90RbAT5ui0=
Content-Disposition: inline
In-Reply-To: <20080611153457.7882.KOSAKI.MOTOHIRO@jp.fujitsu.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: KOSAKI Motohiro <kosaki.motohiro@jp.fujitsu.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Alexey Dobriyan <adobriyan@gmail.com>, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, linux-mm@kvack.org, nickpiggin@yahoo.com.au, Rik van Riel <riel@redhat.com>

Hi,

On Wed, Jun 11, 2008 at 03:36:40PM +0900, KOSAKI Motohiro wrote:
> > > vm.overcommit_memory = 0
> > > vm.overcommit_ratio = 50
> > 
> > Well I assume that Rik ran LTP.  Perhaps a merge problem.
> 
> at least, I ran LTP last week and its error didn't happend.
> I'll investigate more.
FWIW, I can reproduce it reliably:
$ cd <ltp-dir>/testcases/bin
$ ./growfiles -W gf15 -b -e 1 -u -r 1-49600 -I r -u -i 0 -L 120 Lgfile1
And then wait for a few secs before the OOM triggers.

Regards,
Frederik
