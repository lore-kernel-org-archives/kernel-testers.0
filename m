From: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Subject: Re: why differnet wlan drivers need different settings?
Date: Mon, 03 Nov 2008 23:28:06 +0100
Message-ID: <1225751286.8131.9.camel@zwerg>
References: <200810251153.25533.bug-track@fisher-privat.net>
	 <200810251303.35295.rjw@sisk.pl> <20081025135512.GG19057@tuxdriver.com>
	 <200810252245.30279.bug-track@fisher-privat.net>
	 <1225124023.13499.40.camel@localhost.localdomain>
	 <1225747524.21347.2.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1225747524.21347.2.camel-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Dan Williams <dcbw-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Am Montag, den 03.11.2008, 16:25 -0500 schrieb Dan Williams:

> Ping; could you submit the patch with the proper signed-off-by
> statement?
> 
> Thanks!
> Dan
Sorry didn't thought it was to me.
i did't had a time to find how to supply patch with git .. i think it
should be some thing with git-diff and git-formate-mail.. is it?
Can you please write how to do it correctly, i really do not haw time to
find it out now. 

signed-off-by: Alexey Fisher

diff --git a/drivers/net/wireless/ipw2200.c
b/drivers/net/wireless/ipw2200.c
index dcce354..d26beed 100644
--- a/drivers/net/wireless/ipw2200.c
+++ b/drivers/net/wireless/ipw2200.c
@@ -7581,8 +7581,7 @@ static int ipw_associate(void *data)
 	}
 
 	if (!(priv->config & CFG_ASSOCIATE) &&
-	    !(priv->config & (CFG_STATIC_ESSID |
-			      CFG_STATIC_CHANNEL | CFG_STATIC_BSSID))) {
+	    !(priv->config & (CFG_STATIC_ESSID | CFG_STATIC_BSSID))) {
 		IPW_DEBUG_ASSOC("Not attempting association (associate=0)\n");
 		return 0;
 	}


