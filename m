From: Peter Zijlstra <a.p.zijlstra@chello.nl>
Subject: Re: [Bug #12465] KVM guests stalling on 2.6.28 (bisected)
Date: Mon, 26 Jan 2009 12:35:05 +0100
Message-ID: <1232969705.4863.46.camel@laptop>
References: <cX2gZ6Cy9nC.A.4dB.bJRdJB@chimera>
	 <1232410363.4768.21.camel@kulgan.wumi.org.au>
	 <20090120113546.GA26571@elte.hu>
	 <1232455343.4895.4.camel@kulgan.wumi.org.au>
	 <20090120125652.GA1457@elte.hu> <20090120130714.GA11048@elte.hu>
	 <alpine.DEB.1.10.0901200957220.2681@gandalf.stny.rr.com>
	 <49760E2D.2060109@redhat.com>
	 <1232547932.4895.119.camel@kulgan.wumi.org.au>
	 <49773275.3020203@redhat.com>  <20090121151820.GA23813@elte.hu>
	 <1232963730.4921.12.camel@kulgan.wumi.org.au>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753173AbZAZLgV@vger.kernel.org>
In-Reply-To: <1232963730.4921.12.camel@kulgan.wumi.org.au>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Kevin Shanahan <kmshanah@ucwb.org.au>
Cc: Ingo Molnar <mingo@elte.hu>, Avi Kivity <avi@redhat.com>, Steven Rostedt <rostedt@goodmis.org>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Mike Galbraith <efault@gmx.de>, =?ISO-8859-1?Q?Fr=E9d=E9ric?= Weisbecker <fweisbec@gmail.com>, bugme-daemon@bugzilla.kernel.org

On Mon, 2009-01-26 at 20:25 +1030, Kevin Shanahan wrote:

> Just carrying out the steps was okay, but I don't really know what I'=
m
> looking at. I've uploaded the trace here (about 10 seconds worth, I
> think):
>=20
>   http://disenchant.net/tmp/bug-12465/trace-1/
>=20
> The guest being pinged is process 4353:
>=20
> kmshanah@flexo:~$ pstree -p 4353
> qemu-system-x86(4353)=E2=94=80=E2=94=AC=E2=94=80{qemu-system-x86}(435=
4)
>                       =E2=94=9C=E2=94=80{qemu-system-x86}(4355)
>                       =E2=94=94=E2=94=80{qemu-system-x86}(4772)
>=20
> I guess the larger overhead/duration values are what we are looking f=
or,
> e.g.:
>=20
> kmshanah@flexo:~$ bzgrep -E '[[:digit:]]{6,}' trace.txt.bz2=20
>  0)   ksoftir-4    | ! 3010470 us |  }
>  0)  qemu-sy-4354  | ! 250406.2 us |    }
>  0)  qemu-sy-4354  | ! 250407.0 us |  }
>  0)  qemu-sy-4354  | ! 362946.3 us |    }
>  0)  qemu-sy-4354  | ! 362947.0 us |  }
>  0)  qemu-sy-4177  | ! 780480.3 us |  }
>  0)  qemu-sy-4354  | ! 117685.7 us |    }
>  0)  qemu-sy-4354  | ! 117686.5 us |  }
>=20
> That ksoftirqd value is a bit strange (> 3 seconds, or is the formatt=
ing
> wrong?). I guess I still need some guidance to know what I'm looking =
at
> with this trace and/or what to do next.

What happens is that it gets preempted a few times while running a
particular function, say do_softirqd(), or kvm_arch_vcpu_ioctl_run().

Now, when this function ends, it prints the wall-time delay between
start and end of that function, instead of the task-time delay.

So by having been preempted several times, that gets inflated.

That said, the output is slightly 'buggy' in that is seems to miss
context switches at times:

 0)  qemu-sy-4339  |               |        schedule() {
 0)  qemu-sy-4131  | ! 6750.369 us |        }

I also find it very hard to attribute all time:

 0)  qemu-sy-4354  |               |  kvm_vcpu_ioctl() {
 0)  qemu-sy-4354  |               |    kvm_arch_vcpu_ioctl_run() {
 0)  qemu-sy-4354  |               |      kvm_arch_vcpu_load() {
 0)  qemu-sy-4354  |               |        kvm_write_guest_time() {
 0)  qemu-sy-4354  |   0.289 us    |        }
 0)  qemu-sy-4354  |   0.956 us    |      }
 0)  qemu-sy-4354  |               |      kvm_inject_pending_timer_irqs=
