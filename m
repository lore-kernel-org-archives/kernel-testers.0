From: Eric Paris <eparis@parisplace.org>
Subject: Re: [Bug #14474] restorecond going crazy on 2.6.31.4 - inotify 
	regression?
Date: Tue, 27 Oct 2009 10:32:01 -0400
Message-ID: <7e0fb38c0910270732p3a7098d3jc6334e417320295d@mail.gmail.com>
References: <G2WU8XrUVpF.A.lxF.Ref5KB@chimera>
	 <vX3ILojF2dJ.A.H8F.Yef5KB@chimera>
	 <51f3faa70910261648h242a9a2dp42cdf554a9eb1342@mail.gmail.com>
	 <200910270924.41037.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755085AbZJ0Ob7@vger.kernel.org>
In-Reply-To: <200910270924.41037.rjw@sisk.pl>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Robert Hancock <hancockrwd@gmail.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

On Tue, Oct 27, 2009 at 4:24 AM, Rafael J. Wysocki <rjw@sisk.pl> wrote:
> On Tuesday 27 October 2009, Robert Hancock wrote:
>> On Mon, Oct 26, 2009 at 1:32 PM, Rafael J. Wysocki <rjw@sisk.pl> wro=
te:
>> > This message has been generated automatically as a part of a repor=
t
>> > of regressions introduced between 2.6.30 and 2.6.31.
>> >
>> > The following bug entry is on the current list of known regression=
s
>> > introduced between 2.6.30 and 2.6.31. =A0Please verify if it still=
 should
>> > be listed and let me know (either way).
>> >
>> >
>> > Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=
=3D14474
>> > Subject =A0 =A0 =A0 =A0 : restorecond going crazy on 2.6.31.4 - in=
otify regression?
>> > Submitter =A0 =A0 =A0 : Robert Hancock <hancockrwd@gmail.com>
>> > Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-10-16 0:03 (11 days old)
>> > References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D125=
565159520489&w=3D4
>>
>> This is definitely reproducible on 2.6.31.4 on CentOS 5.4, I'll like=
ly
>> try 2.6.31.5 shortly, but it doesn't seem like any of the 2.6.31.5
>> patches touch inotify..

It's a restorecond bug.  restorecon acted as if watch descriptors
could never be reused.  They weren't on old kernels and it's possible
they are reused now.  Restorecon was fixed.

http://marc.info/?l=3Dselinux&m=3D125380417916233&w=3D2

a change in the kernel caused a buggy userspace program to break.  I
know how to put the kernel back the way it was, but I don't know if we
call this a regression, you guys tell me.

-Eric
