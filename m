From: Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: linux-next: Tree for Feb 17
Date: Wed, 17 Feb 2016 17:22:48 +0530
Message-ID: <20160217115248.GA4294@sudip-pc>
References: <20160217163921.42aeff6a@canb.auug.org.au>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=tpXHdMf0y37nCHy7Da9JAuXQV8h7Vq5ofN0rUAtUmzg=;
        b=EBOVD7NYWbIFPr1GWdArl0WXUk3aELywODPkyulmLEuhocWjh4zB+9ra2V5TXtpmux
         Rj49zshbd//zJU9xQEbcGOm76sDHpRBSUGpdPiPCFU+u1tder9/CF7aJFtCLnxi/T6RD
         asqhxy17L6NrmHT7qQvesYPgIIv+sTVJQYXBXefuRf4oMIgLQLkYHwD2UfTVovVfkKrD
         qGACZ6pNWM6aUXbKPrsD8mRQ8rWwDQxgcltBUqzfFNKcWMfD2ZFGtl+L3xodNc+V/9my
         kROJv6CsAuqyO7rPE3wKp4+l/9X9NNb1I7yFV2jJnhPNu1szOgvQ7u/cgXYo0tq1g6Kq
         FYoQ==
Content-Disposition: inline
In-Reply-To: <20160217163921.42aeff6a-3FnU+UHB4dNDw9hX6IcOSA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ralf Baechle <ralf-6z/3iImG2C8G8FEW9MqTrA@public.gmane.org>, David Daney <david.daney-YGCgFSpz5w/QT0dZR+AlfA@public.gmane.org>
Cc: linux-next-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Stephen Rothwell <sfr-3FnU+UHB4dNDw9hX6IcOSA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Wed, Feb 17, 2016 at 04:39:21PM +1100, Stephen Rothwell wrote:
> Hi all,
> 
> Changes since 20160216:

since last few days build of mips cavium_octeon_defconfig is failing
with the error:
arch/mips/include/asm/octeon/cvmx.h:60:39: fatal error:
	asm/octeon/cvmx-ciu3-defs.h: No such file or directory

caused by commit:
dfb354bef1fa ("MIPS: OCTEON: Add model checking support for cn73xx, cnf75xx and cn78xx")

The #include for the header file is added but the header file is not in
the tree.

regards
sudip