() {
 0)  qemu-sy-4354  |               |        kvm_inject_apic_timer_irqs(=
) {
 0)  qemu-sy-4354  |   0.295 us    |        }
 0)  qemu-sy-4354  |               |        kvm_inject_pit_timer_irqs()=
 {
 0)  qemu-sy-4354  |   0.304 us    |        }
 0)  qemu-sy-4354  |   1.488 us    |      }
 0)  qemu-sy-4354  |               |      kvm_lapic_enabled() {
 0)  qemu-sy-4354  |   0.294 us    |      }
 0)  qemu-sy-4354  |               |      kvm_lapic_find_highest_irr() =
{
 0)  qemu-sy-4354  |   0.307 us    |      }
 0)  qemu-sy-4354  |               |      kvm_cpu_has_interrupt() {
 0)  qemu-sy-4354  |               |        kvm_apic_has_interrupt() {
 0)  qemu-sy-4354  |   0.325 us    |        }
 0)  qemu-sy-4354  |               |        kvm_apic_accept_pic_intr() =
{
 0)  qemu-sy-4354  |   0.298 us    |        }
 0)  qemu-sy-4354  |   1.521 us    |      }
 0)  qemu-sy-4354  |               |      kvm_lapic_sync_to_vapic() {
 0)  qemu-sy-4354  |   0.295 us    |      }
 0)  qemu-sy-4354  |               |      __wake_up() {
 0)  qemu-sy-4354  |               |        __wake_up_common() {
 0)  qemu-sy-4354  |               |          autoremove_wake_function(=
) {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |               |                check_preempt_wakeu=
p() {
 0)  qemu-sy-4354  |               |                  wakeup_preempt_en=
tity() {
 0)  qemu-sy-4354  |   0.309 us    |                  }
 0)  qemu-sy-4354  |               |                  resched_task() {
 0)  qemu-sy-4354  |   0.324 us    |                  }
 0)  qemu-sy-4354  |   1.614 us    |                }
 0)  qemu-sy-4354  |   2.934 us    |              }
 0)  qemu-sy-4354  |   3.529 us    |            }
 0)  qemu-sy-4354  |   4.118 us    |          }
 0)  qemu-sy-4354  |   4.743 us    |        }
 0)  qemu-sy-4354  |   5.432 us    |      }
 0)  qemu-sy-4354  |               |      __wake_up() {
 0)  qemu-sy-4354  |               |        __wake_up_common() {
 0)  qemu-sy-4354  |               |          autoremove_wake_function(=
) {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |               |                check_preempt_wakeu=
p() {
 0)  qemu-sy-4354  =3D>  qemu-sy-4294
 0)  qemu-sy-4237  =3D>  qemu-sy-4354
 0)  qemu-sy-4354  |   5.500 us    |      }
 0)  qemu-sy-4354  |               |      __wake_up() {
 0)  qemu-sy-4354  |               |        __wake_up_common() {
 0)  qemu-sy-4354  |               |          pollwake() {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |               |                check_preempt_wakeu=
p() {
 0)  qemu-sy-4354  |   0.316 us    |                }
 0)  qemu-sy-4354  |   1.250 us    |              }
 0)  qemu-sy-4354  |   1.834 us    |            }
 0)  qemu-sy-4354  |   2.434 us    |          }
 0)  qemu-sy-4354  |               |          pollwake() {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |   0.418 us    |              }
 0)  qemu-sy-4354  |   1.001 us    |            }
 0)  qemu-sy-4354  |   1.608 us    |          }
 0)  qemu-sy-4354  |   4.987 us    |        }
 0)  qemu-sy-4354  |   5.597 us    |      }
 0)  qemu-sy-4354  |               |      __wake_up() {
 0)  qemu-sy-4354  |               |        __wake_up_common() {
 0)  qemu-sy-4354  |               |          pollwake() {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |               |                check_preempt_wakeu=
p() {
 0)  qemu-sy-4354  |   0.325 us    |                }
 0)  qemu-sy-4354  |   1.247 us    |              }
 0)  qemu-sy-4354  |   1.831 us    |            }
 0)  qemu-sy-4354  |   2.435 us    |          }
 0)  qemu-sy-4354  |               |          pollwake() {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |   0.415 us    |              }
 0)  qemu-sy-4354  |   0.995 us    |            }
 0)  qemu-sy-4354  |   1.587 us    |          }
 0)  qemu-sy-4354  |   5.026 us    |        }
 0)  qemu-sy-4354  |   5.639 us    |      }
 0)  qemu-sy-4354  |               |      __wake_up() {
 0)  qemu-sy-4354  |               |        __wake_up_common() {
 0)  qemu-sy-4354  |               |          pollwake() {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |               |                check_preempt_wakeu=
p() {
 0)  qemu-sy-4354  |   0.313 us    |                }
 0)  qemu-sy-4354  |   1.331 us    |              }
 0)  qemu-sy-4354  |   1.903 us    |            }
 0)  qemu-sy-4354  |   2.507 us    |          }
 0)  qemu-sy-4354  |               |          pollwake() {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |   0.415 us    |              }
 0)  qemu-sy-4354  |   0.998 us    |            }
 0)  qemu-sy-4354  |   1.596 us    |          }
 0)  qemu-sy-4354  |   5.017 us    |        }
 0)  qemu-sy-4354  |   5.630 us    |      }
 0)  qemu-sy-4354  |               |      __wake_up() {
 0)  qemu-sy-4354  |               |        __wake_up_common() {
 0)  qemu-sy-4354  |               |          pollwake() {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |               |                check_preempt_wakeu=
p() {
 0)  qemu-sy-4354  |   0.318 us    |                }
 0)  qemu-sy-4354  |   1.275 us    |              }
 0)  qemu-sy-4354  |   1.860 us    |            }
 0)  qemu-sy-4354  |   2.474 us    |          }
 0)  qemu-sy-4354  |               |          pollwake() {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |   0.406 us    |              }
 0)  qemu-sy-4354  |   0.989 us    |            }
 0)  qemu-sy-4354  |   1.581 us    |          }
 0)  qemu-sy-4354  |   4.953 us    |        }
 0)  qemu-sy-4354  |   5.567 us    |      }
 0)  qemu-sy-4354  |               |      __wake_up() {
 0)  qemu-sy-4354  |               |        __wake_up_common() {
 0)  qemu-sy-4354  |               |          pollwake() {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |               |                check_preempt_wakeu=
p() {
 0)  qemu-sy-4354  |   0.313 us    |                }
 0)  qemu-sy-4354  |   2.645 us    |              }
 0)  qemu-sy-4354  |   3.219 us    |            }
 0)  qemu-sy-4354  |   3.824 us    |          }
 0)  qemu-sy-4354  |               |          pollwake() {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |   0.396 us    |              }
 0)  qemu-sy-4354  |   0.968 us    |            }
 0)  qemu-sy-4354  |   1.557 us    |          }
 0)  qemu-sy-4354  |   6.390 us    |        }
 0)  qemu-sy-4354  |   7.004 us    |      }
 0)  qemu-sy-4354  |               |      __wake_up() {
 0)  qemu-sy-4354  |               |        __wake_up_common() {
 0)  qemu-sy-4354  |               |          pollwake() {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |               |                check_preempt_wakeu=
p() {
 0)  qemu-sy-4354  |   0.310 us    |                }
 0)  qemu-sy-4354  |   1.160 us    |              }
 0)  qemu-sy-4354  |   1.731 us    |            }
 0)  qemu-sy-4354  |   2.330 us    |          }
 0)  qemu-sy-4354  |               |          pollwake() {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |   0.397 us    |              }
 0)  qemu-sy-4354  |   0.965 us    |            }
 0)  qemu-sy-4354  |   1.554 us    |          }
 0)  qemu-sy-4354  |   4.768 us    |        }
 0)  qemu-sy-4354  |   5.383 us    |      }
 0)  qemu-sy-4354  |               |      __wake_up() {
 0)  qemu-sy-4354  |               |        __wake_up_common() {
 0)  qemu-sy-4354  |               |          pollwake() {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |               |                check_preempt_wakeu=
p() {
 0)  qemu-sy-4354  |   0.307 us    |                }
 0)  qemu-sy-4354  |   1.208 us    |              }
 0)  qemu-sy-4354  |   1.777 us    |            }
 0)  qemu-sy-4354  |   2.377 us    |          }
 0)  qemu-sy-4354  |               |          pollwake() {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |   0.394 us    |              }
 0)  qemu-sy-4354  |   0.964 us    |            }
 0)  qemu-sy-4354  |   1.554 us    |          }
 0)  qemu-sy-4354  |   4.855 us    |        }
 0)  qemu-sy-4354  |   5.482 us    |      }
 0)  qemu-sy-4354  |               |      __wake_up() {
 0)  qemu-sy-4354  |               |        __wake_up_common() {
 0)  qemu-sy-4354  |               |          pollwake() {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |               |                check_preempt_wakeu=
p() {
 0)  qemu-sy-4354  |   0.307 us    |                }
 0)  qemu-sy-4354  |   1.193 us    |              }
 0)  qemu-sy-4354  |   1.765 us    |            }
 0)  qemu-sy-4354  |   2.368 us    |          }
 0)  qemu-sy-4354  |               |          pollwake() {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |   0.394 us    |              }
 0)  qemu-sy-4354  |   0.974 us    |            }
 0)  qemu-sy-4354  |   1.560 us    |          }
 0)  qemu-sy-4354  |   4.831 us    |        }
 0)  qemu-sy-4354  |   5.461 us    |      }
 0)  qemu-sy-4354  |               |      __wake_up() {
 0)  qemu-sy-4354  |               |        __wake_up_common() {
 0)  qemu-sy-4354  |               |          pollwake() {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |               |                check_preempt_wakeu=
p() {
 0)  qemu-sy-4354  |   0.318 us    |                }
 0)  qemu-sy-4354  |   1.175 us    |              }
 0)  qemu-sy-4354  |   1.747 us    |            }
 0)  qemu-sy-4354  |   2.344 us    |          }
 0)  qemu-sy-4354  |               |          pollwake() {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |   2.029 us    |              }
 0)  qemu-sy-4354  |   2.597 us    |            }
 0)  qemu-sy-4354  |   3.186 us    |          }
 0)  qemu-sy-4354  |   6.430 us    |        }
 0)  qemu-sy-4354  |   7.046 us    |      }
 0)  qemu-sy-4354  |               |      __wake_up() {
 0)  qemu-sy-4354  |               |        __wake_up_common() {
 0)  qemu-sy-4354  |               |          pollwake() {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |               |                check_preempt_wakeu=
p() {
 0)  qemu-sy-4354  |   0.310 us    |                }
 0)  qemu-sy-4354  |   1.199 us    |              }
 0)  qemu-sy-4354  |   1.780 us    |            }
 0)  qemu-sy-4354  |   2.378 us    |          }
 0)  qemu-sy-4354  |               |          pollwake() {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |   0.397 us    |              }
 0)  qemu-sy-4354  |   0.968 us    |            }
 0)  qemu-sy-4354  |   1.560 us    |          }
 0)  qemu-sy-4354  |   4.933 us    |        }
 0)  qemu-sy-4354  |   5.549 us    |      }
 0)  qemu-sy-4354  |               |      __wake_up() {
 0)  qemu-sy-4354  |               |        __wake_up_common() {
 0)  qemu-sy-4354  |               |          autoremove_wake_function(=
) {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |               |                check_preempt_wakeu=
p() {
 0)  qemu-sy-4354  |   0.316 us    |                }
 0)  qemu-sy-4354  |   1.202 us    |              }
 0)  qemu-sy-4354  |   1.792 us    |            }
 0)  qemu-sy-4354  |   2.357 us    |          }
 0)  qemu-sy-4354  |   2.973 us    |        }
 0)  qemu-sy-4354  |   3.607 us    |      }
 0)  qemu-sy-4354  |               |      __wake_up() {
 0)  qemu-sy-4354  |               |        __wake_up_common() {
 0)  qemu-sy-4354  |               |          pollwake() {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |               |                check_preempt_wakeu=
p() {
 0)  qemu-sy-4354  |   0.304 us    |                }
 0)  qemu-sy-4354  |   1.149 us    |              }
 0)  qemu-sy-4354  |   1.713 us    |            }
 0)  qemu-sy-4354  |   2.309 us    |          }
 0)  qemu-sy-4354  |               |          pollwake() {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |   0.405 us    |              }
 0)  qemu-sy-4354  |   0.971 us    |            }
 0)  qemu-sy-4354  |   1.569 us    |          }
 0)  qemu-sy-4354  |   4.800 us    |        }
 0)  qemu-sy-4354  |   5.408 us    |      }
 0)  qemu-sy-4354  |               |      __wake_up() {
 0)  qemu-sy-4354  |               |        __wake_up_common() {
 0)  qemu-sy-4354  |               |          pollwake() {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |               |                check_preempt_wakeu=
p() {
 0)  qemu-sy-4354  |   0.298 us    |                }
 0)  qemu-sy-4354  |   1.127 us    |              }
 0)  qemu-sy-4354  |   1.695 us    |            }
 0)  qemu-sy-4354  |   2.291 us    |          }
 0)  qemu-sy-4354  |               |          pollwake() {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |   0.403 us    |              }
 0)  qemu-sy-4354  |   0.974 us    |            }
 0)  qemu-sy-4354  |   1.575 us    |          }
 0)  qemu-sy-4354  |   4.888 us    |        }
 0)  qemu-sy-4354  |   5.482 us    |      }
 0)  qemu-sy-4354  |               |      __wake_up() {
 0)  qemu-sy-4354  |               |        __wake_up_common() {
 0)  qemu-sy-4354  |               |          autoremove_wake_function(=
) {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |               |                check_preempt_wakeu=
p() {
 0)  qemu-sy-4354  |   0.303 us    |                }
 0)  qemu-sy-4354  |   2.428 us    |              }
 0)  qemu-sy-4354  |   2.991 us    |            }
 0)  qemu-sy-4354  |   3.559 us    |          }
 0)  qemu-sy-4354  |   4.157 us    |        }
 0)  qemu-sy-4354  |   4.752 us    |      }
 0)  qemu-sy-4354  |               |      __wake_up() {
 0)  qemu-sy-4354  |               |        __wake_up_common() {
 0)  qemu-sy-4354  |               |          pollwake() {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |               |                check_preempt_wakeu=
p() {
 0)  qemu-sy-4354  |   0.313 us    |                }
 0)  qemu-sy-4354  |   1.437 us    |              }
 0)  qemu-sy-4354  |   2.002 us    |            }
 0)  qemu-sy-4354  |   2.594 us    |          }
 0)  qemu-sy-4354  |               |          pollwake() {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |   0.418 us    |              }
 0)  qemu-sy-4354  |   1.016 us    |            }
 0)  qemu-sy-4354  |   1.587 us    |          }
 0)  qemu-sy-4354  |   5.077 us    |        }
 0)  qemu-sy-4354  |   5.699 us    |      }
 0)  qemu-sy-4354  |               |      __wake_up() {
 0)  qemu-sy-4354  |               |        __wake_up_common() {
 0)  qemu-sy-4354  |               |          pollwake() {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |               |                check_preempt_wakeu=
p() {
 0)  qemu-sy-4354  |   0.309 us    |                }
 0)  qemu-sy-4354  |   1.314 us    |              }
 0)  qemu-sy-4354  |   1.884 us    |            }
 0)  qemu-sy-4354  |   2.480 us    |          }
 0)  qemu-sy-4354  |               |          pollwake() {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |   0.405 us    |              }
 0)  qemu-sy-4354  |   0.977 us    |            }
 0)  qemu-sy-4354  |   1.560 us    |          }
 0)  qemu-sy-4354  |   4.962 us    |        }
 0)  qemu-sy-4354  |   5.591 us    |      }
 0)  qemu-sy-4354  |               |      __wake_up() {
 0)  qemu-sy-4354  |               |        __wake_up_common() {
 0)  qemu-sy-4354  |               |          autoremove_wake_function(=
) {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |               |                check_preempt_wakeu=
p() {
 0)  qemu-sy-4354  |   0.304 us    |                }
 0)  qemu-sy-4354  |   1.199 us    |              }
 0)  qemu-sy-4354  |   1.765 us    |            }
 0)  qemu-sy-4354  |   2.330 us    |          }
 0)  qemu-sy-4354  |   2.952 us    |        }
 0)  qemu-sy-4354  |   3.547 us    |      }
 0)  qemu-sy-4354  |               |      __wake_up() {
 0)  qemu-sy-4354  |               |        __wake_up_common() {
 0)  qemu-sy-4354  |               |          autoremove_wake_function(=
) {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |               |                check_preempt_wakeu=
p() {
 0)  qemu-sy-4354  |   0.322 us    |                }
 0)  qemu-sy-4354  |   1.278 us    |              }
 0)  qemu-sy-4354  |   1.839 us    |            }
 0)  qemu-sy-4354  |   2.402 us    |          }
 0)  qemu-sy-4354  |   3.032 us    |        }
 0)  qemu-sy-4354  |   3.658 us    |      }
 0)  qemu-sy-4354  |               |      __wake_up() {
 0)  qemu-sy-4354  |               |        __wake_up_common() {
 0)  qemu-sy-4354  |               |          autoremove_wake_function(=
) {
 0)  qemu-sy-4354  |               |            default_wake_function()=
 {
 0)  qemu-sy-4354  |               |              try_to_wake_up() {
 0)  qemu-sy-4354  |               |                check_preempt_wakeu=
