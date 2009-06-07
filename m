From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [Bug #13475] suspend/hibernate lockdep warning
Date: Sun, 7 Jun 2009 16:21:32 +0300
Message-ID: <84144f020906070621r1f480eaeief026d23662df380@mail.gmail.com>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera>
	 <D9VoutSOyXP.A.7vF.2Y7KKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=mMZ6Auczn+L+pnuyWLz1iwYBa0yoYNRwWdLbQxg4CZw=;
        b=oxTOc7WBag87WzV9LYT7jqwsKp2J1QJEVoQcupTQP/PhwZxQZBl+TWQtjFVIMyAkDS
         YHTmS+TAuUY4GA3MoBbDoN5+6ELSiKVvMCI5BuMEH2hJGNnpGnU75L9+CGLT9a7GnKbT
         LFeHsoP00ZmGuWKib9hrXz2KbulkPGnPOJjkg=
In-Reply-To: <D9VoutSOyXP.A.7vF.2Y7KKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, trenn-l3A5Bk7waGM@public.gmane.org, sven.wegener-sQQoR7IzGU7R7s880joybQ@public.gmane.org

On Sun, Jun 7, 2009 at 12:52 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.29. =A0Please verify if it still should be listed and let me=
 know
> (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
13475
> Subject =A0 =A0 =A0 =A0 : suspend/hibernate lockdep warning
> Submitter =A0 =A0 =A0 : Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-06-02 10:00 (6 days old)
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D124393=
723321241&w=3D4

Looks like a cpufreq locking problem to me. Lets add some
get_maintainer.pl loving to the cc list. Can you post your .config
too, btw?

                                 Pekka
