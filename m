From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13313] vm86old oops
Date: Mon, 1 Jun 2009 22:24:42 +0200
Message-ID: <200906012224.43175.rjw@sisk.pl>
References: <4to6E2myxvG.A.muC.aIbIKB@chimera> <LEcEO2518_I.A.EhE.fJbIKB@chimera> <20090531003751.GA3194@localdomain.by>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090531003751.GA3194-AfQBxy1nhrTup4dJKg45FQ@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Sergey Senozhatsky <sergey.senozhatsky-A/MS7pq9VAU@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sunday 31 May 2009, Sergey Senozhatsky wrote:
> On (05/30/09 21:37), Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.29.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13313
> > Subject		: vm86old oops
> > Submitter	: Sergey Senozhatsky <sergey.senozhatsky-A/MS7pq9VAU@public.gmane.org>
> > Date		: 2009-05-14 21:53 (17 days old)
> > 
> 
> Hello Rafael.
> Linux 2.6.30-rc7-git4
> Bug is still here.
> 
> dmesg:
> 
> [   17.754509] Modules linked in: fuse sbp2 snd_hda_codec_si3054 snd_hda_codec_realtek snd_hda_intel snd_hda_codec snd_pcm snd_seq_midi snd_rawmidi snd_seq_midi_event snd_seq
> snd_timer snd_seq_device serio_raw psmouse i2c_i801 pcspkr snd rng_core soundcore snd_page_alloc asus_laptop led_class evdev usbhid hid sg sr_mod cdrom sd_mod ata_generic
> pata_acpi ata_piix ohci1394 libata ieee1394 ehci_hcd uhci_hcd scsi_mod ide_pci_generic r8169 mii usbcore
> [   17.755064] 
> [   17.755087] Pid: 2416, comm: vbetool Not tainted (2.6.30-rc7-fb-git4 #9) F3JC                
> [   17.755134] EIP: 0060:[<c016cdf7>] EFLAGS: 00013286 CPU: 0
> [   17.755174] EIP is at lockdep_sys_exit+0x7/0xa0
> [   17.755207] EAX: f609a000 EBX: f609bed4 ECX: 00000000 EDX: 00000000
> [   17.755246] ESI: f61887a0 EDI: c1ce1100 EBP: f609bec0 ESP: f609beac
> [   17.755284]  DS: 007b ES: 007b FS: 00d8 GS: 00e0 SS: 0068
> [   17.755322] Process vbetool (pid: 2416, ti=f609a000 task=f61887a0 task.ti=f609a000)
> [   17.755365] Stack:
> [   17.755387]  c01203a9 c012026d 00000000 d8079a0f f609bed4 f609a000 c01032c8 00000000
> [   17.755484]  00000000 f609a000 00000000 0000000f 00000000 00000000 00000000 00000000
> [   17.755602]  00004f04 00000000 00000000 00000000 00000000 00000000 0000100a 0000c000
> [   17.755732] Call Trace:
> [   17.755759]  [<c01203a9>] ? do_sys_vm86+0x119/0x270
> [   17.755809]  [<c012026d>] ? copy_vm86_regs_from_user+0x3d/0x60
> [   17.755857]  [<c01032c8>] ? resume_userspace+0x8/0x28
> [   17.755904]  [<c0103474>] ? syscall_call+0x7/0xb
> [   17.755947] Code: 89 44 24 08 89 5c 24 04 c7 04 24 a8 06 5b c0 e8 a7 a1 36 00 eb c0 e8 89 13 fd ff 89 f6 8d bc 27 00 00 00 00 55 89 e5 53 83 ec 10 <65> a1 14 00 00 00 89 45 f8
> 31 c0 64 8b 1d 00 80 6c c0 8b 8b dc 
> [   17.756585] EIP: [<c016cdf7>] lockdep_sys_exit+0x7/0xa0 SS:ESP 0068:f609beac
> [   17.756694] ---[ end trace dcebd4adaaf1918c ]---

Thanks for the update.

Rafael
