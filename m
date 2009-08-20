From: Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13941] x86 Geode issue
Date: Thu, 20 Aug 2009 22:36:35 +0400
Message-ID: <20090820183635.GB8517@lenovo>
References: <jCYznkTxcLB.A.EPH.eNIjKB@chimera> <ADSuNT6McuD.A.R0.COIjKB@chimera> <11fae7c70908200033k7c28561eh28e1195ce4a692f8@mail.gmail.com> <200908201704.06553.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=rGFN52//MhcnMYkvDanUL09Bc7znXnHkpDBkJY831t8=;
        b=RxK5tU0hBeqZgSMlhrYdFGjAUewOB7jTUte28sKr39J1aUoRD/I7HRAmULnRh9E1CI
         rXpRCzJp2GAJlApDD8DoyMA7I4IfGlCTo1ZOmxBL4C56DWAonX+6niV8nnGNG2YtAPWC
         tboBZt1p3IGkbe7JkfdWoun1sVfvzfsDtFUbo=
Content-Disposition: inline
In-Reply-To: <200908201704.06553.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: q-funk-X3B1VOXEql0@public.gmane.org, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Al Viro <viro-RmSDqhL/yNMiFSDQTTA3OLVCufUGDwFn@public.gmane.org>

[Rafael J. Wysocki - Thu, Aug 20, 2009 at 05:04:06PM +0200]
| On Thursday 20 August 2009, Martin-=C9ric Racine wrote:
| > Yes, it's still valid.
|=20
| Thanks for the update.
|=20
| > Screenshots of the crash have been provided. Is anything else missi=
ng
| > for the LKML to be able to debug and fix this?
|=20
| An idea of what can be wrong?
|=20
| > On Wed, Aug 19, 2009 at 11:26 PM, Rafael J. Wysocki<rjw-KKrjLPT3xs0@public.gmane.org> wr=
ote:
| > > This message has been generated automatically as a part of a repo=
rt
| > > of recent regressions.
| > >
| > > The following bug entry is on the current list of known regressio=
ns
| > > from 2.6.30.  Please verify if it still should be listed and let =
me know
| > > (either way).
| > >
| > >
| > > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=3D13=
941
| > > Subject         : x86 Geode issue
| > > Submitter       : Martin-=C9ric Racine <q-funk-X3B1VOXEql0@public.gmane.org>
| > > Date            : 2009-08-03 12:58 (17 days old)
| > > References      : http://marc.info/?l=3Dlinux-kernel&m=3D12493043=
4732481&w=3D4
|=20
| Rafael
|=20

Hi,

may I post a thought?

It seems strange to me that alloc_inode may set=20

#ifdef CONFIG_FS_POSIX_ACL
	inode->i_acl =3D inode->i_default_acl =3D ACL_NOT_CACHED;
#endif

[where ACL_NOT_CACHED is #define ACL_NOT_CACHED ((void *)(-1))]

meanwhile say jffs2_init_acl_post use ACL_NOT_CACHED
as a valid value and trying to parse it.

But perhaps, I miss something.

	-- Cyrill
