From: Krzysztof Halasa <khc@pm.waw.pl>
Subject: Re: [Bug #25442] ixp4xx defines FREQ macro; conflicts with gspca/ov519 driver
Date: Thu, 30 Dec 2010 14:13:38 +0100
Message-ID: <m3zkrnv1x9.fsf@intrepid.localdomain>
References: <96DQe4a_2tH.A.4RE.497GNB@chimera>
	<sV7shrPOroO.A.CqE.K-7GNB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <sV7shrPOroO.A.CqE.K-7GNB@chimera> (Rafael J. Wysocki's message
	of "Thu, 30 Dec 2010 00:07:02 +0100 (CET)")
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Ben Hutchings <ben@decadent.org.uk>

"Rafael J. Wysocki" <rjw@sisk.pl> writes:

> The following bug entry is on the current list of known regressions
> from 2.6.36.  Please verify if it still should be listed and let the tracking team
> know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=25442
> Subject		: ixp4xx defines FREQ macro; conflicts with gspca/ov519 driver

This FREQ has been there for years. Not that it makes it smart, and
I'll obviously send Ben's patch upstream for 2.6.38. Still processing
incoming mail queue :-(
-- 
Krzysztof Halasa
