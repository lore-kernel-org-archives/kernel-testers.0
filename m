From: "John Stoffel" <john@stoffel.org>
Subject: Re: [Bug #13232] ext3/4 with synchronous writes gets wedged by
	Postfix
Date: Tue, 19 May 2009 14:27:14 -0400
Message-ID: <18962.64002.324970.49512@stoffel.org>
References: <yO1BmxN79sN.A.xAG.8_zDKB@chimera>
	<pQ9WADCjgyE.A.yJG.DA0DKB@chimera>
	<20090518132517.GL32019@mit.edu>
	<20090519171713.GA3354@dbwatson.ukfsn.org>
	<20090519175312.GC9053@mit.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754487AbZESS16@vger.kernel.org>
In-Reply-To: <20090519175312.GC9053@mit.edu>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Theodore Tso <tytso@mit.edu>
Cc: David Watson <kernel-nospam@dbwatson.ukfsn.org>, Al Viro <viro@ZenIV.linux.org.uk>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

>>>>> "Theodore" == Theodore Tso <tytso@mit.edu> writes:

Theodore> On Tue, May 19, 2009 at 06:17:13PM +0100, David Watson wrote:
>> On Mon 18 May 2009, Theodore Tso wrote:
>> > On Sat, May 16, 2009 at 10:06:04PM +0200, Rafael J. Wysocki wrote:
>> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13232
>> > > Subject		: ext3/4 with synchronous writes gets wedged by Postfix
>> > > Submitter	: David Watson <kernel-nospam@dbwatson.ukfsn.org>
>> > > Date		: 2009-05-03 19:46 (14 days old)
>> > 
>> > This turned out to be caused by change in the VFS, as documented in
>> > the bug report.  Al Viro has a patch, which I've reviewed.
>> > 
>> > David, would you be able to try testing Al's proposed patch, since you
>> > have an easy reproduction case?  Thanks,
>> 
>> Yes, it fixes the problem for me on 2.6.30-rc6-git3 and 2.6.29.4-rc1.


Theodore> Al, Jan Kara and I have reviewed your patch, and we can add
Theodore> a Tested-by: from David Watson (assuming David, you don't
Theodore> mind your name or e-mail address showing up in the Kernel
Theodore> commit logs --- if you want us to suppress one or both,
Theodore> please let us know).  Given this is a 2.6.28 regression, and
Theodore> this can certainly affect real-life users, I think we should
Theodore> push your patch to Linus for 2.6.30.  Do you agree?

I wonder if this is the reason my main file server has been locking up
solid under 2.6.29 or newer kernels lately, but 2.6.28 is rock solid.
Since it's my main file server at home, and with my home dir NFS
mounted from it onto another system, it's been hard to catch.  I spent
some time fiddling around getting netconsole setup, but then I ran out
of time.

My system is a Debian, pretty upto date, PIII, 550Mhz Dual CPU, 3Gb
RAM, lots of SCSI, SATA and IDE busses, with various types of devices
on all the busses, from DLT tape drive and library, to a mix of disks.
I'm also running ext4 on a mirrored pair disks I use for spooling
backups to tape from.  Ext3 on the rest of my mirrored filesystems as
well. 

If someone could send me the patch, I'll apply it and see how well
2.6.29.[34] works, and whether or not 2.6.30-rcN works as well.
Reproducing the problem was pretty easy for me.  

Thanks,
John
