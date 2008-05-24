From: Rik van Riel <riel-ebMLmSuQjDVBDgjK7y7TUQ@public.gmane.org>
Subject: Re: 2.6.26-rc1 ata2 problems????
Date: Sat, 24 May 2008 12:15:15 -0400
Message-ID: <20080524121515.4f3d8f3a@bree.surriel.com>
References: <804dabb00805232324r47745c86v9fa941cb9f3fcb5d@mail.gmail.com>
	<20080524094014.71ec6f87@bree.surriel.com>
	<804dabb00805240845t4424d515s5de01154a98fa972@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <804dabb00805240845t4424d515s5de01154a98fa972-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter Teoh <htmldeveloper-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernelnewbies <kernelnewbies-qDhp9YYfzQpg9hUCZPvPmw@public.gmane.org>

On Sat, 24 May 2008 23:45:24 +0800
"Peter Teoh" <htmldeveloper-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:

> Just out of curiosity.....when OS build the list of inodes....it scan
> and identify all the corrupted blocks, and so the outcome of mkfs will
> be all the uncorrupted blocks on the harddisk - right?  

No, mkfs just writes and hopes that the blocks it wrote
can be read in again later. I do not believe it does any
testing by default.

> so possibly there are many other corrupted blocks on the harddisk

Yes.

> Is there any tools that can allow me to see / identify all these
> corrupted blocks?

badblocks

Read the man page carefully, you probably want the "-n" option.
 
> And given that there are many corrupted blocks, when I do a mkfs to
> create a new filesystem, all the corrupted blocks will be marked away,
> and therefore the new filesystem should have less total space, but
> guaranteed NOT TO HAVE any corrupted blocks, right?

No, mkfs does not scan the disk for bad blocks by default.

-- 
All rights reversed.
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
