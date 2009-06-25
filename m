From: Alan Jenkins <alan-jenkins@tuffmail.co.uk>
Subject: 2.6.30-rc1: touchpad disabled on hibernation
Date: Thu, 25 Jun 2009 15:37:27 +0100
Message-ID: <4A438BA7.9010800@tuffmail.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1757809AbZFYOhl@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:content-type
         :content-transfer-encoding;
        bh=yKLwMLBLlYRjQsyYTv3AhVoULa0s2uaAhe86pfdgC+4=;
        b=C17ov7jwmu4lmp6Z+3BXooNafaOELnSHHb2ELx7xlj/RNgbjYK+Cz8KpWqddnxtsbt
         LAf4Y4Gejh+A/M8+1Qpgs5LjOcKSVjoluP2OVPEPWLQR0FckfgCJuUUEaheUNg3AODSB
         +4tE0JPPzzzZyGtFGoRv7wV4KGLlJTpIfKQY0=
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-kernel <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, linux-input@vger.kernel.org, linux-pm@lists.linux-foundation.org

The synaptics touchpad on my EeePC 701 dies on hibernation.  2.6.30 was
fine, and it doesn't happen on suspend to ram either.  There are no
obvious error messages, but maybe this boot message is relevant:

Platform driver 'i8042' needs updating, please use dev_pm_ops

Alan
