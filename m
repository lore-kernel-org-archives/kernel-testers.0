From: Roland Dreier <rdreier-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12491] i915 lockdep warning
Date: Mon, 23 Feb 2009 17:36:58 -0800
Message-ID: <adabpssvcn9.fsf@cisco.com>
References: <GVhknozYwrL.A.hiC.rozoJB@chimera>
	<vP9hdyF4fL.A.8rF.0qzoJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <vP9hdyF4fL.A.8rF.0qzoJB@chimera> (Rafael J. Wysocki's message of
	"Mon, 23 Feb 2009 22:48:05 +0100 (CET)")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; l=153; t=1235439419; x=1236303419;
	c=relaxed/simple; s=sjdkim2002;
	h=Content-Type:From:Subject:Content-Transfer-Encoding:MIME-Version;
	d=cisco.com; i=rdreier-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org;
	z=From:=20Roland=20Dreier=20<rdreier-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>
	|Subject:=20Re=3A=20[Bug=20#12491]=20i915=20lockdep=20warni
	ng
	|Sender:=20;
	bh=teg45iU9tCyrFiemRv6ajv5mzipXtqhvmWHXwcpFwVY=;
	b=tjeG4XWzdUe5tZzIU5MNmgArXmQG6rZaTXNVrVTkvaS+SnAhg7luj5xnH7
	Wf+w5XZOljMBz40qcV4N9UwRekDg9g7jh4XGbQ5jlqlJkIGMrGmAhttP5klN
	W4mrbvaIkI;
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Bob Copeland <me-aXfl/3sk2vNUbtYUoyoikg@public.gmane.org>, "Brandeburg, Jesse" <jesse.brandeburg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Roland Dreier <rolandd-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>

 > Patch		: http://marc.info/?l=linux-kernel&m=123378709730700&w=2

this patch is upstream now as a35f2e2b so I think we can close this one.

 - R.
