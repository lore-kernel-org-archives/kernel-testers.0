From: "Alexander Beregalov" <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: cant compile kernel on sparc
Date: Fri, 30 May 2008 18:09:16 +0400
Message-ID: <a4423d670805300709p2abfd475s85d7068238a56adc@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        bh=n1PsiyP7oMH6zjA2aQIJZiFJXLhaea5g4+7qBS0MXMw=;
        b=MDsGpUBIHcabcryynOPz6fHlArv/INo3M+exl6df9LI+zHwt5AXCkBGbJlP3XGDGcbQ7q9EDPEAr2meXnlPi65shhHsC0oW+6cT9KSBt99OEo3ahjOvWWubuKSnqeCKFRWEsJZcR7x5tVcMF1iMt7kx/9Lzf8LzIhUf23Nv1nR8=
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernelnewbies-qDhp9YYfzQpg9hUCZPvPmw@public.gmane.org

Hi
I am trying to configuring and compiling the kernel for sparc.
I have got the following error

with 2.6.25:
  CC      arch/sparc64/kernel/asm-offsets.s
arch/sparc64/kernel/asm-offsets.c:1: error: -m64 is not supported by
this configuration
arch/sparc64/kernel/asm-offsets.c:1: error: -mlong-double-64 not
allowed with -m64
arch/sparc64/kernel/asm-offsets.c:1: error: -mcmodel= is not supported
on 32 bit systems
make[1]: *** [arch/sparc64/kernel/asm-offsets.s] Error 1
make: *** [prepare0] Error 2

with 2.6.26-rc4:
  CC      kernel/bounds.s
kernel/bounds.c:1: error: -m64 is not supported by this configuration
kernel/bounds.c:1: error: -mlong-double-64 not allowed with -m64
kernel/bounds.c:1: error: -mcmodel= is not supported on 32 bit systems
make[1]: *** [kernel/bounds.s] Error 1
make: *** [prepare0] Error 2

cpu             : TI UltraSparc IIi (Sabre)
fpu             : UltraSparc IIi integrated FPU
prom            : OBP 3.25.3 2000/06/29 14:12
type            : sun4u
ncpus probed    : 1
ncpus active    : 1
D$ parity tl1   : 0
I$ parity tl1   : 0
Cpu0Bogo        : 880.39
Cpu0ClkTck      : 000000001a39de00
MMU Type        : Spitfire
State:
CPU0:           online

GCC:
Target: sparc-unknown-linux-gnu
Thread model: posix
gcc version 4.1.2 (Gentoo 4.1.2 p1.0.2)

What is the problem?
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
