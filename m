From: Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13941] x86 Geode issue
Date: Thu, 20 Aug 2009 23:08:04 +0400
Message-ID: <20090820190804.GA7271@lenovo>
References: <jCYznkTxcLB.A.EPH.eNIjKB@chimera> <ADSuNT6McuD.A.R0.COIjKB@chimera> <11fae7c70908200033k7c28561eh28e1195ce4a692f8@mail.gmail.com> <200908201704.06553.rjw@sisk.pl> <20090820183635.GB8517@lenovo>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:subject
         :message-id:references:mime-version:content-type:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=SqGH29pIXaNMdUqbctQ+ZAehfduCC2cvqMIBEyl0/5g=;
        b=Bj0mEZqXNm+1dyGGHiRY6PRVHPCkGl6FXoMyoK9AlBE7xsmysyRrByyGHOUAaxeozh
         mt+H5slrkYC81b+kMNhbn6FV/gRyHRNR5PzjH7Zz87wTBBGD2Hk551D08p3K6Wklzs2H
         PgHHzTjGuIywDTTdUNzLsYcdDTmJ+pus6EDME=
Content-Disposition: inline
In-Reply-To: <20090820183635.GB8517@lenovo>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, q-funk-X3B1VOXEql0@public.gmane.org, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Al Viro <viro@zeniv.l>

[Cyrill Gorcunov - Thu, Aug 20, 2009 at 10:36:35PM +0400]
=2E..
| | > > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
13941
| | > > Subject         : x86 Geode issue
| | > > Submitter       : Martin-=C9ric Racine <q-funk-X3B1VOXEql0@public.gmane.org>
| | > > Date            : 2009-08-03 12:58 (17 days old)
| | > > References      : http://marc.info/?l=3Dlinux-kernel&m=3D124930=
434732481&w=3D4
| |=20
| | Rafael
| |=20
|=20
| Hi,
|=20
| may I post a thought?
|=20
| It seems strange to me that alloc_inode may set=20
|=20
| #ifdef CONFIG_FS_POSIX_ACL
| 	inode->i_acl =3D inode->i_default_acl =3D ACL_NOT_CACHED;
| #endif
|=20
| [where ACL_NOT_CACHED is #define ACL_NOT_CACHED ((void *)(-1))]
|=20
| meanwhile say jffs2_init_acl_post use ACL_NOT_CACHED
| as a valid value and trying to parse it.
|=20
| But perhaps, I miss something.
|=20
| 	-- Cyrill

Sorry, this is unrelated and wrong. Drop this message.

	-- Cyrill
