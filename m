From: Jeff Kirsher <jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14261] e1000e jumbo frames no longer work: 'Unsupported MTU 
	setting'
Date: Wed, 7 Oct 2009 12:12:45 -0700
Message-ID: <9929d2390910071212o632196b8o92899565bb131cea__18195.2064311647$1254943149$gmane$org@mail.gmail.com>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera> <COE24pZSBH.A.jd.5MTxKB@chimera>
	 <877hvd8rj5.fsf@spindle.srvr.nix> <200910022331.35916.rjw@sisk.pl>
	 <9929d2390910021513t51827031k16a5bfc538640cbf@mail.gmail.com>
	 <20091007183453.GD12971@mit.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to
         :content-type:content-transfer-encoding;
        bh=admKd8PuVUUnuZnDUt88BoG6TsopjlTxOxOvtL11efI=;
        b=nS/pitj195bJvLrgFloQ/2UO9nnlTJGIGcJN0VOlRGs7ASXoFRw38HZuKbC2gXsTad
         Pvyuz8ISTxpNYKoMIDVL0qRj+auYHw4SeZUm9YoKBgGXoCpaOTkI2wUYHKWjV0e3eZRc
         pU+SrVsjh9vePqIByCosVulweE+uj9Hhz9qRA=
In-Reply-To: <20091007183453.GD12971-3s7WtUTddSA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>, Jeff Kirsher <jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Nix <nix-dKoSMcxRz+Te9xe1eoZjHA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29Tb/PtFMR13I2A@public.gmane.org>

On Wed, Oct 7, 2009 at 11:34, Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org> wrote:
> On Fri, Oct 02, 2009 at 03:13:07PM -0700, Jeff Kirsher wrote:
>> >> > Patch =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : http:/=
/patchwork.kernel.org/patch/50277/
>> >>
>> > Most likely because it's not in the Linus' tree yet.
>> >
>> > [e1000e maintainers, we have a regression fix to merge, please.]
>>
>> Sorry, I forgot to send this patch out last night. =C2=A0I will send=
 it now.
>
> Do we have a status on this progress of this patch to mainline? =C2=A0=
 Thanks,
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-=
 Ted

The patch has been submitted and accepted into David Miller's net-2.6
tree.  I will submit the patch for 2.6.31 stable tree once it makes it
into Linus's tree later this week.

--=20
Cheers,
Jeff
