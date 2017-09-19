From: Aravind Machiry <machiry-kGDSB/vTt4g@public.gmane.org>
Subject: A Quick Survey on a Patch Propagation Tool
Date: Tue, 19 Sep 2017 13:05:06 -0700
Message-ID: <CANozA0hgsRh=r63fKjs-2T13c9V6eQZS-LQ0d_ZdVCBXQvH8BQ@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ucsb.edu; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=FV42scEpuO7YnLDmPz313uFF1RnMD2w8M8WZJi7yKkA=;
        b=U7gkLL7lZnatWyp4cquHEAE5pbXE574s2M3Lt2d0WyCFsXEDiK7jAhfMoMb+zEOyGX
         jUsXeiEE0rRgFKv4oGdjaG6F9QEHMVAFtMzlFnBWE7uPWY/HlLNQxLcPAQb2Twd8W9AK
         uCVC0jSCXpQ12fIWGUbz/LYtVN1y/47gxrnG2kscUhi8JkFNuXA6lAZYwR4OQXxkG7Bf
         34qgs4ez6Na3DYM+qReTkxbUdBht2lKqo63ZLNn5S8w01dKwhxjaYnMAYsc+zD9wqtRs
         Sceq9dLALJS1sdLoz8+WWj7VWqNqFg54/UOGMs7oelqMXh1lFDuEuu57Y4vGYbR/0IhS
         5glQ==
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Hi Developer and maintainers,

We (researchers for UC Santa Barbara) are developing a tool that will
help in propagating patches.

Please, It would be great if you can fill a 2-question  anonymous
survey: https://goo.gl/forms/5cBSx4axKmc8BEtA3


Would you be interested in a tool, which identifies patches that could
be imported with a minimal or rather no testing?
E.g. Security patches, you can import security patches as they usually
do not affect the functionality.

This tool would use only old source file and the new source file!! No
commit messages, no build setup, nothing!!
Something like: git saferebase?

We actually used the tool on the Linux Main Line repository and it did
identify several (60%) patches which are safe to port or do not affect
the functionality.


This tool could be used to import patches from the main source branch
to your branch without worrying about testing them.

You can also use this tool as a patch monitor, which monitors all
commits to a repository and inform you about patches that do not
affect the functionality or otherwise safe patches.

Note that: This tool is supposed to *help* an expert not to *replace*  one.

Thank You,
Aravind
