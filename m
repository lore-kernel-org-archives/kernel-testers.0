From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Wed, 10 Jun 2009 21:03:59 +0300
Message-ID: <84144f020906101103ncad6dc9q23783b175ae12792@mail.gmail.com>
References: <4A2BBC30.2030300@lwfinger.net> <4A2BCC6F.8090004@redhat.com>
	 <84144f020906070732l31786156r5d9753a0cabfde79@mail.gmail.com>
	 <20090608101739.GA15377@csn.ul.ie>
	 <84144f020906080352k57f12ff9pbd696da5f332ac1a@mail.gmail.com>
	 <20090608110303.GD15377@csn.ul.ie>
	 <Pine.LNX.4.64.0906081657001.7036@melkki.cs.Helsinki.FI>
	 <20090608141212.GE15070@csn.ul.ie>
	 <1244531201.5024.3.camel@penberg-laptop>
	 <20090610155626.GA7951@csn.ul.ie>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=vby/LmrMsWOAtkG80Nm9uhIpe18tpbq374vwRWjLpTM=;
        b=X3xkxKfeD16+PoBOIJxPEwH/TDp4Vah4nLG0mpX10cERbGaGGyIJl2A3svR84wHVPS
         GqbYmrfH2muYysH+EKM1705mgCq/rLJ/endgRYUo+BOCauRPMQpbLRmgF+o8clRZVSgv
         SrbSZNS7UlwtCYYhIr9TMS5wzXw291kbbUMsw=
In-Reply-To: <20090610155626.GA7951-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Cc: Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, npiggin-l3A5Bk7waGM@public.gmane.org

On Wed, Jun 10, 2009 at 6:56 PM, Mel Gorman<mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org> wrote:
> That looks like it would generate easier-to-debug-with messages and t=
o
> not-expert-at-slub eye, it looks correct. Slap a changelog on it with=
 an
> example message and go with it. =A0It should make page allocation fai=
lures
> messages that go through SLUB a lot easier to figure out.

Thanks Mel! The patch is here and will be part of next slab pull
request to Linus:

http://git.kernel.org/?p=3Dlinux/kernel/git/penberg/slab-2.6.git;a=3Dco=
mmitdiff;h=3D4bc6e7858da5ea4ecc3e47538f7fabed331cc21b
