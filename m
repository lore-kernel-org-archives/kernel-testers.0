From: Alan Jenkins <sourcejedi.lkml-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: Re: s2disk hang update
Date: Mon, 22 Feb 2010 15:35:28 +0000
Message-ID: <4B82A440.6010701@googlemail.com>
References: <9b2b86521001020703v23152d0cy3ba2c08df88c0a79@mail.gmail.com> <201002182104.49631.rjw@sisk.pl> <9b2b86521002190348k61e3bce0m8d036d1068c05644@mail.gmail.com> <201002212147.07987.rjw@sisk.pl>
Mime-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------020509080901090000030303"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type;
        bh=HJd5rEPHKOM2phS9wYdMly0jz/NPl1IyZXuWlMxNc0I=;
        b=oOES8Y48rvu9hvYM7cq9qG1+y64BHpMbZJ6awB5AdbCX1FkdmibTRvH8PYSh095SDy
         YLPJM6MMm72PDDAkPKAy62FW81kulIRJ+3x3v1TIaA/Fn8qZWsqnFrRGzD02yciuUl7+
         fUQJoeHmNm9UVE1qY8sT20O2JNHrRlvZ7pGlQ=
In-Reply-To: <201002212147.07987.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, hugh.dickins-IWqWACnzNjwqdlJmJB21zg@public.gmane.org, Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>, pm list <linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

This is a multi-part message in MIME format.
--------------020509080901090000030303
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Rafael J. Wysocki wrote:
> On Friday 19 February 2010, Alan Jenkins wrote:
>   
>> On 2/18/10, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
>>     
>>> On Thursday 18 February 2010, Alan Jenkins wrote:
>>>       
>>>> On 2/17/10, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
>>>>         
>>>>> On Wednesday 17 February 2010, Alan Jenkins wrote:
>>>>>           
>>>>>> On 2/16/10, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
>>>>>>             
>>>>>>> On Tuesday 16 February 2010, Alan Jenkins wrote:
>>>>>>>               
>>>>>>>> On 2/16/10, Alan Jenkins <sourcejedi.lkml-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org> wrote:
>>>>>>>>                 
>>>>>>>>> On 2/15/10, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
>>>>>>>>>                   
>>>>>>>>>> On Tuesday 09 February 2010, Alan Jenkins wrote:
>>>>>>>>>>                     
>>>>>>>>>>> Perhaps I spoke too soon.  I see the same hang if I run too many
>>>>>>>>>>> applications.  The first hibernation fails with "not enough
>>>>>>>>>>> swap"
>>>>>>>>>>> as
>>>>>>>>>>> expected, but the second or third attempt hangs (with the same
>>>>>>>>>>> backtrace
>>>>>>>>>>> as before).
>>>>>>>>>>>
>>>>>>>>>>> The patch definitely helps though.  Without the patch, I see a
>>>>>>>>>>> hang
>>>>>>>>>>> the
>>>>>>>>>>> first time I try to hibernate with too many applications
>>>>>>>>>>> running.
>>>>>>>>>>>                       
>>>>>>>>>> Well, I have an idea.
>>>>>>>>>>
>>>>>>>>>> Can you try to apply the appended patch in addition and see if
>>>>>>>>>> that
>>>>>>>>>> helps?
>>>>>>>>>>
>>>>>>>>>> Rafael
>>>>>>>>>>                     
>>>>>>>>> It doesn't seem to help.
>>>>>>>>>                   
>>>>>>>> To be clear: It doesn't stop the hang when I hibernate with too many
>>>>>>>> applications.
>>>>>>>>
>>>>>>>> It does stop the same hang in a different case though.
>>>>>>>>
>>>>>>>> 1. boot with init=/bin/bash
>>>>>>>> 2. run s2disk
>>>>>>>> 3. cancel the s2disk
>>>>>>>> 4. repeat steps 2&3
>>>>>>>>
>>>>>>>> With the patch, I can run 10s of iterations, with no hang.
>>>>>>>> Without the patch, it soon hangs, (in disable_nonboot_cpus(), as
>>>>>>>> always).
>>>>>>>>
>>>>>>>> That's what happens on 2.6.33-rc7.  On 2.6.30, there is no problem.
>>>>>>>> On 2.6.31 and 2.6.32 I don't get a hang, but dmesg shows an
>>>>>>>> allocation
>>>>>>>> failure after a couple of iterations ("kthreadd: page allocation
>>>>>>>> failure. order:1, mode:0xd0").  It looks like it might be the same
>>>>>>>> stop_machine thread allocation failure that causes the hang.
>>>>>>>>                 
>>>>>>> Have you tested it alone or on top of the previous one?  If you've
>>>>>>> tested it
>>>>>>> alone, please apply the appended one in addition to it and retest.
>>>>>>>
>>>>>>> Rafael
>>>>>>>               
>>>>>> I did test with both patches applied together -
>>>>>>
>>>>>> 1. [Update] MM / PM: Force GFP_NOIO during suspend/hibernation and
>>>>>> resume
>>>>>> 2. "reducing the number of pages that we're going to keep preallocated
>>>>>> by
>>>>>> 20%"
>>>>>>             
>>>>> In that case you can try to reduce the number of preallocated pages even
>>>>> more,
>>>>> ie. change "/ 5" to "/ 2" (for example) in the second patch.
>>>>>           
>>>> It still hangs if I try to hibernate a couple of times with too many
>>>> applications.
>>>>         
>>> Hmm.  I guess I asked that before, but is this a 32-bit or 64-bit system and
>>> how much RAM is there in the box?
>>>
>>> Rafael
>>>       
>> EeePC 701.  32 bit.  512Mb RAM.  350Mb swap file, on a "first-gen" SSD.
>>     
>
> Hmm.  I'd try to make  free_unnecessary_pages() free all of the preallocated
> pages and see what happens.
>   

It still hangs in hibernation_snapshot() / disable_nonboot_cpus().  
After apparently freeing over 400Mb / 100,000 pages of preallocated ram.



There is a change which I missed before.  When I applied your first 
patch ("Force GFP_NOIO during suspend" etc.), it did change the hung 
task backtraces a bit.  I don't know if it tells us anything.

Without the patch, there were two backtraces.  The first backtrace 
suggested a problem allocating pages for a kernel thread (at 
copy_process() / try_to_free_pages()).  The second showed that this 
problem was blocking s2disk (at hibernation_snapshot() / 
disable_nonboot_cpus() / stop_machine_create()). 

With the GFP_NOIO patch, I see only the s2disk backtrace.


Thanks
Alan

--------------020509080901090000030303
Content-Type: text/x-diff;
 name="free-all-prealloc.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
 filename="free-all-prealloc.patch"

diff --git a/kernel/power/snapshot.c b/kernel/power/snapshot.c
index 36cb168..970930a 100644
--- a/kernel/power/snapshot.c
+++ b/kernel/power/snapshot.c
@@ -1179,6 +1179,12 @@ static void free_unnecessary_pages(void)
 		to_free_normal -= save_highmem - alloc_highmem;
 	}
 
+	to_free_normal = alloc_normal;
+	printk(KERN_ERR "Freeing all %d preallocated pages\n",
+			to_free_normal);
+	printk(KERN_ERR "(and %d highmem pages, out of %d)\n",
+			alloc_highmem, to_free_highmem);
+
 	memory_bm_position_reset(&copy_bm);
 
 	while (to_free_normal > 0 && to_free_highmem > 0) {

--------------020509080901090000030303--
