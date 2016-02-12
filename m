From: Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: linux-next: Tree for Feb 12
Date: Fri, 12 Feb 2016 19:57:20 +0530
Message-ID: <20160212142719.GA31729@sudip-pc>
References: <20160212162035.1e0260cd@canb.auug.org.au>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=TZ0batbZPtI+bHExLDgft71c6ogKVQSCnWk42S4Wkks=;
        b=X18eSlw9PX3QbHYXhHESscBxQK8x22DVKv4f+yuWrS5+CesDoSCGFjPa2T4vLHKvuo
         k2nbcpDdfJLvXf0l154TfHVm3SpUb9rocHC70H9xwyZYAGWHpbQIpkLNExY+2l0vhAEv
         FTExGN9EK1BVDdSYxWaoGkLmg9x4Zrv8aHUnZs2zQz85UAOhkszuWTfl3kXg57dyj90u
         ous99GG6ss/MHXGAgj6rVoclwIlEJHohQw8BT46cjE/TfRiXCo0BQTcltUc3LWoGVHbo
         CZPkcwK5jyWt/OF1EaJaJUHMNCTvwQjDCunHeLRPGZiue0E5leC3Tc5QIJcZoDzdFMfK
         rw9w==
Content-Disposition: inline
In-Reply-To: <20160212162035.1e0260cd-3FnU+UHB4dNDw9hX6IcOSA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kees Cook <keescook-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Ard Biesheuvel <ard.biesheuvel-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Russell King <rmk+kernel-lFZ/pmaqli7XmaaqVzeoHQ@public.gmane.org>
Cc: linux-next-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Stephen Rothwell <sfr-3FnU+UHB4dNDw9hX6IcOSA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Fri, Feb 12, 2016 at 04:20:35PM +1100, Stephen Rothwell wrote:
> Hi all,
> 
> Changes since 20160211:

arm lpc18xx_defconfig build fails with the error:
./arch/arm/kernel/vmlinux.lds:702: undefined symbol `SECTION_SHIFT'
referenced in expression

bisect leads to:
64ac2e74f0b2 ("ARM: 8502/1: mm: mark section-aligned portion of rodata NX")

reverting that patch fixed the build.

build log at:
https://travis-ci.org/sudipm-mukherjee/parport/jobs/108716281

regards
sudip
