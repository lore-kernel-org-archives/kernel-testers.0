From: Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13627] Tunnel device ignores TCP/UDP traffic
Date: Thu, 2 Jul 2009 00:14:37 +0800
Message-ID: <b6a2187b0907010914x1c68e09k24bc9378e9c0519c@mail.gmail.com>
References: <ij4ZQY4URcP.A.F3B.vIASKB@chimera>
	 <6JJ2m5kyucK.A.AtD.NJASKB@chimera>
	 <b6a2187b0907010734w7e7a5bbfm271f44e57e12d1b4@mail.gmail.com>
	 <20090701151344.GA4372@gondor.apana.org.au>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=skSYWh7A/QAN9tECn154KonVqhVF5511gIS4Dwwhcjg=;
        b=xOaSK8yXAy3qphLtZ86pdGUFmvZV4GyjXeUDcx8K0gwRLjFQi9hqsd+S/rz7rkC2xn
         /aM4DRFZ7TsRw3kRwDS5PyC8Fz+iiKil2UEme+7VInyFsocVaaybUkP/9rTL5CoIkw+1
         zfHfflKbqTir3M/oeyEmfrhT5LeRl9FALknyQ=
In-Reply-To: <20090701151344.GA4372-lOAM2aK0SrRLBo1qDEOMRrpzq4S04n8Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Herbert Xu <herbert-lOAM2aK0SrRLBo1qDEOMRrpzq4S04n8Q@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, Paul Martin <pm-8fiUuRrzOP0dnm+yROfE0A@public.gmane.org>

On Wed, Jul 1, 2009 at 11:13 PM, Herbert Xu<herbert-lOAM2aK0SrRLBo1qDEOMRrpzq4S04n8Q@public.gmane.org> wrote:

> So you mean that 71f9dacd2e4d233029e9e956ca3f79531f411827 doesn't
> work? Does reverting d55d87fdff8252d0e2f7c28c2d443aee17e9d70f help?

My Linux git already has these two commits, and I tested it with vpnc
(0.5.3) and it connected, but can't ping or ssh to remote. It was
working prior to 2.6.30.

Tested reverting d55d87fdff8252d0e2f7c28c2d443aee17e9d70f, but still
no good. Also reverted 71f9dacd2e4d233029e9e956ca3f79531f411827, still
no good.

> If not can you elaborate on what you mean by not working?

It seems the tunnel is not setup correctly, but I'll have to revert
back to 2.6.29+ to verify.

On kvm (again, it could be KVM which I'm not 100% sure. kvm-87),  it
won't ping to/from the guest system with host ... Used to work before
2.6.31-rc1 with guest net model=e1000 and model=virtio, but with
2.6.31-rc1, only works with model=virtio. .. This could be an
_unrelated_ issue though.

/usr/local/kvm/bin/qemu-system-x86_64 \
        -localtime \
        -net nic,vlan=0,model=e1000 \
        -net tap,script=/root/scripts2/tunx \


Thanks,
Jeff.
