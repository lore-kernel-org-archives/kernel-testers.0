From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [Bug #25442] ixp4xx defines FREQ macro; conflicts with gspca/ov519 driver
Date: Thu, 30 Dec 2010 15:45:15 +0100
Message-ID: <201012301545.15667.rjw@sisk.pl>
References: <96DQe4a_2tH.A.4RE.497GNB@chimera> <sV7shrPOroO.A.CqE.K-7GNB@chimera> <m3zkrnv1x9.fsf@intrepid.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <m3zkrnv1x9.fsf@intrepid.localdomain>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Krzysztof Halasa <khc@pm.waw.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Ben Hutchings <ben@decadent.org.uk>

On Thursday, December 30, 2010, Krzysztof Halasa wrote:
> "Rafael J. Wysocki" <rjw@sisk.pl> writes:
> 
> > The following bug entry is on the current list of known regressions
> > from 2.6.36.  Please verify if it still should be listed and let the tracking team
> > know (either way).
> >
> >
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=25442
> > Subject		: ixp4xx defines FREQ macro; conflicts with gspca/ov519 driver
> 
> This FREQ has been there for years. Not that it makes it smart, and
> I'll obviously send Ben's patch upstream for 2.6.38. Still processing
> incoming mail queue :-(

Well, the patch is in the mainline, which is why it's still listed.

Thanks,
Rafael
