From: Michael Cree <mcree@orcon.net.nz>
Subject: Re: [Bug #42821] alpha: futex regression bisected
Date: Mon, 12 Mar 2012 11:49:48 +1300
Message-ID: <679A8D73-6496-46D4-B7AC-E83C404F63DA@orcon.net.nz>
References: <WuYv90FoNpB.A.O8.ktRXPB@chimera> <C6gS2DkSgiG.A.AyB.6tRXPB@chimera>
Mime-Version: 1.0 (Apple Message framework v936)
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <C6gS2DkSgiG.A.AyB.6tRXPB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Michel Lespinasse <walken@google.com>

On 12/03/2012, at 10:31 AM, Rafael J. Wysocki wrote:
> Bug-Entry	: https://bugzilla.kernel.org/show_bug.cgi?id=42821
> Subject		: alpha: futex regression bisected
> Submitter	: Michael Cree <mcree@orcon.net.nz>
> Date		: 2012-02-20 8:20 (21 days old)
> First-Bad-Commit: http://git.kernel.org/linus/8d7718aa082aaf30a0b4989e1f04858952f941bc
> Message-ID	: <4F420256.2090600@orcon.net.nz>
> References	: http://marc.info/?l=linux-kernel&m=132972606917069&w=2

Fixed in 3.3-rc7 by commit 62aca403657fe30e5235c5331e9871e676d9ea0a.

Cheers
Michael.
