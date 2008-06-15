From: devzero-S0/GAf8tV78@public.gmane.org
Subject: suse slab testing module "crasher"
Date: Sun, 15 Jun 2008 20:31:49 +0200
Message-ID: <317948575@web.de>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

>Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> writes:
>>
>> Doing the same thing on 2.6.26-rc5-mm3, msgctl08 also runs to
>> completion, in 20.9 seconds.  So
>>
>> - it got slower
>
>That is because it scales itself to the number of available msg queues=
=2E
>So with Nadia's patch there are more and it runs slower.
>
>In fact it seems to start one process per message queue, so perhaps it=
's=20
>just running out of processes or something. Ok it should not segfault.
>
>BTW a great way to debug slab corruptions with LTP faster is to run wi=
th
>a slab thrasher stress module like http://firstfloor.org/~andi/crasher=
-26.diff
>
>-Andi

any reason why only suse has this, but not mainline ?

i came across that module in suse kernel just some days ago and asked n=
ovell ( https://bugzilla.novell.com/show_bug.cgi?id=3D396132 ) , but th=
ey don`t have any objections.
chris mason didn`t reply on direct request....

so, if it`s useful, who is reponsible for pushing it upstream ?

______________________________________________________________
Jeden Monat 1 hochkar=E4tiger maxdome-Blockbuster GRATIS!
Exklusiv f=FCr alle WEB.DE Nutzer. http://www.blockbuster.web.de

--
To unsubscribe from this list: send the line "unsubscribe kernel-tester=
s" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