p() {
 0)  qemu-sy-4354  |   0.303 us    |                }
 0)  qemu-sy-4354  |   1.208 us    |              }
 0)  qemu-sy-4354  |   1.759 us    |            }
 0)  qemu-sy-4354  |   2.341 us    |          }
 0)  qemu-sy-4354  |   2.949 us    |        }
 0)  qemu-sy-4354  |   3.556 us    |      }
 0)  qemu-sy-4354  |               |      scheduler_tick() {
 0)  qemu-sy-4354  |               |        sched_slice() {
 0)  qemu-sy-4354  |   0.342 us    |        }
 0)  qemu-sy-4354  |   3.222 us    |      }
 0)  qemu-sy-4354  |               |      wake_up_process() {
 0)  qemu-sy-4354  |               |        try_to_wake_up() {
 0)  qemu-sy-4354  |               |          check_preempt_wakeup() {
 0)  qemu-sy-4354  |   0.343 us    |          }
 0)  qemu-sy-4354  |   1.331 us    |        }
 0)  qemu-sy-4354  |   1.915 us    |      }
 0)  qemu-sy-4354  |               |      kvm_lapic_sync_from_vapic() {
 0)  qemu-sy-4354  |   0.294 us    |      }
 0)  qemu-sy-4354  |               |      kvm_handle_exit() {
 0)  qemu-sy-4354  |   0.457 us    |      }
 0)  qemu-sy-4354  |               |      kvm_resched() {
 0)  qemu-sy-4354  |               |        _cond_resched() {
 0)  qemu-sy-4354  |               |          __cond_resched() {
 0)  qemu-sy-4354  |               |            schedule() {
 0)  qemu-sy-4354  |               |              wakeup_preempt_entity=
