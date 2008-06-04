From: "Alexander Beregalov" <a.beregalov@gmail.com>
Subject: Re: WARNING: at net/ipv4/tcp_input.c:2213
Date: Thu, 5 Jun 2008 02:29:24 +0400
Message-ID: <a4423d670806041529q6911f68fq68ee9ed8f8f50139@mail.gmail.com>
References: <a4423d670806041450h17a2d3b1w40ea9ff8550a4b11@mail.gmail.com>
	 <20080604.145244.07802877.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <netdev-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=r9dM1d9MVwRXjG2JzUYATII5LXi2BCTpfJ7+WX9EKZU=;
        b=x2G47cEbrPBTlSJTWh0j+7ZRIllXHAgI4euYRWFxp1Wni4VlIGLiG5+/S+0oM5lz6T
         cebkUeOYwsSfC3yjbxqZmldDloj9JucOjdXjs5I3IrDbzc3e6Gegb9l/slZr96toYEjp
         9N6YQaC40sgi3FYNbTEyCBFV1GLiwVoUgzrS4=
In-Reply-To: <20080604.145244.07802877.davem@davemloft.net>
Content-Disposition: inline
Sender: netdev-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Miller <davem@davemloft.net>
Cc: kernel-testers@vger.kernel.org, netdev@vger.kernel.org

2008/6/5 David Miller <davem@davemloft.net>:
> From: "Alexander Beregalov" <a.beregalov@gmail.com>
> Date: Thu, 5 Jun 2008 01:50:49 +0400
>
>> I have got the following message:
>
> We need to know the exact kernel version you were running, what
> kinds of things the system was doing at the time, etc.
>

It is 2.6.26-rc3-00332-gcbff290.
Host runs as a NFS server and rtorrent client.
That is all network activity on it.
I do not know what system was doing at this time, I have found this
warning only after some time.
