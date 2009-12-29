From: =?ISO-8859-1?Q?Lu=EDs_Picciochi_Oliveira?= <pitxyoki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14436] Computer becomes unusable without any apparent 
	reason
Date: Tue, 29 Dec 2009 22:32:31 +0000
Message-ID: <99598f620912291432l5f0698a4p7b770187e439c08c@mail.gmail.com>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera>
	 <srmJ8vMxKPH.A.L5E.RyhOLB@chimera>
	 <99598f620912290818s29ece3d2uf36bc9125b46ea48@mail.gmail.com>
	 <200912292304.46435.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=b5kgehLpQEpjjZvfQFVISmjyga75Bb1XIQK6dn7LQpM=;
        b=X5954JCEIR0OTD5I3x9a7Skicv5KgoaRBwXL7HLDs4HxQA8P6REjEYfhS7xUqE1nmx
         vVrsEzJbUTphI6bWGHqS2lP6LfGP4yviBHOjnQ4nXnDl4A2G82ZWPj2aR+H+tmXb68yU
         maYb78z8wHu6LNpqiP1Oz+WYuvmNVwv0QNGVE=
In-Reply-To: <200912292304.46435.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Tue, Dec 29, 2009 at 10:04 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote=
:
> On Tuesday 29 December 2009, Lu=EDs Picciochi Oliveira wrote:
>> Hi,
>> The bug is present on 2.6.32 and subsequent versions (2.6.32.1, 2.6.=
32.2).
>> It has been resolved as of 2.6.33-rc1.
>
> Thanks for the update.
>
> Is it known how it was fixed in 2.6.33-rc1 or do you just see that th=
e bug is
> not present in there any more?

Hi,
Like I reported at [1], I strongly believe this was the same as bug as
#12794, which was resolved by a patch resulting from my feedback and
Jussi Kivilinna's work. After I enabled memory debug like suggested on
bug #14436, everything pointed in the direction of that bug.
The issue was solved after applying Jussi's patch. That patch has been
commited to the mainline kernel and I can assert that since then the
bug didn't occur again.

Regards,
Lu=EDs Picciochi

[1] http://bugzilla.kernel.org/show_bug.cgi?id=3D14436
