From: Arkadiusz Miskiewicz <a.miskiewicz@gmail.com>
Subject: Re: wrong final bzImage build (regading #14270)
Date: Fri, 9 Oct 2009 22:02:51 +0200
Message-ID: <200910092202.51208.a.miskiewicz@gmail.com>
References: <4ACF460E.7000901@msgid.tls.msk.ru> <20091009145825.GE5311@lenovo> <4ACF9184.9040104@msgid.tls.msk.ru>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1761390AbZJIUDd@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:from:to:subject:date
         :user-agent:cc:references:in-reply-to:mime-version:content-type
         :content-transfer-encoding:message-id;
        bh=guc0YE7HtYA3QABzpfZ46bl/DKbe7aP5MRWvQAhqjzQ=;
        b=J8JgaCP4iKsjCrf+bS62vaPLoUcHleI1FOR67WBYsJwkuqIRtUg/SWyy9RRkLoAa0i
         Uoahu4iTEqDlr2TUvlddBs3qAjSMd+YysaYkCk2ASvq4c1vehJIcLXkl+Lct4wUBzzkA
         ImV+plDjjX5npcfSa2PkTTqqfA0CrsIBEyhb4=
In-Reply-To: <4ACF9184.9040104@msgid.tls.msk.ru>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="macroman"
To: linux-kernel@vger.kernel.org
Cc: Michael Tokarev <mjt@tls.msk.ru>, Cyrill Gorcunov <gorcunov@gmail.com>, "Rafael J. Wysocki" <rjw@sisk.pl>, Kernel Testers List <kernel-testers@vger.kernel.org>, Sam Ravnborg <sam@ravnborg.org>, "H. Peter Anvin" <hpa@zytor.com>

On Friday 09 of October 2009, Michael Tokarev wrote:
> Ok, some more to this.
>=20
> It turns out dash's built-in echo command interprets \nnn octal
> sequences by default, and there's no way to turn that off.  So,
> for example, sed-zoffset command from arch/x86/boot/Makefile
> (which includes \1 \2 etc substitutions for sed), when echoed
> in verbose mode (V=3D1), produces.. interesting characters (with
> ascii code 1 and 2).
>=20
> It's not practival to replace V=3D1's echo with /bin/echo I think.
>=20
> So I'd say it's not a bug in the build system after all, but
> a bug in dash. =20

It's still a bug in build system if you consider that a /bin/sh is a po=
six=20
shell. posix shells don't support \hex notation (see single unix system=
=20
specification).

I had exactly this problem few weeks ago with pdksh as /bin/sh (and=20
bugreported to author of that change). As I workaround I used /bin/echo=
 but=20
using printf is more sane/portable.

--=20
Arkadiusz Mi=C5=9Bkiewicz        PLD/Linux Team
arekm / maven.pl            http://ftp.pld-linux.org/
