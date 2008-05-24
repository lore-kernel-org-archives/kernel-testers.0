From: Rik van Riel <riel@surriel.com>
Subject: Re: 2.6.26-rc1 ata2 problems????
Date: Sat, 24 May 2008 09:40:14 -0400
Message-ID: <20080524094014.71ec6f87@bree.surriel.com>
References: <804dabb00805232324r47745c86v9fa941cb9f3fcb5d@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernelnewbies-bounce@nl.linux.org>
In-Reply-To: <804dabb00805232324r47745c86v9fa941cb9f3fcb5d@mail.gmail.com>
Sender: kernelnewbies-bounce@nl.linux.org
Errors-to: kernelnewbies-bounce@nl.linux.org
List-help: <mailto:ecartis@nl.linux.org?Subject=help>
List-unsubscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=unsubscribe>
List-software: Ecartis version 1.0.0
List-Id: <kernel-testers.vger.kernel.org>
List-subscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=subscribe>
List-owner: <mailto:ecartis-owner@nl.linux.org>
List-post: <mailto:kernelnewbies@nl.linux.org>
List-archive: <http://mail.nl.linux.org/kernelnewbies/>
Content-Type: text/plain; charset="us-ascii"
To: Peter Teoh <htmldeveloper@gmail.com>
Cc: kernel-testers@vger.kernel.org, kernelnewbies <kernelnewbies@nl.linux.org>

On Sat, 24 May 2008 14:24:47 +0800
"Peter Teoh" <htmldeveloper@gmail.com> wrote:

> Just found this error in the dmesg:
> 
> 
> ata2.00: qc timeout (cmd 0xa0)
> ata2.00: exception Emask 0x0 SAct 0x0 SErr 0x0 action 0x6 frozen
> ata2.00: cmd a0/00:00:00:08:00/00:00:00:00:00/a0 tag 0 pio 16392 in
>          cdb 4a 01 00 00 10 00 00 00  08 00 00 00 00 00 00 00
>          res 51/04:01:01:14:eb/00:00:00:00:00/a0 Emask 0x5 (timeout)
> ata2.00: status: { DRDY ERR }

> Any clues to these messages?
 
Try smartctl -d ata -a /dev/sdc and look for errors on the disk.

Chances are the disk is going bad in one way or another.  In the
most benign way you are getting timeouts because the drive cannot
read a sector easily and keeps retrying over and over again. 

In that case, you may be able to force the disk to rewrite the
sectors properly (and/or relocate them) with a badblocks -n run
over the whole drive - when booted from a rescue disk!

If your luck is not as good, the drive may have some uncorrectable
errors, which means it is going bad and you'll want to buy a new
disk to copy all your data onto.

While you're looking at the smart data anyway, check the drive
temperature - is it simply running too hot because of sitting
near other equipment in your case?

-- 
All rights reversed.

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

