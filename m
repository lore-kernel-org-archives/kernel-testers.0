From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #32982] Kernel locks up a few minutes after boot
Date: Sun, 1 May 2011 10:01:05 -0700
Message-ID: <BANLkTimbLpMNzfKpyigH6n3arNUywEGk1w@mail.gmail.com>
References: <Xp4OiTz83N.A.O0D.JVGvNB@chimera> <G9uL1cldhmL.A.sNF.dWGvNB@chimera>
 <BANLkTinZRdGROHZqjLFtr=buEUNwyYhVpQ@mail.gmail.com> <BANLkTik_aeVn9Jf_cWnoY0fNUm+tjMnixA@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <BANLkTik_aeVn9Jf_cWnoY0fNUm+tjMnixA-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Bart Van Assche <bvanassche-HInyCGIudOg@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On Sun, May 1, 2011 at 2:55 AM, Bart Van Assche <bvanassche-HInyCGIudOg@public.gmane.org> wrote:
>
> There is something else and completely unrelated that is puzzling me though:
> on two almost identical systems one always recognizes all internal PCIe
> cards but the other system not. This is something that seldom happened with
> 2.6.34 but happens frequently with 2.6.38 and 2.6.39-rcx. What I see is that
> during boot either both InfiniBand PCIe cards are recognized or that one
> specific card is not recognized and even doesn't show up in the lspci
> output. A BIOS upgrade didn't help. Any idea where I should start looking to
> find the cause of this issue ?

So it has happened sporadically before, but happens much more commonly
now? That very much implies some timing issue in PCI probing.

It could be, for example, that the card has a very slow reset
sequence, and doesn't respond to PCI config cycles until it has
internally booted fully. If so, a faster boot by the kernel might just
cause the Linux PCI enumeration to be done before the card is ready.

(That's a really unlikely scenario - I'm not seriously suggesting that
the card would be quite <i>that</i> stupid and slow. But there might
be similar issues at a much lower level, ie if the Linux pcie port
driver might be resetting the port and then trying to read the card
too quickly afterwards, and you'd want some added delay there).

Have you tried it "pcie_ports=compat" (or "native") makes any difference?

But you should probably contact Jesse Barnes and the linux-pci mailing
list and see if anybody has any smarter ideas.

                       Linus
