From: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.30-rc4: xfs_fsr hangs
Date: Sat, 2 May 2009 22:35:17 +0400
Message-ID: <a4423d670905021135s4fdbea82t20cf75b61c59dc75@mail.gmail.com>
References: <a4423d670905011333s664115bdh1d72392897567c1d@mail.gmail.com>
	 <20090502101405.GA6145@fancy-poultry.org>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=n807j94Hj4DDs8hXgy/34OMTphtWytj7z+lUrm08vo0=;
        b=sdpEQdSBxyk/6/Zqrz19HOYoic2epOzG1DY5yviad00u8JtjpbeVkCMMU53IUjoFm8
         B7KSNwFiQjjpKZzjHBSsB6fVgF5pgd0QJU+jVd8j5KlEz45XmDbslCMbPkg2A/wOBi08
         zCjk42CfCMrJk1HU3d7o7/IfDrxtgqNT6jyQ8=
In-Reply-To: <20090502101405.GA6145-HjJ2MNWy62to6+H+lsi3Gti2O/JbrIOy@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Heinz Diehl <htd-HjJ2MNWy62to6+H+lsi3Gti2O/JbrIOy@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org

2009/5/2 Heinz Diehl <htd-HjJ2MNWy62to6+H+lsi3Gti2O/JbrIOy@public.gmane.org>:
> On 01.05.2009, Alexander Beregalov wrote:
>
>> # xfs_db -r /dev/sdc1
>> xfs_db> frag
>> actual 23805, ideal 22890, fragmentation factor 3.84%
>> # xfs_fsr -v /dev/sdc1
>> /mnt/c start inode=3D0
>> ino=3D158
>> extents before:3 after:1 DONE ino=3D158
>>
>> =C2=A0then it hangs
>
> I can't confirm this here on my systems:
>
> liesel:~ # uname -a
> Linux liesel 2.6.30-rc4 #1 SMP PREEMPT Sat May 2 11:49:13 CEST 2009 x=
86_64 x86_64 x86_64 GNU/Linux

I have this problem on two x86_32 hosts.
It runs for about a minute and then hangs.
vmstat 1:
 0  1     80  30856  12284 1289452    0    0 16384 16380  224  301  0  =
5  0 95
 0  1     80  32020  12196 1287884    0    0 25984 16380  290  470  0 1=
1  0 89
 0  1     80  30732  12132 1289648    0    0 23168 32760  286  413  0  =
6  0 94
 0  1     80  32220  12128 1287620    0    0 16384 16380  220  303  0  =
8  0 92
 1  0     80 198312  12108 1137956    0    0 14472 14628  223  284  0 1=
0  3 87
 0  0     80 1118144  12108 218216    0    0     0     0   63   33  0 3=
8 62  0
 0  0     80 1118144  12108 218216    0    0     0     0   24   26  0  =
0 100  0
 0  0     80 1118144  12108 218216    0    0     0     0   36   28  0  =
1 99  0
 0  0     80 1118144  12108 218216    0    0     0     0   36   32  1  =
1 98  0
 0  0     80 1118144  12108 218216    0    0     0     0   78   66  0  =
1 99  0
