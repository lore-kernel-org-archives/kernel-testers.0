From: Maxim Levitsky <maximlevitsky-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [alsa-devel] Bugs on aspire one A150
Date: Fri, 14 Nov 2008 20:05:30 +0200
Message-ID: <491DBDEA.9010104@gmail.com>
References: <s5h3ai11dpt.wl%tiwai@suse.de> <20081109151323.GA18705@rhlx01.hs-esslingen.de> <s5h7i7c916e.wl%tiwai@suse.de> <20081109200929.GA29333@rhlx01.hs-esslingen.de> <s5hiqqtkxqr.wl%tiwai@suse.de> <491B0D38.1050207@gmail.com> <20081112180519.GA21919@rhlx01.hs-esslingen.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=BRwnAbHBH1Onw+hQoeDMKKUz9PBcr0LingOYPWi/JrM=;
        b=A6dInTyheDJ7wjWLA3QAgWP9rKM+0+Mk4ovtUUFDZR1VdrhN5Rf26/wx/VLgZCwbhx
         w/6MgSGnV/Md9Mt5O3vp/Ubgrm7fG/hZjfIJ7AtAcljvlb+cbEvuejen9Gjj2Nc9ZQaU
         vg9nJjGvUoOR1az0h+tBFTycrj9bKaXOXp5Lw=
In-Reply-To: <20081112180519.GA21919-p/qQFhXj4MHA4IYVXhSI5GHfThorsUsI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Andreas Mohr <andi-5+Cda9B46AM@public.gmane.org>
Cc: Takashi Iwai <tiwai-l3A5Bk7waGM@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, alsa-devel-K7yf7f+aM1XWsZ/bQMPhNw@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Andreas Mohr wrote:
> Hi,
> 
> On Wed, Nov 12, 2008 at 07:07:04PM +0200, Maxim Levitsky wrote:
>> I pretty much studied the datasheet and driver, and this is what I found:
>> btw, my acer 5720 and aspire one share same ALC268.
>> Some stuff is trivially fixable, some seems to be unfixable at all:
> 
> Wow, what an extremely in-depth analysis!
> I just intended to dive into getting mic routing corrected myself,
> thus you saved me a lot of time!
> 
>> model=acer is used on my regular laptop.
>> model-acer-aspire is used on aspire one laptop, and it needs to be renamed, as both are aspire.
> 
> +1 (your analysis of both being rather different - as already pondered -
> confirms this necessity)
> 
>> And now for unfixable problems:
>>
>> 1) There is strong DC offset on all inputs.
>> it is even different on left/right and depends on capture volume.
>> I tried to change the VREF only param that could help, but it doesn't.
>> I feel that this is hardware flaw.
>> (It is possible that voltage on inputs is created by circuit made by acer, and then ALC268 amplifies it.)
> 
> Sounds like really bad circuit design then.
> One would think that the Intel HDA architecture might have builtin
> measures to compensate for this if needed? DC offset issues on
> soundcards aren't exactly a new phenomenon after all...
> 
>> Lastly I noticed that datasheet mentions so called 'coefficients':
>> the codecs exposes lots of internal and undocumented registers using set address/ get/set value scheme.
>> maybe some of above bugs are fixable there, but ether realtek has to provide data for that or reverse engineering of
>> windows driver is required.
> 
> I've actually had a peek at the .inf files since I thought that it would
> already contain register values in those registry keys that it creates on
> install, but yeah, that's all in-driver it seems.
> Probably time to ask Acer about specifics, especially since I didn't spot
> any hda-intel changes in their linux-2.6.23.9lw source.
> 
> Thank you very much,
> 
> Andreas Mohr

Small update:

1) The dc offset isn't present on aspire one, really is a circuit design bug I guess 
2) Internal mic works perfectly on aspire one, can reproduce the strange behaver at all,
Probably this was mixer bug.

So aspire one support is almost, only need to add support to restore beep volume
after resume.


Best regards,
	Maxim Levitsky

