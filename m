From: Kalle Valo <kalle.valo-xNZwKgViW5gAvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] make assocaittion only if SSID is known.
Date: Wed, 05 Nov 2008 07:25:51 +0200
Message-ID: <871vxq217k.fsf@nokia.com>
References: <1225836101-5723-1-git-send-email-bug-track@fisher-privat.net>
	<1225838828.22671.0.camel@localhost.localdomain>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1225838828.22671.0.camel-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org> (ext Dan Williams's message of "Tue\, 04 Nov 2008 17\:47\:08 -0500")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Dan Williams <dcbw-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Dan Williams <dcbw-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org> writes:

> On Tue, 2008-11-04 at 23:01 +0100, Alexey Fisher wrote:
>> 'iwconfig eth1 channel 6' would trigger association to _something_,
>> which is wrong. Changing the channel should (and does) trigger
>> reassociation, but only if there is an SSID to associate with!
>
> Heh :)  Need the Signed-off-by: here too though.

And the subject should contain the driver name, for example like this:

[PATCH] ipw2200: associate only when SSID is known

-- 
Kalle Valo
