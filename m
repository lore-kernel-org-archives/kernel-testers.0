From: Andrew Lutomirski <luto-3s7WtUTddSA@public.gmane.org>
Subject: Re: [Bug #14472] EXT4 corruption
Date: Tue, 3 Nov 2009 18:43:11 -0500
Message-ID: <cb0375e10911031543n5cfcc090k8780449a1413b067@mail.gmail.com>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera>
	 <6dRYo8ss7vL.A.haF.Are5KB@chimera>
	 <cb0375e10910291257t1f2f16ciade932bd78689ccc@mail.gmail.com>
	 <20091029222335.GJ18464@mit.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to
         :content-type:content-transfer-encoding;
        bh=lcwk5VMy+sjDxCNyZV9YEuDLOPPJ4hKRhOKVF8qIWGk=;
        b=Z7yNIOZEEt8bU6VYj4kjHWrgTfVt0YXj/uaqXq7TytysThfeMV7FNxSNwfPUq5hZ6g
         goq0F2xIoJUY5Oq+2ge7QnM5iVpXtVc77fEW0bQjb3jICq5XGLlWHEVWSO4hKZ368NUI
         WDYPzOkbb1bhHcc7aKKvyMlir00b+x6GmuwHA=
In-Reply-To: <20091029222335.GJ18464-3s7WtUTddSA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>, Andrew Lutomirski <luto-3s7WtUTddSA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kerne>

On Thu, Oct 29, 2009 at 5:23 PM, Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org> wrote:
> On Thu, Oct 29, 2009 at 03:57:32PM -0400, Andrew Lutomirski wrote:
>>
>> This but is *not* fixed. =A0I just triggered it a few minutes ago by
>> abusing i915 and drm, which caused a panic. =A0This is slightly newe=
r
>> than 2.6.32-rc5, with a couple of i915 bugfixes thrown in.
>
> Andrew, can you test to see if this patch helps?
>
> Thanks,
>
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0- Ted
>
> commit a8836b1d6f92273e001012c7705ae8f4c3d5fb65
> Author: Aneesh Kumar K.V <aneesh.kumar-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
> Date: =A0 Tue Oct 27 15:36:38 2009 +0530
>
> =A0 =A0ext4: discard preallocation during truncate
>
> =A0 =A0We need to make sure when we drop and reacquire the inode's
> =A0 =A0i_data_sem we discard the inode preallocation. Otherwise we
> =A0 =A0could have blocks marked as free in bitmap but still belonging
> =A0 =A0to prealloc space.
>
> =A0 =A0Signed-off-by: Aneesh Kumar K.V <aneesh.kumar-23VcF4HTsmIX0ybBhKVfKQ@public.gmane.org=
om>
>
> diff --git a/fs/ext4/inode.c b/fs/ext4/inode.c
> index 5c5bc5d..a1ef1c3 100644
> --- a/fs/ext4/inode.c
> +++ b/fs/ext4/inode.c
> @@ -209,6 +209,12 @@ static int try_to_extend_transaction(handle_t *h=
andle, struct inode *inode)
> =A0 =A0 =A0 =A0up_write(&EXT4_I(inode)->i_data_sem);
> =A0 =A0 =A0 =A0ret =3D ext4_journal_restart(handle, blocks_for_trunca=
te(inode));
> =A0 =A0 =A0 =A0down_write(&EXT4_I(inode)->i_data_sem);
> + =A0 =A0 =A0 /*
> + =A0 =A0 =A0 =A0* We have dropped i_data_sem. So somebody else could=
 have done
> + =A0 =A0 =A0 =A0* block allocation. So discard the prealloc space cr=
eated as a
> + =A0 =A0 =A0 =A0* part of block allocation
> + =A0 =A0 =A0 =A0*/
> + =A0 =A0 =A0 ext4_discard_preallocations(inode);
>
> =A0 =A0 =A0 =A0return ret;
> =A0}
>


It looks like 2.6.32-rc6 is supposed to fix this bug, but it also
looks like this patch didn't make it in.  Should I still be using this
patch?

Thanks,
Andy
