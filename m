From: Alok Kataria <akataria-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #12409] NULL pointer dereference at get_stats()
Date: Wed, 11 Feb 2009 14:54:16 -0800
Message-ID: <1234392856.25791.27.camel@alok-dev1>
References: <KTnguC9mFUC.A.VNB.TJRdJB@chimera>
	 <cX2gZ6Cy9nC.A.N0B.pJRdJB@chimera>	<20090121161828.GA2739@gambetta>
	 <200902071133.AJJ09378.MOHLFFtOSOVQFJ@I-love.SAKURA.ne.jp>
	 <200902092019.CHE32301.JLFVFMtQSOOFHO@I-love.SAKURA.ne.jp>
Reply-To: akataria-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200902092019.CHE32301.JLFVFMtQSOOFHO-JPay3/Yim36HaxMnTkn67Xf5DAMn2ifp@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Tetsuo Handa <penguin-kernel-JPay3/Yim36HaxMnTkn67Xf5DAMn2ifp@public.gmane.org>
Cc: "frederik.deweerdt-kjvbsxwSFqI@public.gmane.org" <frederik.deweerdt-kjvbsxwSFqI@public.gmane.org>, "rjw-KKrjLPT3xs0@public.gmane.org" <rjw-KKrjLPT3xs0@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Daniel Hecht <dhecht-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org>

Hi Tetsuo,

Thanks for reporting this. Yes i tried it here with a slightly
different .config and i did see the problem. I will try to figure out
what is happening over here, but before doing that let me ask if this
bug is only in the stable series ? 
Do we know for which kernel does the "nolapic" option doesn't hit this
bug ? 

Also, I assume its not present in 2.6.29-rc ?

Thanks,
Alok

On Mon, 2009-02-09 at 03:19 -0800, Tetsuo Handa wrote:
> Hello.
> 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12409
> > Subject		: NULL pointer dereference at get_stats()
> > Submitter	: Tetsuo Handa <penguin-kernel-1yMVhJb1mP/7nzcFbJAaVXf5DAMn2ifp@public.gmane.org>
> > Date		: 2008-12-30 12:53 (21 days old)
> > References	: http://marc.info/?l=linux-kernel&m=123064167008695&w=4
> > Handled-By	: Frederik Deweerdt <frederik.deweerdt-kjvbsxwSFqI@public.gmane.org>
> 
> I made custom initramfs and tested on native environment and KVM and VMware.
> This problem happened only in VMware.
> 
> Alok and Daniel (cc: added), can you reproduce this problem?
> 
> Problem description:
> 
>   Compiling 2.6.28.4 using config at http://I-love.SAKURA.ne.jp/tmp/config-2.6.28-bug
>   and booting with "nolapic" option on x86 machine with 2 CPUs, NULL pointer
>   dereference happens at get_stats() because for_each_possible_cpu() reaches
>   CPU 1 while "nolapic" option should prevent for_each_possible_cpu() from
>   reaching CPU 1.
> 
>   Compiling 2.6.28.4 using config at http://I-love.SAKURA.ne.jp/tmp/config-2.6.28-nobug
>   (all options in "Power management and ACPI options" section disabled)
>   solves this problem.
> 
>   Also, this problem seems to be VMware specific.
>   I couldn't reproduce this problem on native environment and KVM.
> 
> Native environment (no problem):
> 
>   CentOS 5.2 (x86_64) and Ubuntu 8.04 (i386) on ThinkPad X60
> 
> KVM environment (no problem):
> 
>   kvm -kernel /boot/vmlinuz-2.6.28.4 -initrd /boot/init -net none -hda /var/tmp/image.img -vnc xx.xx.xx.xx:0 --append "ro nolapic" -smp 2
>   on Ubuntu 8.04 (i386) on ThinkPad X60
> 
> VMware environment (problematic):
> 
>   Debian Sarge (i386) / CentOS 5.2 (i386) on VMware workstation 6.5.1 (x86_64)
>   on CentOS 5.2 (x86_64) on ThinkPad X60
> 
> Problematic kernel versions:
> 
>   2.6.27.x and 2.6.28.x .
> 
> Regards.
> 
> ----- Custom initramfs -----
> /*
>   gcc -Wall -O3 -static -o init init.c
>   echo init | cpio -o -H newc | gzip -9 > /boot/init
>  */
> #include <sys/mount.h>
> #include <sys/types.h>
> #include <sys/stat.h>
> #include <fcntl.h>
> #include <unistd.h>
> #include <stdio.h>
> #include <string.h>
> 
> int main(int argc, char *argv[]) {
> 	FILE *fp;
> 	char buffer[1024];
> 	memset(buffer, 0, sizeof(buffer));
> 	mkdir("/proc", 0755);
> 	mount("none", "/proc", "proc", 0, NULL);
> 	fp = fopen("/proc/cpuinfo", "r");
> 	while (fgets(buffer, sizeof(buffer) - 1, fp))
> 		if (strstr(buffer, "processor"))
> 			printf("%s", buffer);
> 	fclose(fp);
> 	fp = fopen("/proc/cmdline", "r");
> 	fgets(buffer, sizeof(buffer) - 1, fp);
> 	fclose(fp);
> 	printf("%s", buffer);
> 	fflush(stdout);
> 	if (mkdir("/sys", 0755) || mount("/sys/", "/sys/", "sysfs", 0, NULL)) {
> 		printf("mount failed\n");
> 		while (1)
> 			sleep(1);
> 	}
> 	fp = fopen("/sys/class/net/lo/statistics/rx_packets", "r");
> 	if (!fp) {
> 		printf("open failed\n");
> 		while (1)
> 			sleep(1);
> 	}
> 	while (fgets(buffer, sizeof(buffer) - 1, fp))
> 		;
> 	fclose(fp);
> 	printf("done\n");
> 	while (1)
> 		sleep(1);
> 	return 0;
> }
