From: Tim Gardner <tim.gardner-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>
Subject: Re: [Bug #16294] [Q35 bisected] hang at init of i915 driver
Date: Fri, 09 Jul 2010 15:12:42 -0600
Message-ID: <4C3790CA.5070009@canonical.com>
References: <-IGZ64uxA6G.A.P0H.bLmNMB@chimera> <TXb9XdQzJoD.A.uoB.WMmNMB@chimera> <20100709004505.GU828@outflux.net> <201007092256.48672.rjw@sisk.pl>
Reply-To: tim.gardner-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201007092256.48672.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Kees Cook <kees-oSa+0FWJbaXR7s880joybQ@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On 07/09/2010 02:56 PM, Rafael J. Wysocki wrote:
> On Friday, July 09, 2010, Kees Cook wrote:
>> Hi Rafael,
>>
>> On Fri, Jul 09, 2010 at 01:41:39AM +0200, Rafael J. Wysocki wrote:
>>> The following bug entry is on the current list of known regressions
>>> from 2.6.34.  Please verify if it still should be listed and let the tracking team
>>> know (either way).
>>
>> Yup, this is still a regression.  The fix is trivial (see below).
>
> Thanks for the update.
>
>>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16294
>>> Subject		: [Q35 bisected] hang at init of i915 driver
>>> Submitter	: Kees Cook<kees-oSa+0FWJbaXR7s880joybQ@public.gmane.org>
>>> Date		: 2010-06-25 18:20 (14 days old)
>>> First-Bad-Commit: http://git.kernel.org/linus/f1befe71fa7a79ab733011b045639d8d809924ad
>>
>> diff --git a/drivers/char/agp/intel-gtt.c b/drivers/char/agp/intel-gtt.c
>> index 9344216..0d9007d 100644
>> --- a/drivers/char/agp/intel-gtt.c
>> +++ b/drivers/char/agp/intel-gtt.c
>> @@ -1229,6 +1229,7 @@ static int intel_i915_get_gtt_size(void)
>>   				(gmch_ctrl&  G33_PGETBL_SIZE_MASK));
>>   			size = 512;
>>   		}
>> +		size = 1024;
>>   	} else {
>>   		/* On previous hardware, the GTT size was just what was
>>   		 * required to map the aperture.
>
> Rafael
> --

Rafael - I forgot to Cc you on the patch I just sent to Dave Arlie. Kees 
has confirmed that it fixes his problem.

http://marc.info/?l=linux-kernel&m=127870855118533&w=2

rtg
-- 
Tim Gardner tim.gardner-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org
