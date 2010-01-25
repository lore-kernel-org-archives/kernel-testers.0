From: =?utf-8?Q?Am=C3=A9rico?= Wang <xiyou.wangcong-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14924] Weird hard hangs when rendering 'some' web-sites
	in Firefox
Date: Mon, 25 Jan 2010 21:55:31 +0800
Message-ID: <20100125135531.GB3749@hack>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera> <hE3x9c-4KZM.A.V3G.JLMXLB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=OxX6kuFdo48MGSg9RhVRSEPGpSVMXoajT1HlBuYfGbA=;
        b=W4EkwZ6N5iCLCE86noOn+E0EgEc6XmkXTGjj0pM8lURKEKzzNntU3461WtXKhVEO/7
         UmuoOemeGsgaqPmCbFtHXVRJtAJc9x5gnDYaqmpXqjUn1jTyuuumtei26MCEatFzJI19
         Q+OUp8/IJpqnxbW1mMcV0St21lAScbrJX71R8=
Content-Disposition: inline
In-Reply-To: <hE3x9c-4KZM.A.V3G.JLMXLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, David <david-Os2QIKb4eqJd3aXB8m+yKQ@public.gmane.org>

On Sun, Jan 24, 2010 at 11:04:33PM +0100, Rafael J. Wysocki wrote:
>This message has been generated automatically as a part of a report
>of recent regressions.
>
>The following bug entry is on the current list of known regressions
>from 2.6.32.  Please verify if it still should be listed and let me know
>(either way).
>
>
>Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14924
>Subject		: Weird hard hangs when rendering 'some' web-sites in Firefox
>Submitter	: David <david-Os2QIKb4eqJd3aXB8m+yKQ@public.gmane.org>
>Date		: 2009-12-21 21:53 (35 days old)
>References	: http://marc.info/?l=linux-kernel&m=126143375823340&w=4

Hmm, you have CONFIG_DETECT_SOFTLOCKUP=y, I have no idea what happened,
doing a bisect would be appreciated.

Thanks.

-- 
Live like a child, think like the god.
 
