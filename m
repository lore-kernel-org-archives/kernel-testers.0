From: Dan Williams <dan.j.williams@intel.com>
Subject: Re: [Bug #13116] Can't boot with nosmp
Date: Tue, 9 Jun 2009 10:20:36 -0700
Message-ID: <e9c3a7c20906091020m19abf3b5wbbb7f5364b2d4905@mail.gmail.com>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera>
	 <D9VoutSOyXP.A.xm.Vb7KKB@chimera> <20090608091544.53a94235@nehalam>
	 <e9c3a7c20906080929l1a4ec739t7585f6bba54bf684@mail.gmail.com>
	 <20090608170437.1c2386a5@nehalam>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1757691AbZFIRUr@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=34iSRAusb4p5YXwHmOXXsJBdnVulXaAkc+QCMItOpcM=;
        b=ZQx2zclUTGzhhzcSyC43x0ifzJjrzkquyd8s88yID9JGo4/Co4hqfjpbloomMwGx/Q
         81kMYWcLrmD0hpffB4W5KPCUFqwOqvDc3+3aJXK7ZdjoAJv1W8PO0LACFM8BMQAsTjX6
         6xb/XButDCRiIkd+immpojAiO367Y1DpsYNuA=
In-Reply-To: <20090608170437.1c2386a5@nehalam>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Stephen Hemminger <shemminger@vyatta.com>
Cc: Rusty Russell <rusty@rustcorp.com.au>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, avi@redhat.com

On Mon, Jun 8, 2009 at 5:04 PM, Stephen Hemminger<shemminger@vyatta.com> wrote:
> I did some more debugging, and the problem appears to be that
> booting with nosmp still leaves all the CPU's present in the cpu
> possible mask. So code like dma engine (or loopback device), that
> use alloc_percpu get broken.
>
> Not sure why all the cpu's are still showing up in the possible mask.
> Rusty? do you have an answer.

Would this recent commit also fix this issue?

commit a4c0364be3f43d3e17fe19270f8b3d64881606e6
Author: Avi Kivity <avi@redhat.com>
Date:   Sat Jun 6 12:34:39 2009 +0300

    KVM: Explicity initialize cpus_hardware_enabled

    Under CONFIG_MAXSMP, cpus_hardware_enabled is allocated from the heap and
    not statically initialized.  This causes a crash on reboot when kvm thinks
    vmx is enabled on random nonexistent cpus and accesses nonexistent percpu
    lists.

    Fix by explicitly clearing the variable.

    Cc: stable@kernel.org
    Reported-and-tested-by: Yinghai Lu <yinghai@kernel.org>
    Signed-off-by: Avi Kivity <avi@redhat.com>

diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index 1ecbe23..4293528 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -2305,6 +2305,7 @@ int kvm_init(void *opaque, unsigned int vcpu_size,
                r = -ENOMEM;
                goto out_free_0;
        }
+       cpumask_clear(cpus_hardware_enabled);

        r = kvm_arch_hardware_setup();
        if (r < 0)