() {
 0)  qemu-sy-4354  |   0.294 us    |              }
 0)  qemu-sy-4354  |               |              kvm_sched_out() {
 0)  qemu-sy-4354  |               |                kvm_arch_vcpu_put()=
 {
 0)  qemu-sy-4354  |   0.592 us    |                }
 0)  qemu-sy-4354  |   1.218 us    |              }
 0)  qemu-sy-4354  =3D>   kipmi0-496
 0)  qemu-sy-4213  =3D>  qemu-sy-4354
 0)  qemu-sy-4354  |               |              kvm_sched_in() {
 0)  qemu-sy-4354  |               |                kvm_arch_vcpu_load(=
) {
 0)  qemu-sy-4354  |               |                  kvm_write_guest_t=
ime() {
 0)  qemu-sy-4354  |   0.298 us    |                  }
 0)  qemu-sy-4354  |   1.070 us    |                }
 0)  qemu-sy-4354  |   1.665 us    |              }
 0)  qemu-sy-4354  | ! 9172.159 us |            }
 0)  qemu-sy-4354  | ! 9172.793 us |          }
 0)  qemu-sy-4354  | ! 9173.422 us |        }
 0)  qemu-sy-4354  | ! 9174.032 us |      }
 0)  qemu-sy-4354  |               |      kvm_inject_pending_timer_irqs=
