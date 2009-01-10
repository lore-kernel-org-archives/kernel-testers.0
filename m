From: Eric Sandeen <sandeen-+82itfer+wXR7s880joybQ@public.gmane.org>
Subject: Re: [xfs-masters] 2.6.29-rc: kernel BUG at fs/xfs/support/debug.c:108
Date: Sat, 10 Jan 2009 10:27:31 -0600
Message-ID: <4968CC73.4070700@sandeen.net>
References: <20090109044121.GA31280@orion> <20090109053858.GP9448@disturbed>	<a4423d670901091353s7ff12207gcb38eb093d77d401@mail.gmail.com>	<a4423d670901091418j5c7fdfb2oeba2f4640f8e29d0@mail.gmail.com>	<a4423d670901091511y68a53808rfaab8148526224c6@mail.gmail.com>	<a4423d670901100419s2ae106bexac1a538caf654153@mail.gmail.com>	<20090110143924.GA25900@infradead.org> <a4423d670901100709v1e7ce0bfs167547c5001787ac@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <a4423d670901100709v1e7ce0bfs167547c5001787ac-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, xfs-masters-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org

Alexander Beregalov wrote:
> 2009/1/10 Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>:

>> How big is the filesystem where you see this corruption? Maybe I could
>> reproduce it locally with a xfs_metadump image.
> 
> They are big enough, I have four such FS's for >200Gb

An xfs_metadump should not be so large, though.

But bisecting as hch suggested (keepin the "working" header for each
bisection point) would be great.

-Eric
