From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13942] Troubles with AoE and uninitialized object
Date: Fri, 2 Oct 2009 12:57:05 -0700 (PDT)
Message-ID: <alpine.DEB.1.00.0910021256170.14641@chino.kir.corp.google.com>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera> <COE24pZSBH.A.t9C.XOTxKB@chimera>
Mime-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="531381004-1395773377-1254513426=:14641"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1254513431; bh=PGlbQYJqt442vaVimwlQ5QiCZjQ=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=q6CTPlGrJICkGlHAsajYvN8Fz6cQRGq
	0kDS/uDgSa44EmQD1RemL8UxTswLCbAv+OgPVnq2acBtWIeZD7yiYGA==
In-Reply-To: <COE24pZSBH.A.t9C.XOTxKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, onbons-ud5FBsm0p/yTtf5O82r8kh2eb7JE58TQ@public.gmane.org, Ed Cashin <ecashin-kFqnmIA2sJXQT0dZR+AlfA@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--531381004-1395773377-1254513426=:14641
Content-Type: TEXT/PLAIN; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Thu, 1 Oct 2009, Rafael J. Wysocki wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.30 and 2.6.31.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.30 and 2.6.31.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13942
> Subject		: Troubles with AoE and uninitialized object
> Submitter	: Bruno Prémont <bonbons-ud5FBsm0p/xEiooADzr8i9i2O/JbrIOy@public.gmane.org>
> Date		: 2009-08-04 10:12 (59 days old)
> References	: http://marc.info/?l=linux-kernel&m=124938117104811&w=4
> 

This should be fixed with 18d8217 in Linus' tree.
--531381004-1395773377-1254513426=:14641--
