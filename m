From: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Subject: Re: [PATCH] make assocaittion only if SSID is known.
Date: Wed, 05 Nov 2008 09:59:15 +0100
Message-ID: <1225875556.5905.11.camel@zwerg>
References: <1225836101-5723-1-git-send-email-bug-track@fisher-privat.net>
	 <1225838828.22671.0.camel@localhost.localdomain> <871vxq217k.fsf@nokia.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <871vxq217k.fsf-xNZwKgViW5gAvxtiuMwx3w@public.gmane.org>
Sender: linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Kalle Valo <kalle.valo-xNZwKgViW5gAvxtiuMwx3w@public.gmane.org>
Cc: Dan Williams <dcbw-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Am Mittwoch, den 05.11.2008, 07:25 +0200 schrieb Kalle Valo:
> Dan Williams <dcbw-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org> writes:
> 
> > On Tue, 2008-11-04 at 23:01 +0100, Alexey Fisher wrote:
> >> 'iwconfig eth1 channel 6' would trigger association to _something_,
> >> which is wrong. Changing the channel should (and does) trigger
> >> reassociation, but only if there is an SSID to associate with!
> >
> > Heh :)  Need the Signed-off-by: here too though.
> 
> And the subject should contain the driver name, for example like this:

I found some time to _read_ linux-2.6/Documentation/Submit* ! ;)
but i think it need some "howto submit the patch with git". My englisch
is to bad to make documentation. Here was my steps:

$git clone
git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux-2.6.git
$git pull
$vi make/changes
$git-commit -a
$git-log -p ORIG_HEAD..
$mkdir ../pending
$git-format-patch ORIG_HEAD.. -o ../pending/
$vi ../pending/0001-ipw2200.patch
$git-send-email --cc kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org --to
linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org --from "Alexey Fisher
<bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>" --smtp-server mail.gmx.net --smtp-user
me-hi6Y0CQ0nG0@public.gmane.org --smtp-ssl  ../pending/0001-ipw2200.patch 

--
To unsubscribe from this list: send the line "unsubscribe linux-wireless" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
