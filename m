From: Joao Correia <joaomiguelcorreia-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13660] Crashes during boot on 2.6.30 / 2.6.31-rc, random 
	programs
Date: Wed, 1 Jul 2009 21:36:18 +0100
Message-ID: <a5d9929e0907011336g31599a29hca3c204f1b53b775@mail.gmail.com>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera> <5Hhc7UkUKEO.A.5zE.DjASKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :from:date:message-id:subject:to:cc:content-type
         :content-transfer-encoding;
        bh=LJP5vRMQRlSZAorFXTm1JTRqQ4My/l5aI0f1GARiX5k=;
        b=uIL08oXLXkWPIPyUBfX2aL96B7RlbxGJZabTGm2/Zzlh3vuK0lLgI+ylOxFnLhxwow
         vuzBgzPQvvekevj4pThXV5XJRhBee7TPNcym/hxYVI40h+SGFy01PUetXl8GH0aA8lhL
         tYBeOcPLy7h7EZ/jQSDbbhpnZtkt1aPXe8Yc8=
In-Reply-To: <5Hhc7UkUKEO.A.5zE.DjASKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

No formal patch has been sent yet, that i am aware of. I have made
some changes following suggestion by Americo Wang advise, to the
following:

(patch by Ingo)

diff --git a/kernel/lockdep_internals.h b/kernel/lockdep_internals.h
index 699a2ac..031f4c6 100644
--- a/kernel/lockdep_internals.h
+++ b/kernel/lockdep_internals.h
@@ -65,7 +65,7 @@ enum {
  * Stack-trace: tightly packed array of stack backtrace
  * addresses. Protected by the hash_lock.
  */
-#define MAX_STACK_TRACE_ENTRIES	262144UL
+#define MAX_STACK_TRACE_ENTRIES	1048576UL

 extern struct list_head all_lock_classes;
 extern struct lock_chain lock_chains[];

and afterwards, a new bug popped up, solved by changing

include/linux/sched.h

# define MAX_LOCK_DEPTH 48UL

to

# define MAX_LOCK_DEPTH 96UL


I have now found a third limit bug, related to MAX_LOCKDEP_CHAINS,
which was hidden so far, which im trying to raise and replicate. This
is being discussed in detail in another message exchange on the lkml,
between me and Americo.

Thank you very much for your time,
Joao Correia
Centro de Informatica
Universidade da Beira Interior
Portugal



On Mon, Jun 29, 2009 at 1:31 AM, Rafael J. Wysocki<rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.29 and 2.6.30.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.29 and 2.6.30. =A0Please verify if it still sh=
ould
> be listed and let me know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
13660
> Subject =A0 =A0 =A0 =A0 : Crashes during boot on 2.6.30 / 2.6.31-rc, =
random programs
> Submitter =A0 =A0 =A0 : Joao Correia <joaomiguelcorreia-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-06-27 16:07 (2 days old)
> References =A0 =A0 =A0: http://lkml.org/lkml/2009/6/27/95
>
>
>
