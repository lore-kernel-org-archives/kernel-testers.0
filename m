From: Milan Broz <mbroz-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [PATCH 0/7] Reduce GFP_ATOMIC allocation failures, candidate
 fix V3
Date: Mon, 16 Nov 2009 17:44:07 +0100
Message-ID: <4B018157.3080707__13559.110594406$1258390012$gmane$org@redhat.com>
References: <1258054211-2854-1-git-send-email-mel@csn.ul.ie> <20091112202748.GC2811@think> <20091112220005.GD2811@think> <20091113024642.GA7771@think>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20091113024642.GA7771@think>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Chris Mason <chris.mason-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Sven

On 11/13/2009 03:46 AM, Chris Mason wrote:
> On Thu, Nov 12, 2009 at 05:00:05PM -0500, Chris Mason wrote:
> 
> [ ...]
> 
>>
>> The punch line is that the btrfs guy thinks we can solve all of this with
>> just one more thread.  If we change dm-crypt to have a thread dedicated
>> to sync IO and a thread dedicated to async IO the system should smooth
>> out.

Please, can you cc DM maintainers with these kind of patches? dm-devel list at least.

Note that the crypt requests can be already processed synchronously or asynchronously,
depending on used crypto module (async it is in the case of some hw acceleration).

Adding another queue make the situation more complicated and because the crypt
requests can be queued in crypto layer I am not sure that this solution will help
in this situation at all.
(Try to run that with AES-NI acceleration for example.)


Milan
--
mbroz-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org
