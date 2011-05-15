From: Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #34002] [REGRESSION] [2.6.39-rc3] Wrong resolution in framebuffer and X Window
Date: Sun, 15 May 2011 21:12:44 +0200
Message-ID: <201105152112.45069.maciej.rutecki@gmail.com>
References: <So1vU2GC7XM.A.5wB.44vzNB@chimera> <HA8urZ3ZRcP.A.cZC.h5vzNB@chimera>
Reply-To: maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:from:reply-to:to:subject:date:user-agent:cc
         :references:in-reply-to:mime-version:content-type
         :content-transfer-encoding:message-id;
        bh=HS0/tyF6D/4uwTuhv2lAOL733Z150B3SPT+MOrIb1lA=;
        b=r+LGTX4ZUBhFjAaIIwYI5Wgx0f4lum38XnzGNL42yo71A97I80jy1hIKIWo9/71Otk
         o0so7hJjm7iY76mLOlw+bx6esTDNO2WJyeBdjKpLD1MvDH641T+DgqaDKFqlLjrNbUes
         XloXUoWV9311R0g9j5fYXqiasj5JaP1Du5p1o=
In-Reply-To: <HA8urZ3ZRcP.A.cZC.h5vzNB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On niedziela, 15 maja 2011 o 00:30:07 Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.38.  Please verify if it still should be listed and let the
> tracking team know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=34002
> Subject		: [REGRESSION] [2.6.39-rc3] Wrong resolution in framebuffer 
and X
> Window Submitter	: Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2011-04-17 16:04 (28 days old)
> Message-ID	: <201104171804.04664.maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> References	: http://marc.info/?l=linux-fbdev&m=130305625114863&w=2


Still present in -rc7

Regards
-- 
Maciej Rutecki
http://www.maciek.unixy.pl
