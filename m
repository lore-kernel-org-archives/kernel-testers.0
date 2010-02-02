From: Borislav Petkov <petkovbb@googlemail.com>
Subject: Re: [Bug #14949] drm_vm.c:drm_mmap: possible circular locking
 dependency detected
Date: Tue, 2 Feb 2010 21:58:57 +0100
Message-ID: <20100202205857.GA30024@liondog.tnic>
References: <vZZJKzCUn4G.A.CPB.F7hZLB@chimera>
 <d3IDKWHT5gE.A.DLD.q8hZLB@chimera>
 <9ea470501002011001s7734a20ft4dd5d181baf714c3@mail.gmail.com>
 <201002022146.45078.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:mail-followup-to:references:mime-version
         :content-type:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=JgKMDxJMPiAZmnMbwlqhunItf74maI0v/O+glGEf8YM=;
        b=CAz+RHEb1y35M12i/NpHTrvG3tuWuZFT5+I4c06ocIwBzVMr9W1v9EGd0j+Rs9fPAw
         xjGANycwVI2cjO2j2kSmHr5kGe4XDMllqGga770RTsGrE4V2JoWFtZFHaMQetOZtO7SP
         Y0OFUahz2siBPqkzPjewRQ2cC9A5Cy55cWv3Y=
Content-Disposition: inline
In-Reply-To: <201002022146.45078.rjw@sisk.pl>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, DRI <dri-devel@lists.sourceforge.net>, "Eric W. Biederman" <ebiederm@aristanetworks.com>, Greg KH <greg@kroah.com>

(Adding Greg to Cc:)

On Tue, Feb 02, 2010 at 09:46:45PM +0100, Rafael J. Wysocki wrote:
> On Monday 01 February 2010, Borislav Petkov wrote:
> > On Mon, Feb 1, 2010 at 1:22 AM, Rafael J. Wysocki <rjw@sisk.pl> wro=
te:
> > > This message has been generated automatically as a part of a repo=
rt
> > > of recent regressions.
> > >
> > > The following bug entry is on the current list of known regressio=
ns
> > > from 2.6.32.  Please verify if it still should be listed and let =
me know
> > > (either way).
> > >
> > >
> > > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=3D14=
949
> > > Subject         : drm_vm.c:drm_mmap: possible circular locking de=
pendency detected
> > > Submitter       : Borislav Petkov <petkovbb@googlemail.com>
> > > Date            : 2009-12-26 9:45 (37 days old)
> > > References      : http://marc.info/?l=3Dlinux-kernel&m=3D12618207=
3616279&w=3D4
> > > Handled-By      : Eric W. Biederman <ebiederm@aristanetworks.com>
> > > Patch           : http://patchwork.kernel.org/patch/70461/
> >=20
> > Yes, this is fixed.
>=20
> Do you mean "fixed" as "the fix is in the Linus' tree" or "fixed" as =
"the
> patch fixed it for me"?

Rather the second one, i.e. it fixes it for me. The patch is named

sysfs-cache-the-last-sysfs_dirent-to-improve-readdir-scalability-v2.pat=
ch

and is "stuck" in Greg's tree. Judging by the quilt series=C2=B9, the p=
atch
is slated for submission after 2.6.33. This late in the game for .32,
I'm guessing maybe a stable backport after .33 is out?

[1] http://www.kernel.org/pub/linux/kernel/people/gregkh/gregkh-2.6/pat=
ches/series

--=20
Regards/Gruss,
    Boris.
