From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #15805] reiserfs locking
Date: Sat, 10 Jul 2010 10:24:28 -0700
Message-ID: <AANLkTimvtvrQuIPCZwzPNgVqGWTecay5RktRzBgcf4fu@mail.gmail.com>
References: <xkNyyYrLiTN.A.s_G.7p7NMB@chimera>
	<Hc02ROPrUsG.A.vs.ls7NMB@chimera>
	<20100710014504.GC5269@nowhere>
	<20100710070650.GA16248@elte.hu>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100710070650.GA16248-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Alexander Viro <viro-rfM+Q5joDG/XmaaqVzeoHQ@public.gmane.org>

On Sat, Jul 10, 2010 at 12:06 AM, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:
>
> Since it's a reproducible deadlock maybe the fix should go upstream faster
> than v2.6.36?

As far as I know, it's only a lockdep warning, not an actual deadlock.
And it's in a class of lockdep warnings that we've had for a long
time, and has never actually triggered as a read deadlock afaik.

I also don't think it's a new warning - or at least I don't see why it
would have started triggering after 2.6.34.

My preferred fix in many ways would be to make the locking in the VM
layer less incestuous. For example, we could fairly easily move the
final

  if (vma->vm_file)
    fput(vma->vm_file);

outside the actual mmap_sem lock (well, "fairly easily" here means
keeping the list of free'd vmas around for longer, probably in the
task_struct thing, and then replacing all the
"up_write(&mm->mmap_sem)" things with a "unlock_mm(mm)" looking
something like

  static void unlock_mm(struct mm_struct *mm)
  {
    struct vm_area_struct *vma_list = current->vma_to_free;
    if (vma_list)
      current->vma_to_free = NULL;
    up_write(&mm->mmap_sem);
    while (vma_list) {
      struct vm_area_struct *vma = vma_list;
      vma_list = vma_list->next;
      fput(vma_list->vm_file);
      kmem_cache_free(vm_area_cachep, vma);
    }
  }

which would fairly trivially delay the actual 'fput()' to after we
hold no locks.

I dunno if it's really worth it, but it doesn't look all that
complicated, and it would avoid at least _some_ lock dependencies.

                     Linus

                     Linus
