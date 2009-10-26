From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14379] ACPI Warning for _SB_.BAT0._BIF: Converted Buffer
 to expected String
Date: Mon, 26 Oct 2009 12:15:47 -0700
Message-ID: <4AE5F563.5020803@gmail.com>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera> <6dRYo8ss7vL.A.Z4G.kre5KB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=fHaXkLLRN5y9T6+qZEx4yWKH4a7Ioo3itXZ4MlKIcoo=;
        b=tKPBK7B7mtyvnPtdyhvZKx2+OHd0I0wvvH1/J82fjKPTHo9vwUjcSWD8fee2wEeTwB
         PwKu7pD6pOQTcf+39zQs/ZrsIPQl7EK79C+qP5nw54w17Ss588Tqybk+P9+5TmHqaU4L
         kzOp6dYGCsckBocB/Z1KOOK9gyK7QXsbntVrk=
In-Reply-To: <6dRYo8ss7vL.A.Z4G.kre5KB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alexey Starikovskiy <astarikovskiy-l3A5Bk7waGM@public.gmane.org>, Len Brown <len.brown-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.31.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14379
> Subject		: ACPI Warning for _SB_.BAT0._BIF: Converted Buffer to expected String
> Submitter	: Justin Mattock<justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-10-08 21:46 (19 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=d9adc2e031bd22d5d9607a53a8d3b30e0b675f39
> References	: http://marc.info/?l=linux-kernel&m=125504031328941&w=4
> Handled-By	: Alexey Starikovskiy<astarikovskiy-l3A5Bk7waGM@public.gmane.org>
> Patch		: http://bugzilla.kernel.org/attachment.cgi?id=23347
>
>
>
>    
The patch submitted gets rid of the warning
for people crying wolf!! but probably would not close
the bugreport until the patch makes it into the main
kernel.

Justin P. Mattock
