From: James Morris <jmorris@namei.org>
Subject: Re: [regression][x86-64] "security: remove dummy module" braking
 boot on my pc.
Date: Mon, 21 Jul 2008 12:32:28 +1000 (EST)
Message-ID: <Xine.LNX.4.64.0807211228350.17374@us.intercode.com.au>
References: <1216599842.4629.13.camel@zwerg>
Mime-Version: 1.0
Return-path: <linux-security-module-owner@vger.kernel.org>
In-Reply-To: <1216599842.4629.13.camel@zwerg>
Sender: linux-security-module-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alexey Fisher <bug-track@fisher-privat.net>
Cc: kernel-testers@vger.kernel.org, mszeredi@suse.cz, "Serge E. Hallyn" <serue@us.ibm.com>, linux-security-module@vger.kernel.org

On Mon, 21 Jul 2008, Alexey Fisher wrote:

> After this patch i get "Kernel panic - not syncing: No init found.  Try
> passing init= option to kernel." At the moment i can't just revert it
> against latest git.

Try disabling CONFIG_SECURITY_ROOTPLUG.


- James
-- 
James Morris
<jmorris@namei.org>