() {
 0)  qemu-sy-4354  |               |        kvm_inject_apic_timer_irqs(=
) {
 0)  qemu-sy-4354  |               |          kvm_vcpu_kick() {
 0)  qemu-sy-4354  |   0.291 us    |          }
 0)  qemu-sy-4354  |   1.151 us    |        }
 0)  qemu-sy-4354  |               |        kvm_inject_pit_timer_irqs()=
 {
 0)  qemu-sy-4354  |   0.352 us    |        }
 0)  qemu-sy-4354  |   2.429 us    |      }
 0)  qemu-sy-4354  |               |      kvm_lapic_enabled() {
 0)  qemu-sy-4354  |   0.291 us    |      }
 0)  qemu-sy-4354  |               |      kvm_lapic_find_highest_irr() =
{
 0)  qemu-sy-4354  |   0.312 us    |      }
 0)  qemu-sy-4354  |               |      kvm_lapic_get_cr8() {
 0)  qemu-sy-4354  |   0.298 us    |      }
 0)  qemu-sy-4354  |               |      kvm_cpu_has_interrupt() {
 0)  qemu-sy-4354  |               |        kvm_apic_has_interrupt() {
 0)  qemu-sy-4354  |   0.385 us    |        }
 0)  qemu-sy-4354  |   0.980 us    |      }
 0)  qemu-sy-4354  |               |      kvm_lapic_sync_to_vapic() {
 0)  qemu-sy-4354  |   0.295 us    |      }
 0)  qemu-sy-4354  |               |      kvm_lapic_sync_from_vapic() {
 0)  qemu-sy-4354  |   0.331 us    |      }
 0)  qemu-sy-4354  |               |      kvm_handle_exit() {
 0)  qemu-sy-4354  |   0.568 us    |      }
 0)  qemu-sy-4354  |               |      kvm_inject_pending_timer_irqs=
