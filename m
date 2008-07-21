From: Alexey Fisher <bug-track@fisher-privat.net>
Subject: Re: [regression][x86-64] "security: remove dummy module" braking
	boot on my pc.
Date: Mon, 21 Jul 2008 10:28:43 +0200
Message-ID: <1216628923.4351.2.camel@zwerg>
References: <1216599842.4629.13.camel@zwerg>
	 <Xine.LNX.4.64.0807211228350.17374@us.intercode.com.au>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-security-module-owner@vger.kernel.org>
In-Reply-To: <Xine.LNX.4.64.0807211228350.17374@us.intercode.com.au>
Sender: linux-security-module-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: James Morris <jmorris@namei.org>
Cc: kernel-testers@vger.kernel.org, mszeredi@suse.cz, "Serge E. Hallyn" <serue@us.ibm.com>, linux-security-module@vger.kernel.org

Am Montag, den 21.07.2008, 12:32 +1000 schrieb James Morris:
> On Mon, 21 Jul 2008, Alexey Fisher wrote:
> 
> > After this patch i get "Kernel panic - not syncing: No init found.  Try
> > passing init= option to kernel." At the moment i can't just revert it
> > against latest git.
> 
> Try disabling CONFIG_SECURITY_ROOTPLUG.
> 
> 
> - James
Thank you. it's working.

