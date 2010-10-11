From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #16462] unable to connect to hidden SSID AP on legal channel 13
Date: Mon, 11 Oct 2010 22:13:47 +0200
Message-ID: <201010112213.48137.rjw@sisk.pl>
References: <pyPtebg28EI.A.ZPH.NvgsMB@chimera> <yeAD7A8RDxC.A.xu.dxgsMB@chimera> <C5C86A19469DAE48AAAD0E5F3716E44501D3D355C4@irsmsx504.ger.corp.intel.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <C5C86A19469DAE48AAAD0E5F3716E44501D3D355C4-IGOiFh9zz4yvNW/NfzhIbrfspsVTdybXVpNB7YpNyf8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: "Berg, Johannes" <johannes.berg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Daniel J Blueman <daniel.blueman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Monday, October 11, 2010, Berg, Johannes wrote:
> Rafael,
> 
> I believe that we have fixed the part of this bug that was a regression,
> namely being unable to connect to a non-hidden SSID, in 2.6.35 commit
> 3ee378d7e0dfdb9bb. Being able to connect to a hidden SSID I believe isn't a
> regression, and a patch for that is on its way upstream for 2.6.37. I think
> you should stop tracking this as a regression.

OK, I've closed the bug.

Thanks,
Rafael


> > -----Original Message-----
> > From: Rafael J. Wysocki [mailto:rjw-KKrjLPT3xs0@public.gmane.org]
> > Sent: Sunday, October 10, 2010 9:19 PM
> > To: Linux Kernel Mailing List
> > Cc: Kernel Testers List; Maciej Rutecki; Florian Mickler; Daniel J
> > Blueman; Berg, Johannes
> > Subject: [Bug #16462] unable to connect to hidden SSID AP on legal
> > channel 13
> > 
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.34 and 2.6.35.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.34 and 2.6.35.  Please verify if it still should
> > be listed and let the tracking team know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16462
> > Subject		: unable to connect to hidden SSID AP on legal
> > channel 13
> > Submitter	: Daniel J Blueman <daniel.blueman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date		: 2010-07-25 17:06 (78 days old)
> > Handled-By	: Johannes Berg <johannes.berg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> > Patch		: https://bugzilla.kernel.org/attachment.cgi?id=31862
> > 
> 
> --------------------------------------------------------------------------------------
> Intel GmbH
> Dornacher Strasse 1
> 85622 Feldkirchen/Muenchen, Deutschland 
> Sitz der Gesellschaft: Feldkirchen bei Muenchen
> Geschaeftsfuehrer: Douglas Lusk, Peter Gleissner, Hannes Schwaderer
> Registergericht: Muenchen HRB 47456 
> Ust.-IdNr./VAT Registration No.: DE129385895
> Citibank Frankfurt a.M. (BLZ 502 109 00) 600119052
> 
