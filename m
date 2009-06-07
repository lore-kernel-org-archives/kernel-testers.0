From: Robert Hancock <hancockrwd-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13072] forcedeth seems to switch off eth on shutdown
Date: Sun, 07 Jun 2009 11:14:31 -0600
Message-ID: <4A2BF577.1050003__5454.12572469122$1244394998$gmane$org@gmail.com>
References: <sIiXQlfwS3D.A.81.dj7KKB@chimera> <AN6kEAA5GQ.A.ELC.ck7KKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=VGhBC+uZO8VgBYJSk42T6DeFZ9YXGVviMRHOHDe8YF4=;
        b=gceEAETQHwKWgMPFoTXyiYqmiX0sQTaHWTb6l3r466qHa7WcGPwYTzjoT0tYKOWfsV
         CTVnvBGrOElaZSz17orO5BZhQB7DHUFPQxho3tYVR1FimWxbYg6GlooT8pwhy4+t7LXO
         BjusrW8lbq3L6sW0bS2eA+uLjNMzFBFYL1a5E=
In-Reply-To: <AN6kEAA5GQ.A.ELC.ck7KKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <public-rjw-KKrjLPT3xs0-z5DuStaUktnZ+VzJOa5vwg@public.gmane.org>
Cc: Linux Kernel Mailing List <public-linux-kernel-u79uwXL29TY76Z2rM5mHXA-z5DuStaUktnZ+VzJOa5vwg@public.gmane.org>, Kernel Testers List <public-kernel-testers-u79uwXL29TY76Z2rM5mHXA-z5DuStaUktnZ+VzJOa5vwg@public.gmane.org>, Daniel Bierstedt <public-daniel.bierstedt-Mmb7MZpHnFY-z5DuStaUktnZ+VzJOa5vwg@public.gmane.org>




Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.28 and 2.6.29.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.28 and 2.6.29.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13072
> Subject		: forcedeth seems to switch off eth on shutdown
> Submitter	: Daniel Bierstedt <daniel.bierstedt-Mmb7MZpHnFY-XMD5yJDbdMReXY1tMh2IBg@public.gmane.org>
> Date		: 2009-04-12 07:00 (57 days old)

Seems like it should be fixed by:

http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=5a9a8e32ebe269c71d8d3e78f9435fe7729f38e9

