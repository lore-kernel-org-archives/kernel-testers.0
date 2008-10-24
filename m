From: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Subject: Re: [2.6.28-rc1] sd I/O errors
Date: Fri, 24 Oct 2008 19:38:55 +0200
Message-ID: <200810241938.56025.bug-track@fisher-privat.net>
References: <4901E9B0.5080401@r000n.net> <4901F6AB.1090601@tuffmail.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4901F6AB.1090601-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-9"
To: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Cc: lists-ioAbOcnQCpJeoWH0uzbU5w@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Friday 24 October 2008 18:24:11 Alan Jenkins wrote:
> I guess this is using the ata_piix driver. =A0It's almost certainly t=
he
> same issue as:
>
> [Regression] 2.6.28-rc1 (2fca5c): libata: kernel cant boot
>
> (search for it). =A0A patch was posted just after rc1 was released :)=
=2E
>
> Alan

Great! i just bisected it.... :( :)
