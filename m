From: Anatoly Pugachev <matorola@gmail.com>
Subject: Re: [sparc64] kernel panic from running a program in userspace
Date: Sat, 19 Jun 2021 12:45:45 +0300
Message-ID: <CADxRZqz6EZ-K+mWn4A5kp9yZEt1v1YjmFqeZNcf+W99fT2dm8w@mail.gmail.com>
References: <CADxRZqwzbHvMwEB=y_xi2GYK55wtnzycWcUoK_t4q_ccisp+Sg@mail.gmail.com>
 <f9bd5a0e-6f9e-c042-cbfc-2e03bf16b92c@canonical.com>
Mime-Version: 1.0
Return-path: <sparclinux-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PzhHRAQ5Svkk0I70djnQE5HENy3mID1lQRTd49BDNKg=;
        b=vW+YLNCLFosuKGCa6q+hnHHqYNXp/k57Va1OC9XIrIkUq8Wk0aJiFck3fzzRM8jd9h
         Yd0sP0nr4w4at3yrJTuIg049EM+Uz8COeHdwGN3hzOeYRSMJq/O4QWAuS7+kR+l4Pmp8
         +YHI9pW6fXDDMPSDtBl/9+fmT1De5ICus/AvZvMnaPZik5eN8Y6Viu6ueqBO7OSHppaC
         v7tcwS0V7CKy88ZaTAZ6FDVst0dhH6cYmKDEj3JfEJI8OVyx0djlq5sUv17LntPpZnMJ
         RpNRvYfSmUjkyHdmhnmZGNw3yVO3QR7Ib+vAqP6gYV4xnaLwVnmlx729zTcMpIJ5mzfZ
         bbFw==
In-Reply-To: <f9bd5a0e-6f9e-c042-cbfc-2e03bf16b92c@canonical.com>
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Colin Ian King <colin.king@canonical.com>
Cc: Sparc kernel list <sparclinux@vger.kernel.org>, Linux Kernel list <linux-kernel@vger.kernel.org>, debian-sparc <debian-sparc@lists.debian.org>, kernel-testers@vger.kernel.org

On Sat, Jun 19, 2021 at 12:31 PM Colin Ian King
<colin.king@canonical.com> wrote:
>
> Hi,
>
> I suspect this issue was fixed with the following commit:
>
> commit e5e8b80d352ec999d2bba3ea584f541c83f4ca3f
> Author: Rob Gardner <rob.gardner@oracle.com>
> Date:   Sun Feb 28 22:48:16 2021 -0700
>
>     sparc64: Fix opcode filtering in handling of no fault loads

Colin,

yes, but I believe that it was quite a different kernel bug.
Besides, my current kernel test is based on git kernel 5.13.0-rc6
(released last monday), which already includes the mentioned 'opcode'
fix.

> > stress-ng.git$ ./stress-ng --verbose --timeout 10m --opcode -1
> > stress-ng: debug: [480950] stress-ng 0.12.10 g27f90a2276bd
> > stress-ng: debug: [480950] system: Linux ttip 5.13.0-rc6 #229 SMP Tue
> > Jun 15 12:30:23 MSK 2021 sparc64
> > stress-ng: debug: [480950] RAM total: 7.8G, RAM free: 7.0G, swap free: 768.7M
> > stress-ng: debug: [480950] 8 processors online, 256 processors configured
> > stress-ng: info:  [480950] dispatching hogs: 8 opcode
