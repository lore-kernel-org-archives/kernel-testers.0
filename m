From: "Justin P. Mattock" <justinmattock@gmail.com>
Subject: Re: [Bug #14379] ACPI Warning for _SB_.BAT0._BIF: Converted Buffer
 to 	expected String
Date: Sun, 11 Oct 2009 20:58:50 -0700
Message-ID: <4AD2A97A.3020909@gmail.com>
References: <zJ_pXHNwoHC.A.akB.Aal0KB@chimera>	 <r-4Wjt4coy.A.ZrC.Ual0KB@chimera>	 <dd18b0c30910112014m4bfdc238j542864bb9f1e8161@mail.gmail.com> <1255318556.11664.11.camel@minggr.sh.intel.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753894AbZJLD7V@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=e5LXs7rr+xYcLG6R4zZpv7rjpICFc58npCJNkUvWvQo=;
        b=eAri3DzjvhAkErfvGUxyiRWWKaova+OLB0CI+nkL95WOd3rxIUXXtHKXbxHo0ytYjL
         GXBkCYDcAxA8sjdAvT2Fl2ZQJLHCph6XgV3ANLa7IFrjYVjhPEOR1oVgyP6+Gaj86At3
         VjhDZytrfsdTMk8i4DoLWFfpe+yGVITCwuw0s=
In-Reply-To: <1255318556.11664.11.camel@minggr.sh.intel.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Lin Ming <ming.m.lin@intel.com>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

Lin Ming wrote:
> On Mon, 2009-10-12 at 11:14 +0800, Justin Mattock wrote:
>    
>> On Sun, Oct 11, 2009 at 3:22 PM, Rafael J. Wysocki<rjw@sisk.pl>  wrote:
>>      
>>> This message has been generated automatically as a part of a report
>>> of recent regressions.
>>>
>>> The following bug entry is on the current list of known regressions
>>> from 2.6.31.  Please verify if it still should be listed and let me know
>>> (either way).
>>>
>>>
>>> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=14379
>>> Subject         : ACPI Warning for _SB_.BAT0._BIF: Converted Buffer to expected String
>>> Submitter       : Justin Mattock<justinmattock@gmail.com>
>>> Date            : 2009-10-08 21:46 (4 days old)
>>> References      : http://marc.info/?l=linux-kernel&m=125504031328941&w=4
>>>
>>>
>>>
>>>        
>> pulled rc4 today and the warning is still present.
>> here is the results of git bisect:
>>      
>
> Patch at http://bugzilla.kernel.org/show_bug.cgi?id=14379#c1 fixes the
> warning.
>
> Actually, the _BIF warning was fixed at commit
> e899b6485c332aa2d7510739507ab5e5d7b28e59.
> See http://bugzilla.kernel.org/show_bug.cgi?id=11822#c14
>
> I made a mistake at the cleanup of predefined method table so the
> warning shows up again.
>
> Lin Ming
>
>    
Cool, I can give that a try.
then I guess just leave this open(bugreport) until this patch
http://bugzilla.kernel.org/show_bug.cgi?id=14379#c1
gets pushed into the main tree then close the bugreport.

Justin P. Mattock