() {
 0)  qemu-sy-4354  |               |        kvm_inject_apic_timer_irqs(=
) {
 0)  qemu-sy-4354  |               |          kvm_vcpu_kick() {
 0)  qemu-sy-4354  |   0.295 us    |          }
 0)  qemu-sy-4354  |   0.959 us    |        }
 0)  qemu-sy-4354  |               |        kvm_inject_pit_timer_irqs()=
 {
 0)  qemu-sy-4354  |   0.313 us    |        }
 0)  qemu-sy-4354  |   2.170 us    |      }
 0)  qemu-sy-4354  |               |      kvm_lapic_enabled() {
 0)  qemu-sy-4354  |   0.310 us    |      }
 0)  qemu-sy-4354  |               |      kvm_lapic_find_highest_irr() =
{
 0)  qemu-sy-4354  |   0.295 us    |      }
 0)  qemu-sy-4354  |               |      kvm_lapic_get_cr8() {
 0)  qemu-sy-4354  |   0.295 us    |      }
 0)  qemu-sy-4354  |               |      kvm_cpu_has_interrupt() {
 0)  qemu-sy-4354  |               |        kvm_apic_has_interrupt() {
 0)  qemu-sy-4354  |   0.325 us    |        }
 0)  qemu-sy-4354  |   0.938 us    |      }
 0)  qemu-sy-4354  |               |      kvm_cpu_get_interrupt() {
 0)  qemu-sy-4354  |               |        kvm_get_apic_interrupt() {
 0)  qemu-sy-4354  |               |          kvm_apic_has_interrupt() =
{
 0)  qemu-sy-4354  |   0.322 us    |          }
 0)  qemu-sy-4354  |   0.944 us    |        }
 0)  qemu-sy-4354  |   1.542 us    |      }
 0)  qemu-sy-4354  |               |      kvm_timer_intr_post() {
 0)  qemu-sy-4354  |               |        kvm_apic_timer_intr_post() =
{
 0)  qemu-sy-4354  |   0.309 us    |        }
 0)  qemu-sy-4354  |   2.059 us    |      }
 0)  qemu-sy-4354  |               |      kvm_cpu_has_interrupt() {
 0)  qemu-sy-4354  |               |        kvm_apic_has_interrupt() {
 0)  qemu-sy-4354  |   0.340 us    |        }
 0)  qemu-sy-4354  |               |        kvm_apic_accept_pic_intr() =
{
 0)  qemu-sy-4354  |   0.313 us    |        }
 0)  qemu-sy-4354  |   1.560 us    |      }
 0)  qemu-sy-4354  |               |      kvm_lapic_sync_to_vapic() {
 0)  qemu-sy-4354  |   0.298 us    |      }
 0)  qemu-sy-4354  |               |      kvm_lapic_sync_from_vapic() {
 0)  qemu-sy-4354  |   0.319 us    |      }
 0)  qemu-sy-4354  |               |      kvm_handle_exit() {
 0)  qemu-sy-4354  |               |        kvm_mmu_page_fault() {
 0)  qemu-sy-4354  |               |          kvm_read_guest() {
 0)  qemu-sy-4354  |               |            kvm_read_guest_page() {
 0)  qemu-sy-4354  |   0.764 us    |            }
 0)  qemu-sy-4354  |   1.377 us    |          }
 0)  qemu-sy-4354  |               |          kvm_read_guest() {
 0)  qemu-sy-4354  |               |            kvm_read_guest_page() {
 0)  qemu-sy-4354  |   0.499 us    |            }
 0)  qemu-sy-4354  |   1.088 us    |          }
 0)  qemu-sy-4354  |               |          kvm_release_pfn_clean() {
 0)  qemu-sy-4354  |   0.349 us    |          }
 0)  qemu-sy-4354  |               |          kvm_read_guest() {
 0)  qemu-sy-4354  |               |            kvm_read_guest_page() {
 0)  qemu-sy-4354  |   0.451 us    |            }
 0)  qemu-sy-4354  |   1.046 us    |          }
 0)  qemu-sy-4354  |               |          kvm_read_guest() {
 0)  qemu-sy-4354  |               |            kvm_read_guest_page() {
 0)  qemu-sy-4354  |   0.361 us    |            }
 0)  qemu-sy-4354  |   0.956 us    |          }
 0)  qemu-sy-4354  |               |          kvm_read_guest() {
 0)  qemu-sy-4354  |               |            kvm_read_guest_page() {
 0)  qemu-sy-4354  |   0.381 us    |            }
 0)  qemu-sy-4354  |   0.974 us    |          }
 0)  qemu-sy-4354  |               |          kvm_read_guest() {
 0)  qemu-sy-4354  |               |            kvm_read_guest_page() {
 0)  qemu-sy-4354  |   0.345 us    |            }
 0)  qemu-sy-4354  |   0.959 us    |          }
 0)  qemu-sy-4354  |               |          kvm_read_guest() {
 0)  qemu-sy-4354  |               |            kvm_read_guest_page() {
 0)  qemu-sy-4354  |   0.364 us    |            }
 0)  qemu-sy-4354  |   0.965 us    |          }
 0)  qemu-sy-4354  |               |          kvm_ioapic_update_eoi() {
 0)  qemu-sy-4354  |   0.358 us    |          }
 0)  qemu-sy-4354  | + 13.782 us   |        }
 0)  qemu-sy-4354  | + 14.681 us   |      }
 0)  qemu-sy-4354  |               |      kvm_inject_pending_timer_irqs=
