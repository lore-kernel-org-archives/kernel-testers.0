From: Peter Korsgaard <jacmet-OfajU3CKLf1/SzgSGea1oA@public.gmane.org>
Subject: Re: [Bug #12615] boot hangs while bringing up gianfar ethernet
Date: Sun, 15 Feb 2009 15:42:34 +0100
Message-ID: <8763jbep7p.fsf@macbook.be.48ers.dk>
References: <juADNmcceYF.A.mdD.Mr0lJB@chimera>
	<rjPbZ5GRJPO.A.__E.7r0lJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:sender:received:to:cc:subject
         :references:from:date:in-reply-to:message-id:user-agent:mime-version
         :content-type;
        bh=J6x3ptXJzdUHuCuIS6v1MTOAdAS66xS+BiNFdCvMi7E=;
        b=KBZ6uh8tZVu83a5hM96pYINteICQnOnLZvxo68Bt72Nn9tr7qr8VIfYHvlHAJrJ7Y8
         qN3JA/yAHL8atFbXOuyjHxJfmz43SbIlkiOPcHxokrRSSSPKX3ptWceQkSpElqQjGeT8
         uuzPPzgglEFcAaco+b9imLIvJ2UdAUgwvF0VE=
In-Reply-To: <rjPbZ5GRJPO.A.__E.7r0lJB@chimera> (Rafael J. Wysocki's message of "Sat\, 14 Feb 2009 21\:38\:19 +0100 \(CET\)")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ira Snyder <iws-lulEs6mt1IksTUYHLfqkUA@public.gmane.org>

>>>>> "Rafael" == Rafael J Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> writes:

 Rafael> This message has been generated automatically as a part of a report
 Rafael> of recent regressions.

 Rafael> The following bug entry is on the current list of known
 Rafael> regressions from 2.6.28.  Please verify if it still should be
 Rafael> listed and let me know (either way).

As already mentioned, the fix works for me so I think this can be
closed.

 Rafael> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12615
 Rafael> Subject		: boot hangs while bringing up gianfar ethernet
 Rafael> Submitter	: Ira Snyder <iws-lulEs6mt1IksTUYHLfqkUA@public.gmane.org>
 Rafael> Date		: 2009-01-29 19:41 (17 days old)
 Rafael> References	: http://marc.info/?l=linux-kernel&m=123325817201665&w=4

-- 
Bye, Peter Korsgaard
