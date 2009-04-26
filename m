From: David Rientjes <rientjes@google.com>
Subject: Re: [Bug #13112] Oops in drain_array
Date: Sun, 26 Apr 2009 13:19:31 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0904261314430.18988@chino.kir.corp.google.com>
References: <tur5OtdUm3E.A.r2B.7oE9JB@chimera> <egHshlwQQFE.A.KjC.JpE9JB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755616AbZDZUTs@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1240777175; bh=UO9RHFZFazXocVAhp1xdz9+zxp8=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=wXdKPBE9Sq+zCxCcketWkYcWlPwCtVP
	WakIYzJ9RSYx+ThtZHl895J0t7TgU5cWffanVWtS2LidjP93lVMdD3A==
In-Reply-To: <egHshlwQQFE.A.KjC.JpE9JB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Bart <mmx@riz.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, "Rafael J. Wysocki" <rjw@sisk.pl>

On Sun, 26 Apr 2009, Rafael J. Wysocki wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.28 and 2.6.29.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.28 and 2.6.29.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13112
> Subject		: Oops in drain_array
> Submitter	: Bart <mmx@riz.pl>
> Date		: 2009-04-14 10:21 (13 days old)
> References	: http://marc.info/?l=linux-kernel&m=123970493224628&w=4
> 

Bart, is it possible to try with CONFIG_DEBUG_SLAB enabled?
