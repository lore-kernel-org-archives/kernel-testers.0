From: Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH 0/3] Reduce GFP_ATOMIC allocation failures, partial fix
	V3
Date: Wed, 28 Oct 2009 14:02:23 +0100
Message-ID: <20091028130223.GB14476@bizet.domek.prywatny>
References: <1256650833-15516-1-git-send-email-mel@csn.ul.ie>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=+95JcLlv46hsWpzh8B04D1KAk4l7Lv0PjCKOMBWA+jk=;
        b=TzFUUnEPhTL7WcuefTEQqfs1mHRd9hKMXsoSDt1V4Hc/U/VLuQWRgpVLWR4mBgsx//
         8FIkdmQpyqgqbInOlorWhaYE1GwSHsS2pDi3BoicsPXr2/K9cO7s/j8SNzpH+by0Va7Y
         ZmlAx5he9S9b3qsCS5yqaqXqCGxaidpWwvKPk=
Content-Disposition: inline
In-Reply-To: <1256650833-15516-1-git-send-email-mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org" <linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Sven Geggus <lists-+AJD3D7QEjjt/htJsj1pd9AswbaBtrod@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Tobias Oetiker <tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Stephan von Krawczynski <skraw-DcQCyzbjH0jQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Tue, Oct 27, 2009 at 01:40:30PM +0000, Mel Gorman wrote:
> The following bug becomes very difficult to reproduce with these patches;
> 
> [Bug #14265] ifconfig: page allocation failure. order:5, mode:0x8020 w/ e100

Minor clarification -- bug becomes difficult to reproduce _quickly_.

I've always saw this bug after many suspend-resume cycles (interlaved
with "real work").  Since testing one kernel in normal usage scenario
would take many days I've tried to immitate "real work" by lots of
memory intensive/fragmenting processes.

Hovewer, this bug shows itself (sooner or later) in every kernel
except 2.6.30 (or earlier).

Thanks.
