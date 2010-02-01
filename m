From: Neil Horman <nhorman-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>
Subject: Re: [Bug #15196] kmem_cache_create: duplicate cache ccid2_h
Date: Mon, 1 Feb 2010 08:01:18 -0500
Message-ID: <20100201130118.GD25094@hmsreliant.think-freely.org>
References: <7b6bb4a51001311930i7d72f60dj3b15ca3e1a715607@mail.gmail.com>
 <20100131.232050.266652459.davem@davemloft.net>
 <20100201115518.GA25094@hmsreliant.think-freely.org>
 <20100201.044911.15611947.davem@davemloft.net>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20100201.044911.15611947.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: xtfeng-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, htd-HjJ2MNWy62to6+H+lsi3Gti2O/JbrIOy@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Mon, Feb 01, 2010 at 04:49:11AM -0800, David Miller wrote:
> From: Neil Horman <nhorman-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>
> Date: Mon, 1 Feb 2010 06:55:18 -0500
> 
> > He claims this dependency is deliberate and requires, to which I agree, but he
> > would seem to fix that by making the dccp_probe module error out in the event
> > that dccp wasn't loaded.  Why bother with that?
> 
> Neil, please get into the thread Gerrit started so he can see your
> questions and responses too.
> 
> I already chided him for not CC:'ing you in the first place, guys
> stop hiding from eachother :-)
> 
I already posted to both of his posts (about 45 minutes ago).  I think vger is
being slow (whoever runs that system should really tune it up ;) )

Neil
