From: "H. Peter Anvin" <hpa@zytor.com>
Subject: Re: wrong final bzImage build (regading #14270)
Date: Fri, 09 Oct 2009 13:56:15 -0700
Message-ID: <4ACFA36F.6000105@zytor.com>
References: <4ACF460E.7000901@msgid.tls.msk.ru> <20091009145825.GE5311@lenovo> <4ACF9184.9040104@msgid.tls.msk.ru> <200910092202.51208.a.miskiewicz@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S934236AbZJIU5R@vger.kernel.org>
In-Reply-To: <200910092202.51208.a.miskiewicz@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Arkadiusz Miskiewicz <a.miskiewicz@gmail.com>
Cc: linux-kernel@vger.kernel.org, Michael Tokarev <mjt@tls.msk.ru>, Cyrill Gorcunov <gorcunov@gmail.com>, "Rafael J. Wysocki" <rjw@sisk.pl>, Kernel Testers List <kernel-testers@vger.kernel.org>, Sam Ravnborg <sam@ravnborg.org>

On 10/09/2009 01:02 PM, Arkadiusz Miskiewicz wrote:
> 
> I had exactly this problem few weeks ago with pdksh as /bin/sh (and 
> bugreported to author of that change). As I workaround I used /bin/echo but 
> using printf is more sane/portable.
> 

Yes, using printf is the right thing to do.

A patch would be appreciated.

	-hpa