() {
 0)  qemu-sy-4354  |               |        kvm_inject_apic_timer_irqs(=
) {
 0)  qemu-sy-4354  |               |          kvm_vcpu_kick() {
 0)  qemu-sy-4354  |   0.291 us    |          }
 0)  qemu-sy-4354  |   0.953 us    |        }
 0)  qemu-sy-4354  |               |        kvm_inject_pit_timer_irqs()=
 {
 0)  qemu-sy-4354  |   0.304 us    |        }
 0)  qemu-sy-4354  |   2.150 us    |      }
 0)  qemu-sy-4354  |               |      kvm_lapic_enabled() {
 0)  qemu-sy-4354  |   0.304 us    |      }
 0)  qemu-sy-4354  |               |      kvm_lapic_find_highest_irr() =
{
 0)  qemu-sy-4354  |   0.295 us    |      }
 0)  qemu-sy-4354  |               |      kvm_lapic_get_cr8() {
 0)  qemu-sy-4354  |   0.309 us    |      }
 0)  qemu-sy-4354  |               |      kvm_cpu_has_interrupt() {
 0)  qemu-sy-4354  |               |        kvm_apic_has_interrupt() {
 0)  qemu-sy-4354  |   0.315 us    |        }
 0)  qemu-sy-4354  |   0.914 us    |      }
 0)  qemu-sy-4354  |               |      kvm_lapic_sync_to_vapic() {
 0)  qemu-sy-4354  |   0.297 us    |      }
 0)  qemu-sy-4354  |               |      kvm_lapic_sync_from_vapic() {
 0)  qemu-sy-4354  |   0.318 us    |      }
 0)  qemu-sy-4354  |               |      kvm_handle_exit() {
 0)  qemu-sy-4354  |               |        kvm_emulate_pio() {
 0)  qemu-sy-4354  |               |          kvm_io_bus_find_dev() {
 0)  qemu-sy-4354  |   0.406 us    |          }
 0)  qemu-sy-4354  |   1.115 us    |        }
 0)  qemu-sy-4354  |   2.026 us    |      }
 0)  qemu-sy-4354  |               |      kvm_get_cr8() {
 0)  qemu-sy-4354  |               |        kvm_lapic_get_cr8() {
 0)  qemu-sy-4354  |   0.292 us    |        }
 0)  qemu-sy-4354  |   2.257 us    |      }
 0)  qemu-sy-4354  |               |      kvm_arch_vcpu_put() {
 0)  qemu-sy-4354  |   0.574 us    |      }
 0)  qemu-sy-4354  | ! 250406.2 us |    }
 0)  qemu-sy-4354  | ! 250407.0 us |  }


There's 2 preemptions in there, accounting for perhaps 15ms
Then there's about 20 __wake_up()s in there (wth do those come from?)
accounting for 5ms each, totaling 100ms.

There's a scheduler_tick() in there but no IRQ entry ?!

All in all its very hard to get to the total of 250ms.

I suspect __vcpu_run() and vcpu_enter_guest() get inlined, and we might
just be looking at time spend in the guest... bit hard to tell for me,
as this is the first time ever I looked at all this kvm code.


Is there a way to add a wall-time column to this output so that we can
see where the time goes?

Another something nice would be to have ctx switches like:

foo-1 =3D> bar-2 ran: ${time foo spend on the cpu} since: ${time bar sp=
end away from the cpu}

I'll poke me a little at this function graph tracer thingy to see if I
can do that.


