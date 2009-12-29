From: OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>
Subject: Re: [Bug #14730] sky2 won't work after suspend/resume cycle
Date: Wed, 30 Dec 2009 07:08:30 +0900
Message-ID: <874on9tov5.fsf@devron.myhome.or.jp>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera>
	<srmJ8vMxKPH.A.6LD.JxhOLB@chimera>
	<878wcltyg5.fsf@devron.myhome.or.jp> <200912292229.47644.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200912292229.47644.rjw-KKrjLPT3xs0@public.gmane.org> (Rafael J. Wysocki's message of
	"Tue, 29 Dec 2009 22:29:47 +0100")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Maciej J. Woloszyk" <mat-7wKBDC4inUHVItvQsEIGlw@public.gmane.org>

"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> writes:

> On Tuesday 29 December 2009, OGAWA Hirofumi wrote:
>> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> writes:
>> 
>> > This message has been generated automatically as a part of a report
>> > of regressions introduced between 2.6.31 and 2.6.32.
>> >
>> > The following bug entry is on the current list of known regressions
>> > introduced between 2.6.31 and 2.6.32.  Please verify if it still should
>> > be listed and let me know (either way).
>> >
>> >
>> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14730
>> > Subject		: sky2 won't work after suspend/resume cycle
>> > Submitter	: Maciej J. Woloszyk <mat-7wKBDC4inUHVItvQsEIGlw@public.gmane.org>
>> > Date		: 2009-12-04 09:02 (26 days old)
>> 
>> This seems to be related to commit 4b77b0a2ba27d64f58f16d8d4d48d8319dda36ff.
>> 
>> It clears dev->state_saved blindly, but pci_pm_resume() calls
>> pci_restore_standard_config() before pm->resume() (by probably
>> historical reason).
>
> The other way around.  pci_restore_standard_config() is the new thing and the
> pci_restore_state() in ->resume() is supposed to be unnecessary.  Unfortunately
> in this case the restoration of PCI config registers in
> pci_restore_standard_config() doesn't work.
>
> I'd like to understand the reason, but temporarily we can just set
> pdev->state_saved to 1 in sky2_resume(), as proposed in the bug entry.

Sure. However, it might not be only sky2. Well, anyway, another likely
one is - restore() should be called after pci_pm_default_resume()?
-- 
OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>
