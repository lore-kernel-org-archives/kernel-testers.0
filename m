From: Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15805] reiserfs locking
Date: Mon, 10 May 2010 00:10:45 +0200
Message-ID: <20100509221043.GB5817@nowhere>
References: <10aqDnTJcLO.A.mLE.48y5LB@chimera> <HqroMXsT-CJ.A.9DF.s9y5LB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=0axwsoI7f5KgGKVV36ZVS/ovU9Puk34xtP5wp82UKGw=;
        b=IlItmjgUhmaokYEnkT7CTWu05aoME/zRLfaEamp05R1jxf8kQZGjTkFlh0w7txxOOg
         06bQcTASDsCUeeKZWXVYozlMSfSto50O7gbuwu7CeggScCPBNHGYQCLAwQ9qvNCqRrh7
         w2ax1Co8L0dIH88pzbMG9PnLNGOD7gnkcX1EA=
Content-Disposition: inline
In-Reply-To: <HqroMXsT-CJ.A.9DF.s9y5LB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sun, May 09, 2010 at 11:17:36PM +0200, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.33.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15805
> Subject		: reiserfs locking
> Submitter	: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2010-04-15 21:02 (25 days old)
> Message-ID	: <t2ka4423d671004151402n7b2dc425mdc9c6bb9640d63fb-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=127136535323933&w=2



I'll do some tests and see if something caused this recently.
