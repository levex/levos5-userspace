
sh:     file format elf32-i386


Disassembly of section .init:

00400074 <.init>:
  400074:	e8 e7 00 00 00       	call   400160 <frame_dummy>
  400079:	e8 d2 10 00 00       	call   401150 <__do_global_ctors_aux>

Disassembly of section .text:

00400080 <_start>:
.global _start
.extern main
.extern exit
_start:
call main
  400080:	e8 1f 01 00 00       	call   4001a4 <main>
mov $0x1, %eax
  400085:	b8 01 00 00 00       	mov    $0x1,%eax
int $0x80
  40008a:	cd 80                	int    $0x80

0040008c <.wait>:
.wait: hlt
  40008c:	f4                   	hlt    
jmp .wait
  40008d:	eb fd                	jmp    40008c <.wait>
  40008f:	90                   	nop

00400090 <deregister_tm_clones>:
  400090:	a1 88 2e 40 00       	mov    0x402e88,%eax
  400095:	85 c0                	test   %eax,%eax
  400097:	74 19                	je     4000b2 <deregister_tm_clones+0x22>
  400099:	b8 00 00 00 00       	mov    $0x0,%eax
  40009e:	85 c0                	test   %eax,%eax
  4000a0:	74 10                	je     4000b2 <deregister_tm_clones+0x22>
  4000a2:	55                   	push   %ebp
  4000a3:	89 e5                	mov    %esp,%ebp
  4000a5:	83 ec 18             	sub    $0x18,%esp
  4000a8:	c7 04 24 88 2e 40 00 	movl   $0x402e88,(%esp)
  4000af:	ff d0                	call   *%eax
  4000b1:	c9                   	leave  
  4000b2:	c3                   	ret    
  4000b3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  4000b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

004000c0 <register_tm_clones>:
  4000c0:	8b 0d 88 2e 40 00    	mov    0x402e88,%ecx
  4000c6:	85 c9                	test   %ecx,%ecx
  4000c8:	74 33                	je     4000fd <register_tm_clones+0x3d>
  4000ca:	31 c0                	xor    %eax,%eax
  4000cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  4000d0:	40                   	inc    %eax
  4000d1:	8b 14 c5 88 2e 40 00 	mov    0x402e88(,%eax,8),%edx
  4000d8:	85 d2                	test   %edx,%edx
  4000da:	75 f4                	jne    4000d0 <register_tm_clones+0x10>
  4000dc:	85 c0                	test   %eax,%eax
  4000de:	74 1d                	je     4000fd <register_tm_clones+0x3d>
  4000e0:	ba 00 00 00 00       	mov    $0x0,%edx
  4000e5:	85 d2                	test   %edx,%edx
  4000e7:	74 14                	je     4000fd <register_tm_clones+0x3d>
  4000e9:	55                   	push   %ebp
  4000ea:	89 e5                	mov    %esp,%ebp
  4000ec:	83 ec 18             	sub    $0x18,%esp
  4000ef:	89 44 24 04          	mov    %eax,0x4(%esp)
  4000f3:	c7 04 24 88 2e 40 00 	movl   $0x402e88,(%esp)
  4000fa:	ff d2                	call   *%edx
  4000fc:	c9                   	leave  
  4000fd:	c3                   	ret    
  4000fe:	66 90                	xchg   %ax,%ax

00400100 <__do_global_dtors_aux>:
  400100:	80 3d a0 2e 40 00 00 	cmpb   $0x0,0x402ea0
  400107:	75 50                	jne    400159 <__do_global_dtors_aux+0x59>
  400109:	55                   	push   %ebp
  40010a:	89 e5                	mov    %esp,%ebp
  40010c:	83 ec 18             	sub    $0x18,%esp
  40010f:	8b 15 e4 25 40 00    	mov    0x4025e4,%edx
  400115:	8b 02                	mov    (%edx),%eax
  400117:	85 c0                	test   %eax,%eax
  400119:	74 1c                	je     400137 <__do_global_dtors_aux+0x37>
  40011b:	90                   	nop
  40011c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  400120:	83 c2 04             	add    $0x4,%edx
  400123:	89 15 e4 25 40 00    	mov    %edx,0x4025e4
  400129:	ff d0                	call   *%eax
  40012b:	8b 15 e4 25 40 00    	mov    0x4025e4,%edx
  400131:	8b 02                	mov    (%edx),%eax
  400133:	85 c0                	test   %eax,%eax
  400135:	75 e9                	jne    400120 <__do_global_dtors_aux+0x20>
  400137:	e8 54 ff ff ff       	call   400090 <deregister_tm_clones>
  40013c:	b8 00 00 00 00       	mov    $0x0,%eax
  400141:	85 c0                	test   %eax,%eax
  400143:	74 0c                	je     400151 <__do_global_dtors_aux+0x51>
  400145:	c7 04 24 a0 21 40 00 	movl   $0x4021a0,(%esp)
  40014c:	e8 af fe bf ff       	call   0 <_start-0x400080>
  400151:	c6 05 a0 2e 40 00 01 	movb   $0x1,0x402ea0
  400158:	c9                   	leave  
  400159:	c3                   	ret    
  40015a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00400160 <frame_dummy>:
  400160:	55                   	push   %ebp
  400161:	b8 00 00 00 00       	mov    $0x0,%eax
  400166:	89 e5                	mov    %esp,%ebp
  400168:	83 ec 18             	sub    $0x18,%esp
  40016b:	85 c0                	test   %eax,%eax
  40016d:	74 14                	je     400183 <frame_dummy+0x23>
  40016f:	c7 44 24 04 a4 2e 40 	movl   $0x402ea4,0x4(%esp)
  400176:	00 
  400177:	c7 04 24 a0 21 40 00 	movl   $0x4021a0,(%esp)
  40017e:	e8 7d fe bf ff       	call   0 <_start-0x400080>
  400183:	a1 c0 25 40 00       	mov    0x4025c0,%eax
  400188:	85 c0                	test   %eax,%eax
  40018a:	74 12                	je     40019e <frame_dummy+0x3e>
  40018c:	b8 00 00 00 00       	mov    $0x0,%eax
  400191:	85 c0                	test   %eax,%eax
  400193:	74 09                	je     40019e <frame_dummy+0x3e>
  400195:	c7 04 24 c0 25 40 00 	movl   $0x4025c0,(%esp)
  40019c:	ff d0                	call   *%eax
  40019e:	c9                   	leave  
  40019f:	e9 1c ff ff ff       	jmp    4000c0 <register_tm_clones>

004001a4 <main>:
  4001a4:	55                   	push   %ebp
  4001a5:	89 e5                	mov    %esp,%ebp
  4001a7:	83 e4 f0             	and    $0xfffffff0,%esp
  4001aa:	83 ec 10             	sub    $0x10,%esp
  4001ad:	c7 44 24 08 0d 00 00 	movl   $0xd,0x8(%esp)
  4001b4:	00 
  4001b5:	c7 44 24 04 88 11 40 	movl   $0x401188,0x4(%esp)
  4001bc:	00 
  4001bd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  4001c4:	e8 97 01 00 00       	call   400360 <write>
  4001c9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  4001d0:	e8 0b 00 00 00       	call   4001e0 <exit>
  4001d5:	90                   	nop
  4001d6:	90                   	nop
  4001d7:	90                   	nop
  4001d8:	90                   	nop
  4001d9:	90                   	nop
  4001da:	90                   	nop
  4001db:	90                   	nop
  4001dc:	90                   	nop
  4001dd:	90                   	nop
  4001de:	90                   	nop
  4001df:	90                   	nop

004001e0 <exit>:
 */

void
_DEFUN (exit, (code),
	int code)
{
  4001e0:	53                   	push   %ebx
  4001e1:	83 ec 18             	sub    $0x18,%esp
  4001e4:	8b 5c 24 20          	mov    0x20(%esp),%ebx
#ifdef _LITE_EXIT
  /* Refer to comments in __atexit.c for more details of lite exit.  */
  void __call_exitprocs _PARAMS ((int, _PTR)) __attribute__((weak));
  if (__call_exitprocs)
#endif
    __call_exitprocs (code, NULL);
  4001e8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  4001ef:	00 
  4001f0:	89 1c 24             	mov    %ebx,(%esp)
  4001f3:	e8 98 01 00 00       	call   400390 <__call_exitprocs>

  if (_GLOBAL_REENT->__cleanup)
  4001f8:	8b 15 98 11 40 00    	mov    0x401198,%edx
  4001fe:	8b 42 3c             	mov    0x3c(%edx),%eax
  400201:	85 c0                	test   %eax,%eax
  400203:	74 05                	je     40020a <exit+0x2a>
    (*_GLOBAL_REENT->__cleanup) (_GLOBAL_REENT);
  400205:	89 14 24             	mov    %edx,(%esp)
  400208:	ff d0                	call   *%eax
  _exit (code);
  40020a:	89 1c 24             	mov    %ebx,(%esp)
  40020d:	e8 0e 00 00 00       	call   400220 <_exit>
  400212:	90                   	nop
  400213:	90                   	nop
  400214:	90                   	nop
  400215:	90                   	nop
  400216:	90                   	nop
  400217:	90                   	nop
  400218:	90                   	nop
  400219:	90                   	nop
  40021a:	90                   	nop
  40021b:	90                   	nop
  40021c:	90                   	nop
  40021d:	90                   	nop
  40021e:	90                   	nop
  40021f:	90                   	nop

00400220 <_exit>:
#include <errno.h>
#undef errno
extern int errno;

void _exit() {
  asm volatile("int $0x80"::"a"(1));
  400220:	b8 01 00 00 00       	mov    $0x1,%eax
  400225:	cd 80                	int    $0x80
  400227:	eb fe                	jmp    400227 <_exit+0x7>
  400229:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00400230 <close>:
  for (;;)
    ;
}
int close(int file) {
    return -1;
}
  400230:	83 c8 ff             	or     $0xffffffff,%eax
  400233:	c3                   	ret    
  400234:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  40023a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00400240 <execve>:
char *__env[1] = { 0 };
char **environ = __env; /* pointer to array of char * strings that define the current environment variables */
int execve(char *name, char **argv, char **env) {
    errno=ENOMEM;
  400240:	c7 05 14 2f 40 00 0c 	movl   $0xc,0x402f14
  400247:	00 00 00 
    return -1;
}
  40024a:	83 c8 ff             	or     $0xffffffff,%eax
  40024d:	c3                   	ret    
  40024e:	66 90                	xchg   %ax,%ax

00400250 <fork>:
int fork() {
    errno=EAGAIN;
  400250:	c7 05 14 2f 40 00 0b 	movl   $0xb,0x402f14
  400257:	00 00 00 
    return -1;
}
  40025a:	83 c8 ff             	or     $0xffffffff,%eax
  40025d:	c3                   	ret    
  40025e:	66 90                	xchg   %ax,%ax

00400260 <fstat>:
int fstat(int file, struct stat *st) {
    st->st_mode = S_IFCHR;
  400260:	8b 44 24 08          	mov    0x8(%esp),%eax
  400264:	c7 40 04 00 20 00 00 	movl   $0x2000,0x4(%eax)
    return 0;
}
  40026b:	31 c0                	xor    %eax,%eax
  40026d:	c3                   	ret    
  40026e:	66 90                	xchg   %ax,%ax

00400270 <getpid>:
int getpid() {
  int pid = 0;
  asm volatile("int $0x80":"=a"(pid):"a"(0x14));
  400270:	b8 14 00 00 00       	mov    $0x14,%eax
  400275:	cd 80                	int    $0x80
  return pid;
}
  400277:	c3                   	ret    
  400278:	90                   	nop
  400279:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00400280 <isatty>:
int isatty(int file) {
    return 1;
}
  400280:	b8 01 00 00 00       	mov    $0x1,%eax
  400285:	c3                   	ret    
  400286:	8d 76 00             	lea    0x0(%esi),%esi
  400289:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00400290 <kill>:
int kill(int pid, int sig) {
    errno=EINVAL;
  400290:	c7 05 14 2f 40 00 16 	movl   $0x16,0x402f14
  400297:	00 00 00 
    return -1;
}
  40029a:	83 c8 ff             	or     $0xffffffff,%eax
  40029d:	c3                   	ret    
  40029e:	66 90                	xchg   %ax,%ax

004002a0 <link>:
int link(char *old, char *new) {
    errno=EMLINK;
  4002a0:	c7 05 14 2f 40 00 1f 	movl   $0x1f,0x402f14
  4002a7:	00 00 00 
    return -1;
}
  4002aa:	83 c8 ff             	or     $0xffffffff,%eax
  4002ad:	c3                   	ret    
  4002ae:	66 90                	xchg   %ax,%ax

004002b0 <lseek>:
int lseek(int file, int ptr, int dir) {
    return 0;
}
  4002b0:	31 c0                	xor    %eax,%eax
  4002b2:	c3                   	ret    
  4002b3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  4002b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

004002c0 <open>:
int open(const char *name, int flags, ...)  {
    return -1;
}
  4002c0:	83 c8 ff             	or     $0xffffffff,%eax
  4002c3:	c3                   	ret    
  4002c4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  4002ca:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

004002d0 <read>:
int read(int file, char *ptr, int len) {
    return 0;
}
  4002d0:	31 c0                	xor    %eax,%eax
  4002d2:	c3                   	ret    
  4002d3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  4002d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

004002e0 <sbrk>:
caddr_t sbrk(int incr){
      extern char end;		/* Defined by the linker */
      static char *heap_end;
      char *prev_heap_end;
     
      if (heap_end == 0) {
  4002e0:	a1 c0 2e 40 00       	mov    0x402ec0,%eax
  4002e5:	85 c0                	test   %eax,%eax
  4002e7:	74 17                	je     400300 <sbrk+0x20>
        heap_end = &end;
      }
      prev_heap_end = heap_end;

      heap_end += incr;
  4002e9:	8b 54 24 04          	mov    0x4(%esp),%edx
  4002ed:	01 c2                	add    %eax,%edx
  4002ef:	89 15 c0 2e 40 00    	mov    %edx,0x402ec0
      return (caddr_t) prev_heap_end;
    }
  4002f5:	c3                   	ret    
  4002f6:	8d 76 00             	lea    0x0(%esi),%esi
  4002f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
caddr_t sbrk(int incr){
      extern char end;		/* Defined by the linker */
      static char *heap_end;
      char *prev_heap_end;
     
      if (heap_end == 0) {
  400300:	b8 18 2f 40 00       	mov    $0x402f18,%eax
        heap_end = &end;
      }
      prev_heap_end = heap_end;

      heap_end += incr;
  400305:	8b 54 24 04          	mov    0x4(%esp),%edx
  400309:	01 c2                	add    %eax,%edx
  40030b:	89 15 c0 2e 40 00    	mov    %edx,0x402ec0
      return (caddr_t) prev_heap_end;
    }
  400311:	c3                   	ret    
  400312:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400319:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00400320 <stat>:
int stat(const char *file, struct stat *st) {
    st->st_mode = S_IFCHR;
  400320:	8b 44 24 08          	mov    0x8(%esp),%eax
  400324:	c7 40 04 00 20 00 00 	movl   $0x2000,0x4(%eax)
    return 0;
}
  40032b:	31 c0                	xor    %eax,%eax
  40032d:	c3                   	ret    
  40032e:	66 90                	xchg   %ax,%ax

00400330 <times>:
clock_t times(struct tms *buf) {
    return -1;
}
  400330:	83 c8 ff             	or     $0xffffffff,%eax
  400333:	c3                   	ret    
  400334:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  40033a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00400340 <unlink>:
int unlink(char *name) {
    errno=ENOENT;
  400340:	c7 05 14 2f 40 00 02 	movl   $0x2,0x402f14
  400347:	00 00 00 
    return -1;
}
  40034a:	83 c8 ff             	or     $0xffffffff,%eax
  40034d:	c3                   	ret    
  40034e:	66 90                	xchg   %ax,%ax

00400350 <wait>:
int wait(int *status) {
    errno=ECHILD;
  400350:	c7 05 14 2f 40 00 0a 	movl   $0xa,0x402f14
  400357:	00 00 00 
    return -1;
}
  40035a:	83 c8 ff             	or     $0xffffffff,%eax
  40035d:	c3                   	ret    
  40035e:	66 90                	xchg   %ax,%ax

00400360 <write>:
int write(int file, char *ptr, int len) {
  400360:	53                   	push   %ebx
    asm volatile("int $0x80"::"a"(0x4),"b"(file),"c"(ptr),"d"(len));
  400361:	b8 04 00 00 00       	mov    $0x4,%eax
}
int wait(int *status) {
    errno=ECHILD;
    return -1;
}
int write(int file, char *ptr, int len) {
  400366:	8b 54 24 10          	mov    0x10(%esp),%edx
    asm volatile("int $0x80"::"a"(0x4),"b"(file),"c"(ptr),"d"(len));
  40036a:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
  40036e:	8b 5c 24 08          	mov    0x8(%esp),%ebx
  400372:	cd 80                	int    $0x80
    return len;
}
  400374:	89 d0                	mov    %edx,%eax
  400376:	5b                   	pop    %ebx
  400377:	c3                   	ret    
  400378:	90                   	nop
  400379:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00400380 <gettimeofday>:
int gettimeofday(struct timeval *p, void *z) {
    return -1;
}
  400380:	83 c8 ff             	or     $0xffffffff,%eax
  400383:	c3                   	ret    
  400384:	90                   	nop
  400385:	90                   	nop
  400386:	90                   	nop
  400387:	90                   	nop
  400388:	90                   	nop
  400389:	90                   	nop
  40038a:	90                   	nop
  40038b:	90                   	nop
  40038c:	90                   	nop
  40038d:	90                   	nop
  40038e:	90                   	nop
  40038f:	90                   	nop

00400390 <__call_exitprocs>:
 */

void 
_DEFUN (__call_exitprocs, (code, d),
	int code _AND _PTR d)
{
  400390:	55                   	push   %ebp
  400391:	57                   	push   %edi
  400392:	56                   	push   %esi
  400393:	53                   	push   %ebx
  400394:	83 ec 3c             	sub    $0x3c,%esp
  400397:	a1 98 11 40 00       	mov    0x401198,%eax
  40039c:	05 48 01 00 00       	add    $0x148,%eax
  4003a1:	8b 6c 24 54          	mov    0x54(%esp),%ebp
  4003a5:	89 44 24 2c          	mov    %eax,0x2c(%esp)
  __lock_acquire_recursive(__atexit_lock);
#endif

 restart:

  p = _GLOBAL_ATEXIT;
  4003a9:	8b 15 98 11 40 00    	mov    0x401198,%edx
  lastp = &_GLOBAL_ATEXIT;
  4003af:	8b 44 24 2c          	mov    0x2c(%esp),%eax
  4003b3:	89 44 24 28          	mov    %eax,0x28(%esp)
  __lock_acquire_recursive(__atexit_lock);
#endif

 restart:

  p = _GLOBAL_ATEXIT;
  4003b7:	8b ba 48 01 00 00    	mov    0x148(%edx),%edi
  lastp = &_GLOBAL_ATEXIT;
  while (p)
  4003bd:	85 ff                	test   %edi,%edi
  4003bf:	0f 84 be 00 00 00    	je     400483 <__call_exitprocs+0xf3>
#ifdef _REENT_SMALL
      args = p->_on_exit_args_ptr;
#else
      args = &p->_on_exit_args;
#endif
      for (n = p->_ind - 1; n >= 0; n--)
  4003c5:	8b 5f 04             	mov    0x4(%edi),%ebx
  4003c8:	4b                   	dec    %ebx
  4003c9:	0f 88 ab 00 00 00    	js     40047a <__call_exitprocs+0xea>
 * Call registered exit handlers.  If D is null then all handlers are called,
 * otherwise only the handlers from that DSO are called.
 */

void 
_DEFUN (__call_exitprocs, (code, d),
  4003cf:	8d 87 88 00 00 00    	lea    0x88(%edi),%eax
  4003d5:	89 44 24 24          	mov    %eax,0x24(%esp)
  4003d9:	8d 34 98             	lea    (%eax,%ebx,4),%esi
  4003dc:	eb 17                	jmp    4003f5 <__call_exitprocs+0x65>
  4003de:	66 90                	xchg   %ax,%ax
	  int ind;

	  i = 1 << n;

	  /* Skip functions not from this dso.  */
	  if (d && (!args || args->_dso_handle[n] != d))
  4003e0:	39 ae 80 00 00 00    	cmp    %ebp,0x80(%esi)
  4003e6:	74 11                	je     4003f9 <__call_exitprocs+0x69>
#ifdef _REENT_SMALL
      args = p->_on_exit_args_ptr;
#else
      args = &p->_on_exit_args;
#endif
      for (n = p->_ind - 1; n >= 0; n--)
  4003e8:	4b                   	dec    %ebx
  4003e9:	83 ee 04             	sub    $0x4,%esi
  4003ec:	83 fb ff             	cmp    $0xffffffff,%ebx
  4003ef:	0f 84 85 00 00 00    	je     40047a <__call_exitprocs+0xea>
	  int ind;

	  i = 1 << n;

	  /* Skip functions not from this dso.  */
	  if (d && (!args || args->_dso_handle[n] != d))
  4003f5:	85 ed                	test   %ebp,%ebp
  4003f7:	75 e7                	jne    4003e0 <__call_exitprocs+0x50>
 * Call registered exit handlers.  If D is null then all handlers are called,
 * otherwise only the handlers from that DSO are called.
 */

void 
_DEFUN (__call_exitprocs, (code, d),
  4003f9:	8b 4c 24 24          	mov    0x24(%esp),%ecx
  4003fd:	89 f2                	mov    %esi,%edx
  4003ff:	29 ca                	sub    %ecx,%edx
	    continue;

	  /* Remove the function now to protect against the
	     function calling exit recursively.  */
	  fn = p->_fns[n];
	  if (n == p->_ind - 1)
  400401:	8b 4f 04             	mov    0x4(%edi),%ecx
  400404:	49                   	dec    %ecx
	  if (d && (!args || args->_dso_handle[n] != d))
	    continue;

	  /* Remove the function now to protect against the
	     function calling exit recursively.  */
	  fn = p->_fns[n];
  400405:	8b 44 3a 08          	mov    0x8(%edx,%edi,1),%eax
	  if (n == p->_ind - 1)
  400409:	39 d9                	cmp    %ebx,%ecx
  40040b:	0f 84 8f 00 00 00    	je     4004a0 <__call_exitprocs+0x110>
	    p->_ind--;
	  else
	    p->_fns[n] = NULL;
  400411:	c7 44 3a 08 00 00 00 	movl   $0x0,0x8(%edx,%edi,1)
  400418:	00 

	  /* Skip functions that have already been called.  */
	  if (!fn)
  400419:	85 c0                	test   %eax,%eax
  40041b:	74 cb                	je     4003e8 <__call_exitprocs+0x58>
	    continue;

	  ind = p->_ind;
  40041d:	8b 57 04             	mov    0x4(%edi),%edx
#endif
      for (n = p->_ind - 1; n >= 0; n--)
	{
	  int ind;

	  i = 1 << n;
  400420:	88 d9                	mov    %bl,%cl

	  /* Skip functions that have already been called.  */
	  if (!fn)
	    continue;

	  ind = p->_ind;
  400422:	89 54 24 18          	mov    %edx,0x18(%esp)
#endif
      for (n = p->_ind - 1; n >= 0; n--)
	{
	  int ind;

	  i = 1 << n;
  400426:	ba 01 00 00 00       	mov    $0x1,%edx
  40042b:	d3 e2                	shl    %cl,%edx
  40042d:	89 54 24 1c          	mov    %edx,0x1c(%esp)
	    continue;

	  ind = p->_ind;

	  /* Call the function.  */
	  if (!args || (args->_fntypes & i) == 0)
  400431:	85 97 88 01 00 00    	test   %edx,0x188(%edi)
  400437:	74 57                	je     400490 <__call_exitprocs+0x100>
	    fn ();
	  else if ((args->_is_cxa & i) == 0)
  400439:	8b 4c 24 1c          	mov    0x1c(%esp),%ecx
  40043d:	85 8f 8c 01 00 00    	test   %ecx,0x18c(%edi)
	    (*((void (*)(int, _PTR)) fn))(code, args->_fnargs[n]);
  400443:	8b 0e                	mov    (%esi),%ecx
	  ind = p->_ind;

	  /* Call the function.  */
	  if (!args || (args->_fntypes & i) == 0)
	    fn ();
	  else if ((args->_is_cxa & i) == 0)
  400445:	75 69                	jne    4004b0 <__call_exitprocs+0x120>
	    (*((void (*)(int, _PTR)) fn))(code, args->_fnargs[n]);
  400447:	8b 54 24 50          	mov    0x50(%esp),%edx
  40044b:	89 4c 24 04          	mov    %ecx,0x4(%esp)
  40044f:	89 14 24             	mov    %edx,(%esp)
  400452:	ff d0                	call   *%eax
	    (*((void (*)(_PTR)) fn))(args->_fnargs[n]);

	  /* The function we called call atexit and registered another
	     function (or functions).  Call these new functions before
	     continuing with the already registered functions.  */
	  if (ind != p->_ind || *lastp != p)
  400454:	8b 44 24 18          	mov    0x18(%esp),%eax
  400458:	39 47 04             	cmp    %eax,0x4(%edi)
  40045b:	0f 85 48 ff ff ff    	jne    4003a9 <__call_exitprocs+0x19>
  400461:	8b 54 24 28          	mov    0x28(%esp),%edx
  400465:	39 3a                	cmp    %edi,(%edx)
  400467:	0f 85 3c ff ff ff    	jne    4003a9 <__call_exitprocs+0x19>
#ifdef _REENT_SMALL
      args = p->_on_exit_args_ptr;
#else
      args = &p->_on_exit_args;
#endif
      for (n = p->_ind - 1; n >= 0; n--)
  40046d:	4b                   	dec    %ebx
  40046e:	83 ee 04             	sub    $0x4,%esi
  400471:	83 fb ff             	cmp    $0xffffffff,%ebx
  400474:	0f 85 7b ff ff ff    	jne    4003f5 <__call_exitprocs+0x65>
#ifndef _ATEXIT_DYNAMIC_ALLOC
      break;
#else
      /* Don't dynamically free the atexit array if free is not
	 available.  */
      if (!free)
  40047a:	ba 00 00 00 00       	mov    $0x0,%edx
  40047f:	85 d2                	test   %edx,%edx
  400481:	75 34                	jne    4004b7 <__call_exitprocs+0x127>
    }
#ifndef __SINGLE_THREAD__
  __lock_release_recursive(__atexit_lock);
#endif

}
  400483:	83 c4 3c             	add    $0x3c,%esp
  400486:	5b                   	pop    %ebx
  400487:	5e                   	pop    %esi
  400488:	5f                   	pop    %edi
  400489:	5d                   	pop    %ebp
  40048a:	c3                   	ret    
  40048b:	90                   	nop
  40048c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

	  ind = p->_ind;

	  /* Call the function.  */
	  if (!args || (args->_fntypes & i) == 0)
	    fn ();
  400490:	ff d0                	call   *%eax
  400492:	eb c0                	jmp    400454 <__call_exitprocs+0xc4>
  400494:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  40049a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

	  /* Remove the function now to protect against the
	     function calling exit recursively.  */
	  fn = p->_fns[n];
	  if (n == p->_ind - 1)
	    p->_ind--;
  4004a0:	89 5f 04             	mov    %ebx,0x4(%edi)
  4004a3:	e9 71 ff ff ff       	jmp    400419 <__call_exitprocs+0x89>
  4004a8:	90                   	nop
  4004a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
	  if (!args || (args->_fntypes & i) == 0)
	    fn ();
	  else if ((args->_is_cxa & i) == 0)
	    (*((void (*)(int, _PTR)) fn))(code, args->_fnargs[n]);
	  else
	    (*((void (*)(_PTR)) fn))(args->_fnargs[n]);
  4004b0:	89 0c 24             	mov    %ecx,(%esp)
  4004b3:	ff d0                	call   *%eax
  4004b5:	eb 9d                	jmp    400454 <__call_exitprocs+0xc4>
      if (!free)
	break;

      /* Move to the next block.  Free empty blocks except the last one,
	 which is part of _GLOBAL_REENT.  */
      if (p->_ind == 0 && p->_next)
  4004b7:	8b 47 04             	mov    0x4(%edi),%eax
  4004ba:	85 c0                	test   %eax,%eax
  4004bc:	8b 07                	mov    (%edi),%eax
  4004be:	75 1f                	jne    4004df <__call_exitprocs+0x14f>
  4004c0:	85 c0                	test   %eax,%eax
  4004c2:	74 19                	je     4004dd <__call_exitprocs+0x14d>
	{
	  /* Remove empty block from the list.  */
	  *lastp = p->_next;
  4004c4:	8b 54 24 28          	mov    0x28(%esp),%edx
  4004c8:	89 02                	mov    %eax,(%edx)
#ifdef _REENT_SMALL
	  if (args)
	    free (args);
#endif
	  free (p);
  4004ca:	89 3c 24             	mov    %edi,(%esp)
  4004cd:	e8 2e fb bf ff       	call   0 <_start-0x400080>
	  p = *lastp;
  4004d2:	8b 44 24 28          	mov    0x28(%esp),%eax
  4004d6:	8b 38                	mov    (%eax),%edi
  4004d8:	e9 e0 fe ff ff       	jmp    4003bd <__call_exitprocs+0x2d>
      if (!free)
	break;

      /* Move to the next block.  Free empty blocks except the last one,
	 which is part of _GLOBAL_REENT.  */
      if (p->_ind == 0 && p->_next)
  4004dd:	31 c0                	xor    %eax,%eax
	  free (p);
	  p = *lastp;
	}
      else
	{
	  lastp = &p->_next;
  4004df:	89 7c 24 28          	mov    %edi,0x28(%esp)
	  p = p->_next;
  4004e3:	89 c7                	mov    %eax,%edi
  4004e5:	e9 d3 fe ff ff       	jmp    4003bd <__call_exitprocs+0x2d>
  4004ea:	90                   	nop
  4004eb:	90                   	nop
  4004ec:	90                   	nop
  4004ed:	90                   	nop
  4004ee:	90                   	nop
  4004ef:	90                   	nop

004004f0 <cleanup_glue>:

void
_DEFUN (cleanup_glue, (ptr, glue),
     struct _reent *ptr _AND
     struct _glue *glue)
{
  4004f0:	56                   	push   %esi
  4004f1:	53                   	push   %ebx
  4004f2:	83 ec 14             	sub    $0x14,%esp
  4004f5:	8b 5c 24 24          	mov    0x24(%esp),%ebx
  4004f9:	8b 74 24 20          	mov    0x20(%esp),%esi
  /* Have to reclaim these in reverse order: */
  if (glue->_next)
  4004fd:	8b 03                	mov    (%ebx),%eax
  4004ff:	85 c0                	test   %eax,%eax
  400501:	74 0c                	je     40050f <cleanup_glue+0x1f>
    cleanup_glue (ptr, glue->_next);
  400503:	89 44 24 04          	mov    %eax,0x4(%esp)
  400507:	89 34 24             	mov    %esi,(%esp)
  40050a:	e8 e1 ff ff ff       	call   4004f0 <cleanup_glue>

  _free_r (ptr, glue);
  40050f:	89 5c 24 24          	mov    %ebx,0x24(%esp)
  400513:	89 74 24 20          	mov    %esi,0x20(%esp)
}
  400517:	83 c4 14             	add    $0x14,%esp
  40051a:	5b                   	pop    %ebx
  40051b:	5e                   	pop    %esi
{
  /* Have to reclaim these in reverse order: */
  if (glue->_next)
    cleanup_glue (ptr, glue->_next);

  _free_r (ptr, glue);
  40051c:	e9 ff 01 00 00       	jmp    400720 <_free_r>
  400521:	eb 0d                	jmp    400530 <_reclaim_reent>
  400523:	90                   	nop
  400524:	90                   	nop
  400525:	90                   	nop
  400526:	90                   	nop
  400527:	90                   	nop
  400528:	90                   	nop
  400529:	90                   	nop
  40052a:	90                   	nop
  40052b:	90                   	nop
  40052c:	90                   	nop
  40052d:	90                   	nop
  40052e:	90                   	nop
  40052f:	90                   	nop

00400530 <_reclaim_reent>:
}

void
_DEFUN (_reclaim_reent, (ptr),
     struct _reent *ptr)
{
  400530:	57                   	push   %edi
  400531:	56                   	push   %esi
  400532:	53                   	push   %ebx
  400533:	83 ec 10             	sub    $0x10,%esp
  400536:	8b 74 24 20          	mov    0x20(%esp),%esi
  if (ptr != _impure_ptr)
  40053a:	3b 35 00 26 40 00    	cmp    0x402600,%esi
  400540:	0f 84 b8 00 00 00    	je     4005fe <_reclaim_reent+0xce>
      /* used by mprec routines. */
#ifdef _REENT_SMALL
      if (ptr->_mp)	/* don't bother allocating it! */
      {
#endif
      if (_REENT_MP_FREELIST(ptr))
  400546:	8b 56 4c             	mov    0x4c(%esi),%edx
  400549:	85 d2                	test   %edx,%edx
  40054b:	74 4e                	je     40059b <_reclaim_reent+0x6b>
  40054d:	31 c0                	xor    %eax,%eax
  40054f:	31 ff                	xor    %edi,%edi
  400551:	eb 0d                	jmp    400560 <_reclaim_reent+0x30>
  400553:	90                   	nop
  400554:	90                   	nop
  400555:	90                   	nop
  400556:	90                   	nop
  400557:	90                   	nop
  400558:	90                   	nop
  400559:	90                   	nop
  40055a:	90                   	nop
  40055b:	90                   	nop
  40055c:	90                   	nop
  40055d:	90                   	nop
  40055e:	90                   	nop
  40055f:	90                   	nop
	  int i;
	  for (i = 0; i < _Kmax; i++) 
	    {
	      struct _Bigint *thisone, *nextone;
	
	      nextone = _REENT_MP_FREELIST(ptr)[i];
  400560:	8b 04 82             	mov    (%edx,%eax,4),%eax
	      while (nextone)
  400563:	85 c0                	test   %eax,%eax
  400565:	74 20                	je     400587 <_reclaim_reent+0x57>
  400567:	89 f6                	mov    %esi,%esi
  400569:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
		{
		  thisone = nextone;
		  nextone = nextone->_next;
  400570:	8b 18                	mov    (%eax),%ebx
		  _free_r (ptr, thisone);
  400572:	89 44 24 04          	mov    %eax,0x4(%esp)
  400576:	89 34 24             	mov    %esi,(%esp)
  400579:	e8 a2 01 00 00       	call   400720 <_free_r>
	
	      nextone = _REENT_MP_FREELIST(ptr)[i];
	      while (nextone)
		{
		  thisone = nextone;
		  nextone = nextone->_next;
  40057e:	89 d8                	mov    %ebx,%eax
	  for (i = 0; i < _Kmax; i++) 
	    {
	      struct _Bigint *thisone, *nextone;
	
	      nextone = _REENT_MP_FREELIST(ptr)[i];
	      while (nextone)
  400580:	85 db                	test   %ebx,%ebx
  400582:	75 ec                	jne    400570 <_reclaim_reent+0x40>
  400584:	8b 56 4c             	mov    0x4c(%esi),%edx
      {
#endif
      if (_REENT_MP_FREELIST(ptr))
	{
	  int i;
	  for (i = 0; i < _Kmax; i++) 
  400587:	47                   	inc    %edi
  400588:	89 f8                	mov    %edi,%eax
  40058a:	83 ff 20             	cmp    $0x20,%edi
  40058d:	75 d1                	jne    400560 <_reclaim_reent+0x30>
		  nextone = nextone->_next;
		  _free_r (ptr, thisone);
		}
	    }    

	  _free_r (ptr, _REENT_MP_FREELIST(ptr));
  40058f:	89 54 24 04          	mov    %edx,0x4(%esp)
  400593:	89 34 24             	mov    %esi,(%esp)
  400596:	e8 85 01 00 00       	call   400720 <_free_r>
	}
      if (_REENT_MP_RESULT(ptr))
  40059b:	8b 46 40             	mov    0x40(%esi),%eax
  40059e:	85 c0                	test   %eax,%eax
  4005a0:	74 0c                	je     4005ae <_reclaim_reent+0x7e>
	_free_r (ptr, _REENT_MP_RESULT(ptr));
  4005a2:	89 44 24 04          	mov    %eax,0x4(%esp)
  4005a6:	89 34 24             	mov    %esi,(%esp)
  4005a9:	e8 72 01 00 00       	call   400720 <_free_r>
      /* atexit stuff */
# ifdef _REENT_SMALL
      if (ptr->_atexit && ptr->_atexit->_on_exit_args_ptr)
	_free_r (ptr, ptr->_atexit->_on_exit_args_ptr);
# else
      if ((ptr->_atexit) && (ptr->_atexit != &ptr->_atexit0))
  4005ae:	8b 86 48 01 00 00    	mov    0x148(%esi),%eax
  4005b4:	85 c0                	test   %eax,%eax
  4005b6:	74 2c                	je     4005e4 <_reclaim_reent+0xb4>
  4005b8:	8d be 4c 01 00 00    	lea    0x14c(%esi),%edi
  4005be:	39 f8                	cmp    %edi,%eax
  4005c0:	74 22                	je     4005e4 <_reclaim_reent+0xb4>
  4005c2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  4005c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
	{
	  struct _atexit *p, *q;
	  for (p = ptr->_atexit; p != &ptr->_atexit0;)
	    {
	      q = p;
	      p = p->_next;
  4005d0:	8b 18                	mov    (%eax),%ebx
	      _free_r (ptr, q);
  4005d2:	89 44 24 04          	mov    %eax,0x4(%esp)
  4005d6:	89 34 24             	mov    %esi,(%esp)
  4005d9:	e8 42 01 00 00       	call   400720 <_free_r>
	{
	  struct _atexit *p, *q;
	  for (p = ptr->_atexit; p != &ptr->_atexit0;)
	    {
	      q = p;
	      p = p->_next;
  4005de:	89 d8                	mov    %ebx,%eax
	_free_r (ptr, ptr->_atexit->_on_exit_args_ptr);
# else
      if ((ptr->_atexit) && (ptr->_atexit != &ptr->_atexit0))
	{
	  struct _atexit *p, *q;
	  for (p = ptr->_atexit; p != &ptr->_atexit0;)
  4005e0:	39 df                	cmp    %ebx,%edi
  4005e2:	75 ec                	jne    4005d0 <_reclaim_reent+0xa0>
	    }
	}
# endif
#endif

      if (ptr->_cvtbuf)
  4005e4:	8b 46 54             	mov    0x54(%esi),%eax
  4005e7:	85 c0                	test   %eax,%eax
  4005e9:	74 0c                	je     4005f7 <_reclaim_reent+0xc7>
	_free_r (ptr, ptr->_cvtbuf);
  4005eb:	89 44 24 04          	mov    %eax,0x4(%esp)
  4005ef:	89 34 24             	mov    %esi,(%esp)
  4005f2:	e8 29 01 00 00       	call   400720 <_free_r>
	   do it safely considering that a signal may be delivered immediately
	   after the free?
	  if (ptr->_sig_func)
	_free_r (ptr, ptr->_sig_func);*/

      if (ptr->__sdidinit)
  4005f7:	8b 46 38             	mov    0x38(%esi),%eax
  4005fa:	85 c0                	test   %eax,%eax
  4005fc:	75 07                	jne    400605 <_reclaim_reent+0xd5>
	}

      /* Malloc memory not reclaimed; no good way to return memory anyway. */

    }
}
  4005fe:	83 c4 10             	add    $0x10,%esp
  400601:	5b                   	pop    %ebx
  400602:	5e                   	pop    %esi
  400603:	5f                   	pop    %edi
  400604:	c3                   	ret    

      if (ptr->__sdidinit)
	{
	  /* cleanup won't reclaim memory 'coz usually it's run
	     before the program exits, and who wants to wait for that? */
	  ptr->__cleanup (ptr);
  400605:	89 34 24             	mov    %esi,(%esp)
  400608:	ff 56 3c             	call   *0x3c(%esi)

	  if (ptr->__sglue._next)
  40060b:	8b 86 e0 02 00 00    	mov    0x2e0(%esi),%eax
  400611:	85 c0                	test   %eax,%eax
  400613:	74 e9                	je     4005fe <_reclaim_reent+0xce>
	    cleanup_glue (ptr, ptr->__sglue._next);
  400615:	89 34 24             	mov    %esi,(%esp)
  400618:	89 44 24 04          	mov    %eax,0x4(%esp)
  40061c:	e8 cf fe ff ff       	call   4004f0 <cleanup_glue>
	}

      /* Malloc memory not reclaimed; no good way to return memory anyway. */

    }
}
  400621:	83 c4 10             	add    $0x10,%esp
  400624:	5b                   	pop    %ebx
  400625:	5e                   	pop    %esi
  400626:	5f                   	pop    %edi
  400627:	c3                   	ret    
  400628:	90                   	nop
  400629:	90                   	nop
  40062a:	90                   	nop
  40062b:	90                   	nop
  40062c:	90                   	nop
  40062d:	90                   	nop
  40062e:	90                   	nop
  40062f:	90                   	nop

00400630 <_malloc_trim_r>:
#if __STD_C
int malloc_trim(RARG size_t pad)
#else
int malloc_trim(RARG pad) RDECL size_t pad;
#endif
{
  400630:	57                   	push   %edi
  400631:	56                   	push   %esi
  400632:	53                   	push   %ebx
  400633:	83 ec 10             	sub    $0x10,%esp
  400636:	8b 74 24 20          	mov    0x20(%esp),%esi
  char* current_brk;     /* address returned by pre-check sbrk call */
  char* new_brk;         /* address returned by negative sbrk call */

  unsigned long pagesz = malloc_getpagesize;

  MALLOC_LOCK;
  40063a:	89 34 24             	mov    %esi,(%esp)
  40063d:	e8 9e 0a 00 00       	call   4010e0 <__malloc_lock>

  top_size = chunksize(top);
  400642:	a1 88 2a 40 00       	mov    0x402a88,%eax
  400647:	8b 58 04             	mov    0x4(%eax),%ebx
  extra = ((top_size - pad - MINSIZE + (pagesz-1)) / pagesz - 1) * pagesz;
  40064a:	8b 7c 24 24          	mov    0x24(%esp),%edi

  unsigned long pagesz = malloc_getpagesize;

  MALLOC_LOCK;

  top_size = chunksize(top);
  40064e:	83 e3 fc             	and    $0xfffffffc,%ebx
  extra = ((top_size - pad - MINSIZE + (pagesz-1)) / pagesz - 1) * pagesz;
  400651:	8d 83 ef 0f 00 00    	lea    0xfef(%ebx),%eax
  400657:	29 f8                	sub    %edi,%eax
  400659:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  40065e:	8d b8 00 f0 ff ff    	lea    -0x1000(%eax),%edi

  if (extra < (long)pagesz)  /* Not enough memory to release */
  400664:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
  40066a:	7e 1c                	jle    400688 <_malloc_trim_r+0x58>
  }

  else
  {
    /* Test to make sure no one else called sbrk */
    current_brk = (char*)(MORECORE (0));
  40066c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  400673:	00 
  400674:	89 34 24             	mov    %esi,(%esp)
  400677:	e8 84 0a 00 00       	call   401100 <_sbrk_r>
    if (current_brk != (char*)(top) + top_size)
  40067c:	8b 15 88 2a 40 00    	mov    0x402a88,%edx
  400682:	01 da                	add    %ebx,%edx
  400684:	39 d0                	cmp    %edx,%eax
  400686:	74 18                	je     4006a0 <_malloc_trim_r+0x70>
  top_size = chunksize(top);
  extra = ((top_size - pad - MINSIZE + (pagesz-1)) / pagesz - 1) * pagesz;

  if (extra < (long)pagesz)  /* Not enough memory to release */
  {
    MALLOC_UNLOCK;
  400688:	89 34 24             	mov    %esi,(%esp)
  40068b:	e8 60 0a 00 00       	call   4010f0 <__malloc_unlock>
	MALLOC_UNLOCK;
        return 1;
      }
    }
  }
}
  400690:	83 c4 10             	add    $0x10,%esp
  extra = ((top_size - pad - MINSIZE + (pagesz-1)) / pagesz - 1) * pagesz;

  if (extra < (long)pagesz)  /* Not enough memory to release */
  {
    MALLOC_UNLOCK;
    return 0;
  400693:	31 c0                	xor    %eax,%eax
	MALLOC_UNLOCK;
        return 1;
      }
    }
  }
}
  400695:	5b                   	pop    %ebx
  400696:	5e                   	pop    %esi
  400697:	5f                   	pop    %edi
  400698:	c3                   	ret    
  400699:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      return 0;     /* Apparently we don't own memory; must fail */
    }

    else
    {
      new_brk = (char*)(MORECORE (-extra));
  4006a0:	89 f8                	mov    %edi,%eax
  4006a2:	89 34 24             	mov    %esi,(%esp)
  4006a5:	f7 d8                	neg    %eax
  4006a7:	89 44 24 04          	mov    %eax,0x4(%esp)
  4006ab:	e8 50 0a 00 00       	call   401100 <_sbrk_r>
      
      if (new_brk == (char*)(MORECORE_FAILURE)) /* sbrk failed? */
  4006b0:	40                   	inc    %eax
  4006b1:	74 2d                	je     4006e0 <_malloc_trim_r+0xb0>
      }

      else
      {
        /* Success. Adjust top accordingly. */
        set_head(top, (top_size - extra) | PREV_INUSE);
  4006b3:	a1 88 2a 40 00       	mov    0x402a88,%eax
  4006b8:	29 fb                	sub    %edi,%ebx
  4006ba:	83 cb 01             	or     $0x1,%ebx
  4006bd:	89 58 04             	mov    %ebx,0x4(%eax)
        sbrked_mem -= extra;
  4006c0:	a1 e0 2e 40 00       	mov    0x402ee0,%eax
  4006c5:	29 f8                	sub    %edi,%eax
        check_chunk(top);
	MALLOC_UNLOCK;
  4006c7:	89 34 24             	mov    %esi,(%esp)

      else
      {
        /* Success. Adjust top accordingly. */
        set_head(top, (top_size - extra) | PREV_INUSE);
        sbrked_mem -= extra;
  4006ca:	a3 e0 2e 40 00       	mov    %eax,0x402ee0
        check_chunk(top);
	MALLOC_UNLOCK;
  4006cf:	e8 1c 0a 00 00       	call   4010f0 <__malloc_unlock>
        return 1;
      }
    }
  }
}
  4006d4:	83 c4 10             	add    $0x10,%esp
        /* Success. Adjust top accordingly. */
        set_head(top, (top_size - extra) | PREV_INUSE);
        sbrked_mem -= extra;
        check_chunk(top);
	MALLOC_UNLOCK;
        return 1;
  4006d7:	b8 01 00 00 00       	mov    $0x1,%eax
      }
    }
  }
}
  4006dc:	5b                   	pop    %ebx
  4006dd:	5e                   	pop    %esi
  4006de:	5f                   	pop    %edi
  4006df:	c3                   	ret    
      new_brk = (char*)(MORECORE (-extra));
      
      if (new_brk == (char*)(MORECORE_FAILURE)) /* sbrk failed? */
      {
        /* Try to figure out what we have */
        current_brk = (char*)(MORECORE (0));
  4006e0:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  4006e7:	00 
  4006e8:	89 34 24             	mov    %esi,(%esp)
  4006eb:	e8 10 0a 00 00       	call   401100 <_sbrk_r>
        top_size = current_brk - (char*)top;
  4006f0:	8b 15 88 2a 40 00    	mov    0x402a88,%edx
  4006f6:	89 c1                	mov    %eax,%ecx
  4006f8:	29 d1                	sub    %edx,%ecx
        if (top_size >= (long)MINSIZE) /* if not, we are very very dead! */
  4006fa:	83 f9 0f             	cmp    $0xf,%ecx
  4006fd:	7e 89                	jle    400688 <_malloc_trim_r+0x58>
        {
          sbrked_mem = current_brk - sbrk_base;
  4006ff:	8b 1d 60 2a 40 00    	mov    0x402a60,%ebx
          set_head(top, top_size | PREV_INUSE);
  400705:	83 c9 01             	or     $0x1,%ecx
        /* Try to figure out what we have */
        current_brk = (char*)(MORECORE (0));
        top_size = current_brk - (char*)top;
        if (top_size >= (long)MINSIZE) /* if not, we are very very dead! */
        {
          sbrked_mem = current_brk - sbrk_base;
  400708:	29 d8                	sub    %ebx,%eax
          set_head(top, top_size | PREV_INUSE);
  40070a:	89 4a 04             	mov    %ecx,0x4(%edx)
        /* Try to figure out what we have */
        current_brk = (char*)(MORECORE (0));
        top_size = current_brk - (char*)top;
        if (top_size >= (long)MINSIZE) /* if not, we are very very dead! */
        {
          sbrked_mem = current_brk - sbrk_base;
  40070d:	a3 e0 2e 40 00       	mov    %eax,0x402ee0
  400712:	e9 71 ff ff ff       	jmp    400688 <_malloc_trim_r+0x58>
  400717:	89 f6                	mov    %esi,%esi
  400719:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00400720 <_free_r>:
#if __STD_C
void fREe(RARG Void_t* mem)
#else
void fREe(RARG mem) RDECL Void_t* mem;
#endif
{
  400720:	55                   	push   %ebp
  400721:	57                   	push   %edi
  400722:	56                   	push   %esi
  400723:	53                   	push   %ebx
  400724:	83 ec 2c             	sub    $0x2c,%esp
  400727:	8b 7c 24 44          	mov    0x44(%esp),%edi
  40072b:	8b 74 24 40          	mov    0x40(%esp),%esi
  INTERNAL_SIZE_T prevsz; /* size of previous contiguous chunk */
  mchunkptr bck;       /* misc temp for linking */
  mchunkptr fwd;       /* misc temp for linking */
  int       islr;      /* track whether merging with last_remainder */

  if (mem == 0)                              /* free(0) has no effect */
  40072f:	85 ff                	test   %edi,%edi
  400731:	0f 84 f9 00 00 00    	je     400830 <_free_r+0x110>
    return;

  MALLOC_LOCK;
  400737:	89 34 24             	mov    %esi,(%esp)
  40073a:	e8 a1 09 00 00       	call   4010e0 <__malloc_lock>

  p = mem2chunk(mem);
  hd = p->size;
  40073f:	8b 6f fc             	mov    -0x4(%edi),%ebp
  }
#endif
  
  check_inuse_chunk(p);
  
  sz = hd & ~PREV_INUSE;
  400742:	89 e8                	mov    %ebp,%eax
  if (mem == 0)                              /* free(0) has no effect */
    return;

  MALLOC_LOCK;

  p = mem2chunk(mem);
  400744:	8d 57 f8             	lea    -0x8(%edi),%edx
  }
#endif
  
  check_inuse_chunk(p);
  
  sz = hd & ~PREV_INUSE;
  400747:	83 e0 fe             	and    $0xfffffffe,%eax
  next = chunk_at_offset(p, sz);
  40074a:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
  nextsz = chunksize(next);
  40074d:	8b 59 04             	mov    0x4(%ecx),%ebx
  400750:	83 e3 fc             	and    $0xfffffffc,%ebx
  
  if (next == top)                            /* merge with top */
  400753:	39 0d 88 2a 40 00    	cmp    %ecx,0x402a88
  400759:	0f 84 21 01 00 00    	je     400880 <_free_r+0x160>
      malloc_trim(RCALL top_pad); 
    MALLOC_UNLOCK;
    return;
  }

  set_head(next, nextsz);                    /* clear inuse bit */
  40075f:	89 59 04             	mov    %ebx,0x4(%ecx)

  islr = 0;
  400762:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%esp)
  400769:	00 

  if (!(hd & PREV_INUSE))                    /* consolidate backward */
  40076a:	83 e5 01             	and    $0x1,%ebp
  40076d:	75 1f                	jne    40078e <_free_r+0x6e>
  {
    prevsz = p->prev_size;
  40076f:	8b 7f f8             	mov    -0x8(%edi),%edi
    p = chunk_at_offset(p, -prevsz);
  400772:	29 fa                	sub    %edi,%edx
    sz += prevsz;
  400774:	01 f8                	add    %edi,%eax
    
    if (p->fd == last_remainder)             /* keep as last_remainder */
  400776:	8b 7a 08             	mov    0x8(%edx),%edi
  400779:	81 ff 88 2a 40 00    	cmp    $0x402a88,%edi
  40077f:	0f 84 4b 01 00 00    	je     4008d0 <_free_r+0x1b0>
      islr = 1;
    else
      unlink(p, bck, fwd);
  400785:	8b 6a 0c             	mov    0xc(%edx),%ebp
  400788:	89 6f 0c             	mov    %ebp,0xc(%edi)
  40078b:	89 7d 08             	mov    %edi,0x8(%ebp)
  }
  
  if (!(inuse_bit_at_offset(next, nextsz)))   /* consolidate forward */
  40078e:	f6 44 19 04 01       	testb  $0x1,0x4(%ecx,%ebx,1)
  400793:	75 22                	jne    4007b7 <_free_r+0x97>
  {
    sz += nextsz;
    
    if (!islr && next->fd == last_remainder)  /* re-insert last_remainder */
  400795:	8b 7c 24 1c          	mov    0x1c(%esp),%edi
      unlink(p, bck, fwd);
  }
  
  if (!(inuse_bit_at_offset(next, nextsz)))   /* consolidate forward */
  {
    sz += nextsz;
  400799:	01 d8                	add    %ebx,%eax
    
    if (!islr && next->fd == last_remainder)  /* re-insert last_remainder */
  40079b:	8b 59 08             	mov    0x8(%ecx),%ebx
  40079e:	85 ff                	test   %edi,%edi
  4007a0:	75 0c                	jne    4007ae <_free_r+0x8e>
  4007a2:	81 fb 88 2a 40 00    	cmp    $0x402a88,%ebx
  4007a8:	0f 84 32 01 00 00    	je     4008e0 <_free_r+0x1c0>
    {
      islr = 1;
      link_last_remainder(p);   
    }
    else
      unlink(next, bck, fwd);
  4007ae:	8b 49 0c             	mov    0xc(%ecx),%ecx
  4007b1:	89 4b 0c             	mov    %ecx,0xc(%ebx)
  4007b4:	89 59 08             	mov    %ebx,0x8(%ecx)
  }


  set_head(p, sz | PREV_INUSE);
  4007b7:	89 c1                	mov    %eax,%ecx
  set_foot(p, sz);
  if (!islr)
  4007b9:	8b 6c 24 1c          	mov    0x1c(%esp),%ebp
    else
      unlink(next, bck, fwd);
  }


  set_head(p, sz | PREV_INUSE);
  4007bd:	83 c9 01             	or     $0x1,%ecx
  set_foot(p, sz);
  4007c0:	89 04 02             	mov    %eax,(%edx,%eax,1)
    else
      unlink(next, bck, fwd);
  }


  set_head(p, sz | PREV_INUSE);
  4007c3:	89 4a 04             	mov    %ecx,0x4(%edx)
  set_foot(p, sz);
  if (!islr)
  4007c6:	85 ed                	test   %ebp,%ebp
  4007c8:	75 56                	jne    400820 <_free_r+0x100>
    frontlink(p, sz, idx, bck, fwd);  
  4007ca:	3d ff 01 00 00       	cmp    $0x1ff,%eax
  4007cf:	76 6f                	jbe    400840 <_free_r+0x120>
  4007d1:	89 c1                	mov    %eax,%ecx
  4007d3:	c1 e9 09             	shr    $0x9,%ecx
  4007d6:	83 f9 04             	cmp    $0x4,%ecx
  4007d9:	0f 87 31 01 00 00    	ja     400910 <_free_r+0x1f0>
  4007df:	89 c1                	mov    %eax,%ecx
  4007e1:	c1 e9 06             	shr    $0x6,%ecx
  4007e4:	83 c1 38             	add    $0x38,%ecx
  4007e7:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
  4007ea:	8d 3c 9d 80 2a 40 00 	lea    0x402a80(,%ebx,4),%edi
  4007f1:	8b 5f 08             	mov    0x8(%edi),%ebx
  4007f4:	39 fb                	cmp    %edi,%ebx
  4007f6:	0f 84 24 01 00 00    	je     400920 <_free_r+0x200>
  4007fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  400800:	8b 4b 04             	mov    0x4(%ebx),%ecx
  400803:	83 e1 fc             	and    $0xfffffffc,%ecx
  400806:	39 c8                	cmp    %ecx,%eax
  400808:	73 07                	jae    400811 <_free_r+0xf1>
  40080a:	8b 5b 08             	mov    0x8(%ebx),%ebx
  40080d:	39 df                	cmp    %ebx,%edi
  40080f:	75 ef                	jne    400800 <_free_r+0xe0>
  400811:	8b 43 0c             	mov    0xc(%ebx),%eax
  400814:	89 42 0c             	mov    %eax,0xc(%edx)
  400817:	89 5a 08             	mov    %ebx,0x8(%edx)
  40081a:	89 53 0c             	mov    %edx,0xc(%ebx)
  40081d:	89 50 08             	mov    %edx,0x8(%eax)

    set_head(p, sz | PREV_INUSE);
    top = p;
    if ((unsigned long)(sz) >= (unsigned long)trim_threshold) 
      malloc_trim(RCALL top_pad); 
    MALLOC_UNLOCK;
  400820:	89 74 24 40          	mov    %esi,0x40(%esp)
    frontlink(p, sz, idx, bck, fwd);  

  MALLOC_UNLOCK;

#endif /* MALLOC_PROVIDED */
}
  400824:	83 c4 2c             	add    $0x2c,%esp
  400827:	5b                   	pop    %ebx
  400828:	5e                   	pop    %esi
  400829:	5f                   	pop    %edi
  40082a:	5d                   	pop    %ebp

    set_head(p, sz | PREV_INUSE);
    top = p;
    if ((unsigned long)(sz) >= (unsigned long)trim_threshold) 
      malloc_trim(RCALL top_pad); 
    MALLOC_UNLOCK;
  40082b:	e9 c0 08 00 00       	jmp    4010f0 <__malloc_unlock>
    frontlink(p, sz, idx, bck, fwd);  

  MALLOC_UNLOCK;

#endif /* MALLOC_PROVIDED */
}
  400830:	83 c4 2c             	add    $0x2c,%esp
  400833:	5b                   	pop    %ebx
  400834:	5e                   	pop    %esi
  400835:	5f                   	pop    %edi
  400836:	5d                   	pop    %ebp
  400837:	c3                   	ret    
  400838:	90                   	nop
  400839:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi


  set_head(p, sz | PREV_INUSE);
  set_foot(p, sz);
  if (!islr)
    frontlink(p, sz, idx, bck, fwd);  
  400840:	c1 e8 03             	shr    $0x3,%eax
  400843:	bb 01 00 00 00       	mov    $0x1,%ebx
  400848:	89 c1                	mov    %eax,%ecx
  40084a:	c1 f9 02             	sar    $0x2,%ecx
  40084d:	8d 04 c5 80 2a 40 00 	lea    0x402a80(,%eax,8),%eax
  400854:	d3 e3                	shl    %cl,%ebx
  400856:	8b 48 08             	mov    0x8(%eax),%ecx
  400859:	09 1d 84 2a 40 00    	or     %ebx,0x402a84
  40085f:	89 42 0c             	mov    %eax,0xc(%edx)
  400862:	89 4a 08             	mov    %ecx,0x8(%edx)
  400865:	89 51 0c             	mov    %edx,0xc(%ecx)
  400868:	89 50 08             	mov    %edx,0x8(%eax)

    set_head(p, sz | PREV_INUSE);
    top = p;
    if ((unsigned long)(sz) >= (unsigned long)trim_threshold) 
      malloc_trim(RCALL top_pad); 
    MALLOC_UNLOCK;
  40086b:	89 74 24 40          	mov    %esi,0x40(%esp)
    frontlink(p, sz, idx, bck, fwd);  

  MALLOC_UNLOCK;

#endif /* MALLOC_PROVIDED */
}
  40086f:	83 c4 2c             	add    $0x2c,%esp
  400872:	5b                   	pop    %ebx
  400873:	5e                   	pop    %esi
  400874:	5f                   	pop    %edi
  400875:	5d                   	pop    %ebp

    set_head(p, sz | PREV_INUSE);
    top = p;
    if ((unsigned long)(sz) >= (unsigned long)trim_threshold) 
      malloc_trim(RCALL top_pad); 
    MALLOC_UNLOCK;
  400876:	e9 75 08 00 00       	jmp    4010f0 <__malloc_unlock>
  40087b:	90                   	nop
  40087c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  next = chunk_at_offset(p, sz);
  nextsz = chunksize(next);
  
  if (next == top)                            /* merge with top */
  {
    sz += nextsz;
  400880:	01 d8                	add    %ebx,%eax

    if (!(hd & PREV_INUSE))                    /* consolidate backward */
  400882:	83 e5 01             	and    $0x1,%ebp
  400885:	75 13                	jne    40089a <_free_r+0x17a>
    {
      prevsz = p->prev_size;
  400887:	8b 4f f8             	mov    -0x8(%edi),%ecx
      p = chunk_at_offset(p, -prevsz);
  40088a:	29 ca                	sub    %ecx,%edx
      sz += prevsz;
  40088c:	01 c8                	add    %ecx,%eax
      unlink(p, bck, fwd);
  40088e:	8b 5a 08             	mov    0x8(%edx),%ebx
  400891:	8b 4a 0c             	mov    0xc(%edx),%ecx
  400894:	89 4b 0c             	mov    %ecx,0xc(%ebx)
  400897:	89 59 08             	mov    %ebx,0x8(%ecx)
    }

    set_head(p, sz | PREV_INUSE);
  40089a:	89 c1                	mov    %eax,%ecx
    top = p;
  40089c:	89 15 88 2a 40 00    	mov    %edx,0x402a88
      p = chunk_at_offset(p, -prevsz);
      sz += prevsz;
      unlink(p, bck, fwd);
    }

    set_head(p, sz | PREV_INUSE);
  4008a2:	83 c9 01             	or     $0x1,%ecx
    top = p;
    if ((unsigned long)(sz) >= (unsigned long)trim_threshold) 
  4008a5:	3b 05 64 2a 40 00    	cmp    0x402a64,%eax
      p = chunk_at_offset(p, -prevsz);
      sz += prevsz;
      unlink(p, bck, fwd);
    }

    set_head(p, sz | PREV_INUSE);
  4008ab:	89 4a 04             	mov    %ecx,0x4(%edx)
    top = p;
    if ((unsigned long)(sz) >= (unsigned long)trim_threshold) 
  4008ae:	0f 82 6c ff ff ff    	jb     400820 <_free_r+0x100>
      malloc_trim(RCALL top_pad); 
  4008b4:	a1 10 2f 40 00       	mov    0x402f10,%eax
  4008b9:	89 34 24             	mov    %esi,(%esp)
  4008bc:	89 44 24 04          	mov    %eax,0x4(%esp)
  4008c0:	e8 6b fd ff ff       	call   400630 <_malloc_trim_r>
  4008c5:	e9 56 ff ff ff       	jmp    400820 <_free_r+0x100>
  4008ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    prevsz = p->prev_size;
    p = chunk_at_offset(p, -prevsz);
    sz += prevsz;
    
    if (p->fd == last_remainder)             /* keep as last_remainder */
      islr = 1;
  4008d0:	c7 44 24 1c 01 00 00 	movl   $0x1,0x1c(%esp)
  4008d7:	00 
  4008d8:	e9 b1 fe ff ff       	jmp    40078e <_free_r+0x6e>
  4008dd:	8d 76 00             	lea    0x0(%esi),%esi
    else
      unlink(next, bck, fwd);
  }


  set_head(p, sz | PREV_INUSE);
  4008e0:	89 c1                	mov    %eax,%ecx
    sz += nextsz;
    
    if (!islr && next->fd == last_remainder)  /* re-insert last_remainder */
    {
      islr = 1;
      link_last_remainder(p);   
  4008e2:	89 15 94 2a 40 00    	mov    %edx,0x402a94
    else
      unlink(next, bck, fwd);
  }


  set_head(p, sz | PREV_INUSE);
  4008e8:	83 c9 01             	or     $0x1,%ecx
    sz += nextsz;
    
    if (!islr && next->fd == last_remainder)  /* re-insert last_remainder */
    {
      islr = 1;
      link_last_remainder(p);   
  4008eb:	89 15 90 2a 40 00    	mov    %edx,0x402a90
  4008f1:	c7 42 0c 88 2a 40 00 	movl   $0x402a88,0xc(%edx)
  4008f8:	c7 42 08 88 2a 40 00 	movl   $0x402a88,0x8(%edx)
    else
      unlink(next, bck, fwd);
  }


  set_head(p, sz | PREV_INUSE);
  4008ff:	89 4a 04             	mov    %ecx,0x4(%edx)
  set_foot(p, sz);
  400902:	89 04 02             	mov    %eax,(%edx,%eax,1)
  400905:	e9 16 ff ff ff       	jmp    400820 <_free_r+0x100>
  40090a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  if (!islr)
    frontlink(p, sz, idx, bck, fwd);  
  400910:	83 f9 14             	cmp    $0x14,%ecx
  400913:	77 2b                	ja     400940 <_free_r+0x220>
  400915:	83 c1 5b             	add    $0x5b,%ecx
  400918:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
  40091b:	e9 ca fe ff ff       	jmp    4007ea <_free_r+0xca>
  400920:	c1 f9 02             	sar    $0x2,%ecx
  400923:	b8 01 00 00 00       	mov    $0x1,%eax
  400928:	d3 e0                	shl    %cl,%eax
  40092a:	09 05 84 2a 40 00    	or     %eax,0x402a84
  400930:	89 d8                	mov    %ebx,%eax
  400932:	e9 dd fe ff ff       	jmp    400814 <_free_r+0xf4>
  400937:	89 f6                	mov    %esi,%esi
  400939:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  400940:	83 f9 54             	cmp    $0x54,%ecx
  400943:	77 10                	ja     400955 <_free_r+0x235>
  400945:	89 c1                	mov    %eax,%ecx
  400947:	c1 e9 0c             	shr    $0xc,%ecx
  40094a:	83 c1 6e             	add    $0x6e,%ecx
  40094d:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
  400950:	e9 95 fe ff ff       	jmp    4007ea <_free_r+0xca>
  400955:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
  40095b:	77 10                	ja     40096d <_free_r+0x24d>
  40095d:	89 c1                	mov    %eax,%ecx
  40095f:	c1 e9 0f             	shr    $0xf,%ecx
  400962:	83 c1 77             	add    $0x77,%ecx
  400965:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
  400968:	e9 7d fe ff ff       	jmp    4007ea <_free_r+0xca>
  40096d:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
  400973:	77 10                	ja     400985 <_free_r+0x265>
  400975:	89 c1                	mov    %eax,%ecx
  400977:	c1 e9 12             	shr    $0x12,%ecx
  40097a:	83 c1 7c             	add    $0x7c,%ecx
  40097d:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
  400980:	e9 65 fe ff ff       	jmp    4007ea <_free_r+0xca>
  400985:	bb fc 00 00 00       	mov    $0xfc,%ebx
  40098a:	b9 7e 00 00 00       	mov    $0x7e,%ecx
  40098f:	e9 56 fe ff ff       	jmp    4007ea <_free_r+0xca>
  400994:	90                   	nop
  400995:	90                   	nop
  400996:	90                   	nop
  400997:	90                   	nop
  400998:	90                   	nop
  400999:	90                   	nop
  40099a:	90                   	nop
  40099b:	90                   	nop
  40099c:	90                   	nop
  40099d:	90                   	nop
  40099e:	90                   	nop
  40099f:	90                   	nop

004009a0 <_malloc_r>:
#if __STD_C
Void_t* mALLOc(RARG size_t bytes)
#else
Void_t* mALLOc(RARG bytes) RDECL size_t bytes;
#endif
{
  4009a0:	55                   	push   %ebp
  4009a1:	57                   	push   %edi
  4009a2:	56                   	push   %esi
  4009a3:	53                   	push   %ebx
  4009a4:	83 ec 2c             	sub    $0x2c,%esp
  4009a7:	8b 44 24 44          	mov    0x44(%esp),%eax
  int       startidx;                /* first bin of a traversed block */
  mchunkptr fwd;                     /* misc temp for linking */
  mchunkptr bck;                     /* misc temp for linking */
  mbinptr q;                         /* misc temp */

  INTERNAL_SIZE_T nb  = request2size(bytes);  /* padded request size; */
  4009ab:	8d 58 0b             	lea    0xb(%eax),%ebx
  4009ae:	83 fb 16             	cmp    $0x16,%ebx
  4009b1:	76 6d                	jbe    400a20 <_malloc_r+0x80>
  4009b3:	83 e3 f8             	and    $0xfffffff8,%ebx
  4009b6:	89 da                	mov    %ebx,%edx
  4009b8:	c1 ea 1f             	shr    $0x1f,%edx

  /* Check for overflow and just fail, if so. */
  if (nb > INT_MAX || nb < bytes)
  4009bb:	39 c3                	cmp    %eax,%ebx
  {
    RERRNO = ENOMEM;
    return 0;
  }

  MALLOC_LOCK;
  4009bd:	8b 44 24 40          	mov    0x40(%esp),%eax
  mbinptr q;                         /* misc temp */

  INTERNAL_SIZE_T nb  = request2size(bytes);  /* padded request size; */

  /* Check for overflow and just fail, if so. */
  if (nb > INT_MAX || nb < bytes)
  4009c1:	72 6c                	jb     400a2f <_malloc_r+0x8f>
  4009c3:	84 d2                	test   %dl,%dl
  4009c5:	75 68                	jne    400a2f <_malloc_r+0x8f>
  {
    RERRNO = ENOMEM;
    return 0;
  }

  MALLOC_LOCK;
  4009c7:	89 04 24             	mov    %eax,(%esp)
  4009ca:	e8 11 07 00 00       	call   4010e0 <__malloc_lock>

  /* Check for exact match in a bin */

  if (is_small_request(nb))  /* Faster version for small requests */
  4009cf:	81 fb f7 01 00 00    	cmp    $0x1f7,%ebx
  4009d5:	77 69                	ja     400a40 <_malloc_r+0xa0>
  {
    idx = smallbin_index(nb); 
  4009d7:	89 da                	mov    %ebx,%edx
  4009d9:	c1 ea 03             	shr    $0x3,%edx

    /* No traversal or size check necessary for small bins.  */

    q = bin_at(idx);
  4009dc:	8d 04 d5 80 2a 40 00 	lea    0x402a80(,%edx,8),%eax
    victim = last(q);
  4009e3:	8b 70 0c             	mov    0xc(%eax),%esi

#if MALLOC_ALIGN != 16
    /* Also scan the next one, since it would have a remainder < MINSIZE */
    if (victim == q)
  4009e6:	39 c6                	cmp    %eax,%esi
  4009e8:	0f 84 22 05 00 00    	je     400f10 <_malloc_r+0x570>
      victim = last(q);
    }
#endif
    if (victim != q)
    {
      victim_size = chunksize(victim);
  4009ee:	8b 46 04             	mov    0x4(%esi),%eax
  4009f1:	83 e0 fc             	and    $0xfffffffc,%eax
        break;   
      }

      else if (remainder_size >= 0) /* exact fit */
      {
        unlink(victim, bck, fwd);
  4009f4:	8b 56 0c             	mov    0xc(%esi),%edx
  4009f7:	8b 4e 08             	mov    0x8(%esi),%ecx
  4009fa:	89 51 0c             	mov    %edx,0xc(%ecx)
  4009fd:	89 4a 08             	mov    %ecx,0x8(%edx)
        set_inuse_bit_at_offset(victim, victim_size);
  400a00:	83 4c 06 04 01       	orl    $0x1,0x4(%esi,%eax,1)
        check_malloced_chunk(victim, nb);
	MALLOC_UNLOCK;
  400a05:	8b 44 24 40          	mov    0x40(%esp),%eax
  400a09:	89 04 24             	mov    %eax,(%esp)
  400a0c:	e8 df 06 00 00       	call   4010f0 <__malloc_unlock>
        return chunk2mem(victim);
  400a11:	8d 46 08             	lea    0x8(%esi),%eax
  check_malloced_chunk(victim, nb);
  MALLOC_UNLOCK;
  return chunk2mem(victim);

#endif /* MALLOC_PROVIDED */
}
  400a14:	83 c4 2c             	add    $0x2c,%esp
  400a17:	5b                   	pop    %ebx
  400a18:	5e                   	pop    %esi
  400a19:	5f                   	pop    %edi
  400a1a:	5d                   	pop    %ebp
  400a1b:	c3                   	ret    
  400a1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  int       startidx;                /* first bin of a traversed block */
  mchunkptr fwd;                     /* misc temp for linking */
  mchunkptr bck;                     /* misc temp for linking */
  mbinptr q;                         /* misc temp */

  INTERNAL_SIZE_T nb  = request2size(bytes);  /* padded request size; */
  400a20:	bb 10 00 00 00       	mov    $0x10,%ebx
  400a25:	31 d2                	xor    %edx,%edx

  /* Check for overflow and just fail, if so. */
  if (nb > INT_MAX || nb < bytes)
  400a27:	39 c3                	cmp    %eax,%ebx
  {
    RERRNO = ENOMEM;
    return 0;
  }

  MALLOC_LOCK;
  400a29:	8b 44 24 40          	mov    0x40(%esp),%eax
  mbinptr q;                         /* misc temp */

  INTERNAL_SIZE_T nb  = request2size(bytes);  /* padded request size; */

  /* Check for overflow and just fail, if so. */
  if (nb > INT_MAX || nb < bytes)
  400a2d:	73 94                	jae    4009c3 <_malloc_r+0x23>
  {
    RERRNO = ENOMEM;
  400a2f:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
  check_malloced_chunk(victim, nb);
  MALLOC_UNLOCK;
  return chunk2mem(victim);

#endif /* MALLOC_PROVIDED */
}
  400a35:	83 c4 2c             	add    $0x2c,%esp

  /* Check for overflow and just fail, if so. */
  if (nb > INT_MAX || nb < bytes)
  {
    RERRNO = ENOMEM;
    return 0;
  400a38:	31 c0                	xor    %eax,%eax
  check_malloced_chunk(victim, nb);
  MALLOC_UNLOCK;
  return chunk2mem(victim);

#endif /* MALLOC_PROVIDED */
}
  400a3a:	5b                   	pop    %ebx
  400a3b:	5e                   	pop    %esi
  400a3c:	5f                   	pop    %edi
  400a3d:	5d                   	pop    %ebp
  400a3e:	c3                   	ret    
  400a3f:	90                   	nop
    idx += 2; /* Set for bin scan below. We've already scanned 2 bins. */

  }
  else
  {
    idx = bin_index(nb);
  400a40:	89 df                	mov    %ebx,%edi
  400a42:	c1 ef 09             	shr    $0x9,%edi
  400a45:	0f 84 95 01 00 00    	je     400be0 <_malloc_r+0x240>
  400a4b:	83 ff 04             	cmp    $0x4,%edi
  400a4e:	0f 87 7c 03 00 00    	ja     400dd0 <_malloc_r+0x430>
  400a54:	89 df                	mov    %ebx,%edi
  400a56:	c1 ef 06             	shr    $0x6,%edi
  400a59:	83 c7 38             	add    $0x38,%edi
  400a5c:	8d 04 3f             	lea    (%edi,%edi,1),%eax
    bin = bin_at(idx);
  400a5f:	8d 0c 85 80 2a 40 00 	lea    0x402a80(,%eax,4),%ecx

    for (victim = last(bin); victim != bin; victim = victim->bk)
  400a66:	8b 71 0c             	mov    0xc(%ecx),%esi
  400a69:	39 f1                	cmp    %esi,%ecx
  400a6b:	75 0e                	jne    400a7b <_malloc_r+0xdb>
  400a6d:	eb 1c                	jmp    400a8b <_malloc_r+0xeb>
  400a6f:	90                   	nop
      {
        --idx; /* adjust to rescan below after checking last remainder */
        break;   
      }

      else if (remainder_size >= 0) /* exact fit */
  400a70:	85 d2                	test   %edx,%edx
  400a72:	79 80                	jns    4009f4 <_malloc_r+0x54>
  else
  {
    idx = bin_index(nb);
    bin = bin_at(idx);

    for (victim = last(bin); victim != bin; victim = victim->bk)
  400a74:	8b 76 0c             	mov    0xc(%esi),%esi
  400a77:	39 f1                	cmp    %esi,%ecx
  400a79:	74 10                	je     400a8b <_malloc_r+0xeb>
    {
      victim_size = chunksize(victim);
  400a7b:	8b 46 04             	mov    0x4(%esi),%eax
  400a7e:	83 e0 fc             	and    $0xfffffffc,%eax
      remainder_size = long_sub_size_t(victim_size, nb);
  400a81:	89 c2                	mov    %eax,%edx
  400a83:	29 da                	sub    %ebx,%edx
      
      if (remainder_size >= (long)MINSIZE) /* too big */
  400a85:	83 fa 0f             	cmp    $0xf,%edx
  400a88:	7e e6                	jle    400a70 <_malloc_r+0xd0>
      {
        --idx; /* adjust to rescan below after checking last remainder */
  400a8a:	4f                   	dec    %edi
	MALLOC_UNLOCK;
        return chunk2mem(victim);
      }
    }

    ++idx; 
  400a8b:	8d 6f 01             	lea    0x1(%edi),%ebp

  }

  /* Try to use the last split-off remainder */

  if ( (victim = last_remainder->fd) != last_remainder)
  400a8e:	8b 35 90 2a 40 00    	mov    0x402a90,%esi
  400a94:	a1 84 2a 40 00       	mov    0x402a84,%eax
  400a99:	81 fe 88 2a 40 00    	cmp    $0x402a88,%esi
  400a9f:	74 6d                	je     400b0e <_malloc_r+0x16e>
  {
    victim_size = chunksize(victim);
  400aa1:	8b 7e 04             	mov    0x4(%esi),%edi
  400aa4:	83 e7 fc             	and    $0xfffffffc,%edi
    remainder_size = long_sub_size_t(victim_size, nb);
  400aa7:	89 f8                	mov    %edi,%eax
  400aa9:	29 d8                	sub    %ebx,%eax

    if (remainder_size >= (long)MINSIZE) /* re-split */
  400aab:	83 f8 0f             	cmp    $0xf,%eax
  400aae:	0f 8f ac 03 00 00    	jg     400e60 <_malloc_r+0x4c0>
      check_malloced_chunk(victim, nb);
      MALLOC_UNLOCK;
      return chunk2mem(victim);
    }

    clear_last_remainder;
  400ab4:	c7 05 94 2a 40 00 88 	movl   $0x402a88,0x402a94
  400abb:	2a 40 00 
  400abe:	c7 05 90 2a 40 00 88 	movl   $0x402a88,0x402a90
  400ac5:	2a 40 00 

    if (remainder_size >= 0)  /* exhaust */
  400ac8:	85 c0                	test   %eax,%eax
  400aca:	0f 89 20 01 00 00    	jns    400bf0 <_malloc_r+0x250>
      return chunk2mem(victim);
    }

    /* Else place in bin */

    frontlink(victim, victim_size, remainder_index, bck, fwd);
  400ad0:	81 ff ff 01 00 00    	cmp    $0x1ff,%edi
  400ad6:	0f 87 24 03 00 00    	ja     400e00 <_malloc_r+0x460>
  400adc:	c1 ef 03             	shr    $0x3,%edi
  400adf:	b8 01 00 00 00       	mov    $0x1,%eax
  400ae4:	89 f9                	mov    %edi,%ecx
  400ae6:	8b 15 84 2a 40 00    	mov    0x402a84,%edx
  400aec:	c1 f9 02             	sar    $0x2,%ecx
  400aef:	d3 e0                	shl    %cl,%eax
  400af1:	09 d0                	or     %edx,%eax
  400af3:	8d 14 fd 80 2a 40 00 	lea    0x402a80(,%edi,8),%edx
  400afa:	89 56 0c             	mov    %edx,0xc(%esi)
  400afd:	a3 84 2a 40 00       	mov    %eax,0x402a84
  400b02:	8b 4a 08             	mov    0x8(%edx),%ecx
  400b05:	89 4e 08             	mov    %ecx,0x8(%esi)
  400b08:	89 72 08             	mov    %esi,0x8(%edx)
  400b0b:	89 71 0c             	mov    %esi,0xc(%ecx)
  /* 
     If there are any possibly nonempty big-enough blocks, 
     search for best fitting chunk by scanning bins in blockwidth units.
  */

  if ( (block = idx2binblock(idx)) <= binblocks)  
  400b0e:	89 e9                	mov    %ebp,%ecx
  400b10:	bf 01 00 00 00       	mov    $0x1,%edi
  400b15:	c1 f9 02             	sar    $0x2,%ecx
  400b18:	d3 e7                	shl    %cl,%edi
  400b1a:	39 c7                	cmp    %eax,%edi
  400b1c:	0f 87 ee 00 00 00    	ja     400c10 <_malloc_r+0x270>
  {

    /* Get to the first marked block */

    if ( (block & binblocks) == 0) 
  400b22:	85 f8                	test   %edi,%eax
  400b24:	75 23                	jne    400b49 <_malloc_r+0x1a9>
    {
      /* force to an even block boundary */
      idx = (idx & ~(BINBLOCKWIDTH - 1)) + BINBLOCKWIDTH;
  400b26:	89 ea                	mov    %ebp,%edx
      block <<= 1;
  400b28:	01 ff                	add    %edi,%edi
    /* Get to the first marked block */

    if ( (block & binblocks) == 0) 
    {
      /* force to an even block boundary */
      idx = (idx & ~(BINBLOCKWIDTH - 1)) + BINBLOCKWIDTH;
  400b2a:	83 e2 fc             	and    $0xfffffffc,%edx
      block <<= 1;
      while ((block & binblocks) == 0)
  400b2d:	85 f8                	test   %edi,%eax
    /* Get to the first marked block */

    if ( (block & binblocks) == 0) 
    {
      /* force to an even block boundary */
      idx = (idx & ~(BINBLOCKWIDTH - 1)) + BINBLOCKWIDTH;
  400b2f:	8d 6a 04             	lea    0x4(%edx),%ebp
      block <<= 1;
      while ((block & binblocks) == 0)
  400b32:	75 15                	jne    400b49 <_malloc_r+0x1a9>
  400b34:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  400b3a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi
      {
        idx += BINBLOCKWIDTH;
        block <<= 1;
  400b40:	01 ff                	add    %edi,%edi
      /* force to an even block boundary */
      idx = (idx & ~(BINBLOCKWIDTH - 1)) + BINBLOCKWIDTH;
      block <<= 1;
      while ((block & binblocks) == 0)
      {
        idx += BINBLOCKWIDTH;
  400b42:	83 c5 04             	add    $0x4,%ebp
    if ( (block & binblocks) == 0) 
    {
      /* force to an even block boundary */
      idx = (idx & ~(BINBLOCKWIDTH - 1)) + BINBLOCKWIDTH;
      block <<= 1;
      while ((block & binblocks) == 0)
  400b45:	85 f8                	test   %edi,%eax
  400b47:	74 f7                	je     400b40 <_malloc_r+0x1a0>
      
    /* For each possibly nonempty block ... */
    for (;;)  
    {
      startidx = idx;          /* (track incomplete blocks) */
      q = bin = bin_at(idx);
  400b49:	8d 04 ed 80 2a 40 00 	lea    0x402a80(,%ebp,8),%eax
  400b50:	89 6c 24 18          	mov    %ebp,0x18(%esp)
  400b54:	89 44 24 1c          	mov    %eax,0x1c(%esp)
  400b58:	89 c1                	mov    %eax,%ecx
      /* For each bin in this block ... */
      do
      {
        /* Find and use first big enough chunk ... */

        for (victim = last(bin); victim != bin; victim = victim->bk)
  400b5a:	8b 71 0c             	mov    0xc(%ecx),%esi
  400b5d:	39 f1                	cmp    %esi,%ecx
  400b5f:	75 22                	jne    400b83 <_malloc_r+0x1e3>
  400b61:	e9 4a 03 00 00       	jmp    400eb0 <_malloc_r+0x510>
  400b66:	8d 76 00             	lea    0x0(%esi),%esi
  400b69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
            check_malloced_chunk(victim, nb);
	    MALLOC_UNLOCK;
            return chunk2mem(victim);
          }

          else if (remainder_size >= 0)  /* take */
  400b70:	85 d2                	test   %edx,%edx
  400b72:	0f 89 b8 03 00 00    	jns    400f30 <_malloc_r+0x590>
      /* For each bin in this block ... */
      do
      {
        /* Find and use first big enough chunk ... */

        for (victim = last(bin); victim != bin; victim = victim->bk)
  400b78:	8b 76 0c             	mov    0xc(%esi),%esi
  400b7b:	39 f1                	cmp    %esi,%ecx
  400b7d:	0f 84 2d 03 00 00    	je     400eb0 <_malloc_r+0x510>
        {
          victim_size = chunksize(victim);
  400b83:	8b 46 04             	mov    0x4(%esi),%eax
  400b86:	83 e0 fc             	and    $0xfffffffc,%eax
          remainder_size = long_sub_size_t(victim_size, nb);
  400b89:	89 c2                	mov    %eax,%edx
  400b8b:	29 da                	sub    %ebx,%edx

          if (remainder_size >= (long)MINSIZE) /* split */
  400b8d:	83 fa 0f             	cmp    $0xf,%edx
  400b90:	7e de                	jle    400b70 <_malloc_r+0x1d0>
          {
            remainder = chunk_at_offset(victim, nb);
  400b92:	8d 04 1e             	lea    (%esi,%ebx,1),%eax
            set_head(victim, nb | PREV_INUSE);
  400b95:	83 cb 01             	or     $0x1,%ebx
            unlink(victim, bck, fwd);
  400b98:	8b 4e 0c             	mov    0xc(%esi),%ecx
          remainder_size = long_sub_size_t(victim_size, nb);

          if (remainder_size >= (long)MINSIZE) /* split */
          {
            remainder = chunk_at_offset(victim, nb);
            set_head(victim, nb | PREV_INUSE);
  400b9b:	89 5e 04             	mov    %ebx,0x4(%esi)
            unlink(victim, bck, fwd);
  400b9e:	8b 5e 08             	mov    0x8(%esi),%ebx
            link_last_remainder(remainder);
            set_head(remainder, remainder_size | PREV_INUSE);
            set_foot(remainder, remainder_size);
  400ba1:	89 14 10             	mov    %edx,(%eax,%edx,1)

          if (remainder_size >= (long)MINSIZE) /* split */
          {
            remainder = chunk_at_offset(victim, nb);
            set_head(victim, nb | PREV_INUSE);
            unlink(victim, bck, fwd);
  400ba4:	89 59 08             	mov    %ebx,0x8(%ecx)
            link_last_remainder(remainder);
  400ba7:	a3 90 2a 40 00       	mov    %eax,0x402a90

          if (remainder_size >= (long)MINSIZE) /* split */
          {
            remainder = chunk_at_offset(victim, nb);
            set_head(victim, nb | PREV_INUSE);
            unlink(victim, bck, fwd);
  400bac:	89 4b 0c             	mov    %ecx,0xc(%ebx)
            link_last_remainder(remainder);
            set_head(remainder, remainder_size | PREV_INUSE);
  400baf:	89 d1                	mov    %edx,%ecx
  400bb1:	83 c9 01             	or     $0x1,%ecx
          if (remainder_size >= (long)MINSIZE) /* split */
          {
            remainder = chunk_at_offset(victim, nb);
            set_head(victim, nb | PREV_INUSE);
            unlink(victim, bck, fwd);
            link_last_remainder(remainder);
  400bb4:	a3 94 2a 40 00       	mov    %eax,0x402a94
  400bb9:	c7 40 08 88 2a 40 00 	movl   $0x402a88,0x8(%eax)
  400bc0:	c7 40 0c 88 2a 40 00 	movl   $0x402a88,0xc(%eax)
            set_head(remainder, remainder_size | PREV_INUSE);
  400bc7:	89 48 04             	mov    %ecx,0x4(%eax)
            set_foot(remainder, remainder_size);
            check_malloced_chunk(victim, nb);
	    MALLOC_UNLOCK;
  400bca:	8b 44 24 40          	mov    0x40(%esp),%eax
  400bce:	89 04 24             	mov    %eax,(%esp)
  400bd1:	e8 1a 05 00 00       	call   4010f0 <__malloc_unlock>
            return chunk2mem(victim);
  400bd6:	8d 46 08             	lea    0x8(%esi),%eax
  400bd9:	e9 36 fe ff ff       	jmp    400a14 <_malloc_r+0x74>
  400bde:	66 90                	xchg   %ax,%ax
    idx += 2; /* Set for bin scan below. We've already scanned 2 bins. */

  }
  else
  {
    idx = bin_index(nb);
  400be0:	89 df                	mov    %ebx,%edi
  400be2:	c1 ef 03             	shr    $0x3,%edi
  400be5:	8d 04 3f             	lea    (%edi,%edi,1),%eax
  400be8:	e9 72 fe ff ff       	jmp    400a5f <_malloc_r+0xbf>
  400bed:	8d 76 00             	lea    0x0(%esi),%esi

    clear_last_remainder;

    if (remainder_size >= 0)  /* exhaust */
    {
      set_inuse_bit_at_offset(victim, victim_size);
  400bf0:	83 4c 3e 04 01       	orl    $0x1,0x4(%esi,%edi,1)
      check_malloced_chunk(victim, nb);
      MALLOC_UNLOCK;
  400bf5:	8b 44 24 40          	mov    0x40(%esp),%eax
  400bf9:	89 04 24             	mov    %eax,(%esp)
  400bfc:	e8 ef 04 00 00       	call   4010f0 <__malloc_unlock>
  check_malloced_chunk(victim, nb);
  MALLOC_UNLOCK;
  return chunk2mem(victim);

#endif /* MALLOC_PROVIDED */
}
  400c01:	83 c4 2c             	add    $0x2c,%esp
    if (remainder_size >= 0)  /* exhaust */
    {
      set_inuse_bit_at_offset(victim, victim_size);
      check_malloced_chunk(victim, nb);
      MALLOC_UNLOCK;
      return chunk2mem(victim);
  400c04:	8d 46 08             	lea    0x8(%esi),%eax
  check_malloced_chunk(victim, nb);
  MALLOC_UNLOCK;
  return chunk2mem(victim);

#endif /* MALLOC_PROVIDED */
}
  400c07:	5b                   	pop    %ebx
  400c08:	5e                   	pop    %esi
  400c09:	5f                   	pop    %edi
  400c0a:	5d                   	pop    %ebp
  400c0b:	c3                   	ret    
  400c0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi


  /* Try to use top chunk */

  /* Require that there be a remainder, ensuring top always exists  */
  remainder_size = long_sub_size_t(chunksize(top), nb);
  400c10:	8b 35 88 2a 40 00    	mov    0x402a88,%esi
  400c16:	8b 7e 04             	mov    0x4(%esi),%edi
  400c19:	83 e7 fc             	and    $0xfffffffc,%edi
  if (chunksize(top) < nb || remainder_size < (long)MINSIZE)
  400c1c:	39 fb                	cmp    %edi,%ebx
  400c1e:	77 0d                	ja     400c2d <_malloc_r+0x28d>


  /* Try to use top chunk */

  /* Require that there be a remainder, ensuring top always exists  */
  remainder_size = long_sub_size_t(chunksize(top), nb);
  400c20:	89 f8                	mov    %edi,%eax
  400c22:	29 d8                	sub    %ebx,%eax
  if (chunksize(top) < nb || remainder_size < (long)MINSIZE)
  400c24:	83 f8 0f             	cmp    $0xf,%eax
  400c27:	0f 8f 73 01 00 00    	jg     400da0 <_malloc_r+0x400>
  INTERNAL_SIZE_T old_top_size = chunksize(old_top);
  char*     old_end      = (char*)(chunk_at_offset(old_top, old_top_size));

  /* Pad request with top_pad plus minimal overhead */
  
  INTERNAL_SIZE_T    sbrk_size     = nb + top_pad + MINSIZE;
  400c2d:	8b 0d 10 2f 40 00    	mov    0x402f10,%ecx
  char*     new_brk;              /* return of 2nd sbrk call */
  INTERNAL_SIZE_T top_size;       /* new size of top chunk */

  mchunkptr old_top     = top;  /* Record state of old top */
  INTERNAL_SIZE_T old_top_size = chunksize(old_top);
  char*     old_end      = (char*)(chunk_at_offset(old_top, old_top_size));
  400c33:	8d 04 3e             	lea    (%esi,%edi,1),%eax

  /* Pad request with top_pad plus minimal overhead */
  
  INTERNAL_SIZE_T    sbrk_size     = nb + top_pad + MINSIZE;
  400c36:	01 d9                	add    %ebx,%ecx
  char*     new_brk;              /* return of 2nd sbrk call */
  INTERNAL_SIZE_T top_size;       /* new size of top chunk */

  mchunkptr old_top     = top;  /* Record state of old top */
  INTERNAL_SIZE_T old_top_size = chunksize(old_top);
  char*     old_end      = (char*)(chunk_at_offset(old_top, old_top_size));
  400c38:	89 44 24 18          	mov    %eax,0x18(%esp)

  /* If not the first time through, round to preserve page boundary */
  /* Otherwise, we need to correct to a page size below anyway. */
  /* (We also correct below if an intervening foreign sbrk call.) */

  if (sbrk_base != (char*)(-1))
  400c3c:	83 3d 60 2a 40 00 ff 	cmpl   $0xffffffff,0x402a60
  INTERNAL_SIZE_T old_top_size = chunksize(old_top);
  char*     old_end      = (char*)(chunk_at_offset(old_top, old_top_size));

  /* Pad request with top_pad plus minimal overhead */
  
  INTERNAL_SIZE_T    sbrk_size     = nb + top_pad + MINSIZE;
  400c43:	8d 69 10             	lea    0x10(%ecx),%ebp

  /* If not the first time through, round to preserve page boundary */
  /* Otherwise, we need to correct to a page size below anyway. */
  /* (We also correct below if an intervening foreign sbrk call.) */

  if (sbrk_base != (char*)(-1))
  400c46:	74 0c                	je     400c54 <_malloc_r+0x2b4>
    sbrk_size = (sbrk_size + (pagesz - 1)) & ~(pagesz - 1);
  400c48:	8d a9 0f 10 00 00    	lea    0x100f(%ecx),%ebp
  400c4e:	81 e5 00 f0 ff ff    	and    $0xfffff000,%ebp

  brk = (char*)(MORECORE (sbrk_size));
  400c54:	8b 44 24 40          	mov    0x40(%esp),%eax
  400c58:	89 6c 24 04          	mov    %ebp,0x4(%esp)
  400c5c:	89 04 24             	mov    %eax,(%esp)
  400c5f:	e8 9c 04 00 00       	call   401100 <_sbrk_r>
  400c64:	89 c1                	mov    %eax,%ecx

  /* Fail if sbrk failed or if a foreign sbrk call killed our space */
  if (brk == (char*)(MORECORE_FAILURE) || 
  400c66:	83 f8 ff             	cmp    $0xffffffff,%eax
  400c69:	0f 84 18 03 00 00    	je     400f87 <_malloc_r+0x5e7>
  400c6f:	39 44 24 18          	cmp    %eax,0x18(%esp)
  400c73:	0f 87 02 03 00 00    	ja     400f7b <_malloc_r+0x5db>
      (brk < old_end && old_top != initial_top))
    return;

  sbrked_mem += sbrk_size;
  400c79:	8b 15 e0 2e 40 00    	mov    0x402ee0,%edx
  400c7f:	01 ea                	add    %ebp,%edx

  if (brk == old_end /* can just add bytes to current top, unless
  400c81:	39 4c 24 18          	cmp    %ecx,0x18(%esp)
  /* Fail if sbrk failed or if a foreign sbrk call killed our space */
  if (brk == (char*)(MORECORE_FAILURE) || 
      (brk < old_end && old_top != initial_top))
    return;

  sbrked_mem += sbrk_size;
  400c85:	89 15 e0 2e 40 00    	mov    %edx,0x402ee0

  if (brk == old_end /* can just add bytes to current top, unless
  400c8b:	0f 84 89 03 00 00    	je     40101a <_malloc_r+0x67a>
    top_size = sbrk_size + old_top_size;
    set_head(top, top_size | PREV_INUSE);
  }
  else
  {
    if (sbrk_base == (char*)(-1))  /* First time through. Record base */
  400c91:	83 3d 60 2a 40 00 ff 	cmpl   $0xffffffff,0x402a60
  400c98:	0f 84 9e 03 00 00    	je     40103c <_malloc_r+0x69c>
      sbrk_base = brk;
    else  /* Someone else called sbrk().  Count those bytes as sbrked_mem. */
      sbrked_mem += brk - (char*)old_end;
  400c9e:	89 c8                	mov    %ecx,%eax
  400ca0:	2b 44 24 18          	sub    0x18(%esp),%eax
  400ca4:	01 d0                	add    %edx,%eax
  400ca6:	a3 e0 2e 40 00       	mov    %eax,0x402ee0

    /* Guarantee alignment of first new chunk made from this space */
    front_misalign = (POINTER_UINT)chunk2mem(brk) & MALLOC_ALIGN_MASK;
    if (front_misalign > 0) 
  400cab:	89 c8                	mov    %ecx,%eax
  400cad:	ba 00 10 00 00       	mov    $0x1000,%edx
  400cb2:	83 e0 07             	and    $0x7,%eax
  400cb5:	74 0e                	je     400cc5 <_malloc_r+0x325>
    {
      correction = (MALLOC_ALIGNMENT) - front_misalign;
  400cb7:	89 ca                	mov    %ecx,%edx
  400cb9:	29 c2                	sub    %eax,%edx
      brk += correction;
  400cbb:	8d 4a 08             	lea    0x8(%edx),%ecx
  400cbe:	ba 08 10 00 00       	mov    $0x1008,%edx
  400cc3:	29 c2                	sub    %eax,%edx
    }
    else
      correction = 0;

    /* Guarantee the next brk will be at a page boundary */
    correction += pagesz - ((POINTER_UINT)(brk + sbrk_size) & (pagesz - 1));
  400cc5:	8d 04 29             	lea    (%ecx,%ebp,1),%eax

    /* Allocate correction */
    new_brk = (char*)(MORECORE (correction));
  400cc8:	89 4c 24 14          	mov    %ecx,0x14(%esp)
    }
    else
      correction = 0;

    /* Guarantee the next brk will be at a page boundary */
    correction += pagesz - ((POINTER_UINT)(brk + sbrk_size) & (pagesz - 1));
  400ccc:	25 ff 0f 00 00       	and    $0xfff,%eax
  400cd1:	29 c2                	sub    %eax,%edx

    /* Allocate correction */
    new_brk = (char*)(MORECORE (correction));
  400cd3:	8b 44 24 40          	mov    0x40(%esp),%eax
  400cd7:	89 54 24 04          	mov    %edx,0x4(%esp)
  400cdb:	89 04 24             	mov    %eax,(%esp)
  400cde:	89 54 24 10          	mov    %edx,0x10(%esp)
  400ce2:	e8 19 04 00 00       	call   401100 <_sbrk_r>
    if (new_brk == (char*)(MORECORE_FAILURE))
  400ce7:	8b 54 24 10          	mov    0x10(%esp),%edx
  400ceb:	83 f8 ff             	cmp    $0xffffffff,%eax
  400cee:	8b 4c 24 14          	mov    0x14(%esp),%ecx
  400cf2:	0f 84 72 03 00 00    	je     40106a <_malloc_r+0x6ca>
  400cf8:	29 c8                	sub    %ecx,%eax
  400cfa:	01 d0                	add    %edx,%eax
  400cfc:	83 c8 01             	or     $0x1,%eax
	correction = 0;
	correction_failed = 1;
	new_brk = brk;
      }

    sbrked_mem += correction;
  400cff:	8b 2d e0 2e 40 00    	mov    0x402ee0,%ebp

    top = (mchunkptr)brk;
    top_size = new_brk - brk + correction;
    set_head(top, top_size | PREV_INUSE);
  400d05:	89 41 04             	mov    %eax,0x4(%ecx)
	correction = 0;
	correction_failed = 1;
	new_brk = brk;
      }

    sbrked_mem += correction;
  400d08:	01 ea                	add    %ebp,%edx

    top = (mchunkptr)brk;
  400d0a:	89 0d 88 2a 40 00    	mov    %ecx,0x402a88
	correction = 0;
	correction_failed = 1;
	new_brk = brk;
      }

    sbrked_mem += correction;
  400d10:	89 15 e0 2e 40 00    	mov    %edx,0x402ee0
  400d16:	89 c8                	mov    %ecx,%eax

    top = (mchunkptr)brk;
    top_size = new_brk - brk + correction;
    set_head(top, top_size | PREV_INUSE);

    if (old_top != initial_top)
  400d18:	81 fe 80 2a 40 00    	cmp    $0x402a80,%esi
  400d1e:	74 35                	je     400d55 <_malloc_r+0x3b5>

      /* There must have been an intervening foreign sbrk call. */
      /* A double fencepost is necessary to prevent consolidation */

      /* If not enough space to do this, then user did something very wrong */
      if (old_top_size < MINSIZE) 
  400d20:	83 ff 0f             	cmp    $0xf,%edi
  400d23:	0f 86 a5 02 00 00    	jbe    400fce <_malloc_r+0x62e>
        return;
      }

      /* Also keep size a multiple of MALLOC_ALIGNMENT */
      old_top_size = (old_top_size - 3*SIZE_SZ) & ~MALLOC_ALIGN_MASK;
      set_head_size(old_top, old_top_size);
  400d29:	8b 46 04             	mov    0x4(%esi),%eax
        set_head(top, PREV_INUSE); /* will force null return from malloc */
        return;
      }

      /* Also keep size a multiple of MALLOC_ALIGNMENT */
      old_top_size = (old_top_size - 3*SIZE_SZ) & ~MALLOC_ALIGN_MASK;
  400d2c:	83 ef 0c             	sub    $0xc,%edi
  400d2f:	83 e7 f8             	and    $0xfffffff8,%edi
      set_head_size(old_top, old_top_size);
  400d32:	83 e0 01             	and    $0x1,%eax
  400d35:	09 f8                	or     %edi,%eax
      chunk_at_offset(old_top, old_top_size          )->size =
        SIZE_SZ|PREV_INUSE;
      chunk_at_offset(old_top, old_top_size + SIZE_SZ)->size =
        SIZE_SZ|PREV_INUSE;
      /* If possible, release the rest. */
      if (old_top_size >= MINSIZE) 
  400d37:	83 ff 0f             	cmp    $0xf,%edi
        return;
      }

      /* Also keep size a multiple of MALLOC_ALIGNMENT */
      old_top_size = (old_top_size - 3*SIZE_SZ) & ~MALLOC_ALIGN_MASK;
      set_head_size(old_top, old_top_size);
  400d3a:	89 46 04             	mov    %eax,0x4(%esi)
      chunk_at_offset(old_top, old_top_size          )->size =
  400d3d:	c7 44 3e 04 05 00 00 	movl   $0x5,0x4(%esi,%edi,1)
  400d44:	00 
        SIZE_SZ|PREV_INUSE;
      chunk_at_offset(old_top, old_top_size + SIZE_SZ)->size =
  400d45:	c7 44 3e 08 05 00 00 	movl   $0x5,0x8(%esi,%edi,1)
  400d4c:	00 
  400d4d:	89 c8                	mov    %ecx,%eax
        SIZE_SZ|PREV_INUSE;
      /* If possible, release the rest. */
      if (old_top_size >= MINSIZE) 
  400d4f:	0f 87 f2 02 00 00    	ja     401047 <_malloc_r+0x6a7>
        fREe(RCALL chunk2mem(old_top));
    }
  }

  if ((unsigned long)sbrked_mem > (unsigned long)max_sbrked_mem) 
  400d55:	3b 15 0c 2f 40 00    	cmp    0x402f0c,%edx
  400d5b:	76 06                	jbe    400d63 <_malloc_r+0x3c3>
    max_sbrked_mem = sbrked_mem;
  400d5d:	89 15 0c 2f 40 00    	mov    %edx,0x402f0c
#if HAVE_MMAP
  if ((unsigned long)(mmapped_mem + sbrked_mem) > (unsigned long)max_total_mem) 
    max_total_mem = mmapped_mem + sbrked_mem;
#else
  if ((unsigned long)(sbrked_mem) > (unsigned long)max_total_mem) 
  400d63:	3b 15 08 2f 40 00    	cmp    0x402f08,%edx
  400d69:	76 06                	jbe    400d71 <_malloc_r+0x3d1>
    max_total_mem = sbrked_mem;
  400d6b:	89 15 08 2f 40 00    	mov    %edx,0x402f08
  400d71:	8b 50 04             	mov    0x4(%eax),%edx
  400d74:	89 c6                	mov    %eax,%esi
  400d76:	83 e2 fc             	and    $0xfffffffc,%edx
    }
#endif

    /* Try to extend */
    malloc_extend_top(RCALL nb);
    remainder_size = long_sub_size_t(chunksize(top), nb);
  400d79:	89 d0                	mov    %edx,%eax
  400d7b:	29 d8                	sub    %ebx,%eax
    if (chunksize(top) < nb || remainder_size < (long)MINSIZE)
  400d7d:	39 d3                	cmp    %edx,%ebx
  400d7f:	77 05                	ja     400d86 <_malloc_r+0x3e6>
  400d81:	83 f8 0f             	cmp    $0xf,%eax
  400d84:	7f 1a                	jg     400da0 <_malloc_r+0x400>
    {
      MALLOC_UNLOCK;
  400d86:	8b 44 24 40          	mov    0x40(%esp),%eax
  400d8a:	89 04 24             	mov    %eax,(%esp)
  400d8d:	e8 5e 03 00 00       	call   4010f0 <__malloc_unlock>
      return 0; /* propagate failure */
  400d92:	31 c0                	xor    %eax,%eax
  400d94:	e9 7b fc ff ff       	jmp    400a14 <_malloc_r+0x74>
  400d99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
  }

  victim = top;
  set_head(victim, nb | PREV_INUSE);
  400da0:	89 da                	mov    %ebx,%edx
  top = chunk_at_offset(victim, nb);
  400da2:	01 f3                	add    %esi,%ebx
      return 0; /* propagate failure */
    }
  }

  victim = top;
  set_head(victim, nb | PREV_INUSE);
  400da4:	83 ca 01             	or     $0x1,%edx
  top = chunk_at_offset(victim, nb);
  set_head(top, remainder_size | PREV_INUSE);
  400da7:	83 c8 01             	or     $0x1,%eax
      return 0; /* propagate failure */
    }
  }

  victim = top;
  set_head(victim, nb | PREV_INUSE);
  400daa:	89 56 04             	mov    %edx,0x4(%esi)
  top = chunk_at_offset(victim, nb);
  set_head(top, remainder_size | PREV_INUSE);
  400dad:	89 43 04             	mov    %eax,0x4(%ebx)
  check_malloced_chunk(victim, nb);
  MALLOC_UNLOCK;
  400db0:	8b 44 24 40          	mov    0x40(%esp),%eax
    }
  }

  victim = top;
  set_head(victim, nb | PREV_INUSE);
  top = chunk_at_offset(victim, nb);
  400db4:	89 1d 88 2a 40 00    	mov    %ebx,0x402a88
  set_head(top, remainder_size | PREV_INUSE);
  check_malloced_chunk(victim, nb);
  MALLOC_UNLOCK;
  400dba:	89 04 24             	mov    %eax,(%esp)
  400dbd:	e8 2e 03 00 00       	call   4010f0 <__malloc_unlock>
  return chunk2mem(victim);

#endif /* MALLOC_PROVIDED */
}
  400dc2:	83 c4 2c             	add    $0x2c,%esp
  set_head(victim, nb | PREV_INUSE);
  top = chunk_at_offset(victim, nb);
  set_head(top, remainder_size | PREV_INUSE);
  check_malloced_chunk(victim, nb);
  MALLOC_UNLOCK;
  return chunk2mem(victim);
  400dc5:	8d 46 08             	lea    0x8(%esi),%eax

#endif /* MALLOC_PROVIDED */
}
  400dc8:	5b                   	pop    %ebx
  400dc9:	5e                   	pop    %esi
  400dca:	5f                   	pop    %edi
  400dcb:	5d                   	pop    %ebp
  400dcc:	c3                   	ret    
  400dcd:	8d 76 00             	lea    0x0(%esi),%esi
    idx += 2; /* Set for bin scan below. We've already scanned 2 bins. */

  }
  else
  {
    idx = bin_index(nb);
  400dd0:	83 ff 14             	cmp    $0x14,%edi
  400dd3:	0f 86 87 01 00 00    	jbe    400f60 <_malloc_r+0x5c0>
  400dd9:	83 ff 54             	cmp    $0x54,%edi
  400ddc:	0f 87 b6 01 00 00    	ja     400f98 <_malloc_r+0x5f8>
  400de2:	89 df                	mov    %ebx,%edi
  400de4:	c1 ef 0c             	shr    $0xc,%edi
  400de7:	83 c7 6e             	add    $0x6e,%edi
  400dea:	8d 04 3f             	lea    (%edi,%edi,1),%eax
  400ded:	e9 6d fc ff ff       	jmp    400a5f <_malloc_r+0xbf>
  400df2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400df9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      return chunk2mem(victim);
    }

    /* Else place in bin */

    frontlink(victim, victim_size, remainder_index, bck, fwd);
  400e00:	89 f9                	mov    %edi,%ecx
  400e02:	c1 e9 09             	shr    $0x9,%ecx
  400e05:	83 f9 04             	cmp    $0x4,%ecx
  400e08:	0f 86 5d 01 00 00    	jbe    400f6b <_malloc_r+0x5cb>
  400e0e:	83 f9 14             	cmp    $0x14,%ecx
  400e11:	0f 87 df 01 00 00    	ja     400ff6 <_malloc_r+0x656>
  400e17:	83 c1 5b             	add    $0x5b,%ecx
  400e1a:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
  400e1d:	8d 04 85 80 2a 40 00 	lea    0x402a80(,%eax,4),%eax
  400e24:	8b 50 08             	mov    0x8(%eax),%edx
  400e27:	39 c2                	cmp    %eax,%edx
  400e29:	0f 84 81 01 00 00    	je     400fb0 <_malloc_r+0x610>
  400e2f:	90                   	nop
  400e30:	8b 4a 04             	mov    0x4(%edx),%ecx
  400e33:	83 e1 fc             	and    $0xfffffffc,%ecx
  400e36:	39 cf                	cmp    %ecx,%edi
  400e38:	73 07                	jae    400e41 <_malloc_r+0x4a1>
  400e3a:	8b 52 08             	mov    0x8(%edx),%edx
  400e3d:	39 d0                	cmp    %edx,%eax
  400e3f:	75 ef                	jne    400e30 <_malloc_r+0x490>
  400e41:	8b 4a 0c             	mov    0xc(%edx),%ecx
  400e44:	a1 84 2a 40 00       	mov    0x402a84,%eax
  400e49:	89 4e 0c             	mov    %ecx,0xc(%esi)
  400e4c:	89 56 08             	mov    %edx,0x8(%esi)
  400e4f:	89 72 0c             	mov    %esi,0xc(%edx)
  400e52:	89 71 08             	mov    %esi,0x8(%ecx)
  400e55:	e9 b4 fc ff ff       	jmp    400b0e <_malloc_r+0x16e>
  400e5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    victim_size = chunksize(victim);
    remainder_size = long_sub_size_t(victim_size, nb);

    if (remainder_size >= (long)MINSIZE) /* re-split */
    {
      remainder = chunk_at_offset(victim, nb);
  400e60:	8d 14 1e             	lea    (%esi,%ebx,1),%edx
      set_head(victim, nb | PREV_INUSE);
      link_last_remainder(remainder);
      set_head(remainder, remainder_size | PREV_INUSE);
  400e63:	89 c1                	mov    %eax,%ecx
  400e65:	83 c9 01             	or     $0x1,%ecx
    remainder_size = long_sub_size_t(victim_size, nb);

    if (remainder_size >= (long)MINSIZE) /* re-split */
    {
      remainder = chunk_at_offset(victim, nb);
      set_head(victim, nb | PREV_INUSE);
  400e68:	83 cb 01             	or     $0x1,%ebx
      link_last_remainder(remainder);
      set_head(remainder, remainder_size | PREV_INUSE);
      set_foot(remainder, remainder_size);
  400e6b:	89 04 02             	mov    %eax,(%edx,%eax,1)
      check_malloced_chunk(victim, nb);
      MALLOC_UNLOCK;
  400e6e:	8b 44 24 40          	mov    0x40(%esp),%eax
    remainder_size = long_sub_size_t(victim_size, nb);

    if (remainder_size >= (long)MINSIZE) /* re-split */
    {
      remainder = chunk_at_offset(victim, nb);
      set_head(victim, nb | PREV_INUSE);
  400e72:	89 5e 04             	mov    %ebx,0x4(%esi)
      link_last_remainder(remainder);
  400e75:	89 15 94 2a 40 00    	mov    %edx,0x402a94
  400e7b:	89 15 90 2a 40 00    	mov    %edx,0x402a90
  400e81:	c7 42 0c 88 2a 40 00 	movl   $0x402a88,0xc(%edx)
  400e88:	c7 42 08 88 2a 40 00 	movl   $0x402a88,0x8(%edx)
      set_head(remainder, remainder_size | PREV_INUSE);
  400e8f:	89 4a 04             	mov    %ecx,0x4(%edx)
      set_foot(remainder, remainder_size);
      check_malloced_chunk(victim, nb);
      MALLOC_UNLOCK;
  400e92:	89 04 24             	mov    %eax,(%esp)
  400e95:	e8 56 02 00 00       	call   4010f0 <__malloc_unlock>
      return chunk2mem(victim);
  400e9a:	8d 46 08             	lea    0x8(%esi),%eax
  400e9d:	e9 72 fb ff ff       	jmp    400a14 <_malloc_r+0x74>
  400ea2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400ea9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
         {
           bin = next_bin(bin);
           ++idx;
         }
#endif
      } while ((++idx & (BINBLOCKWIDTH - 1)) != 0);
  400eb0:	8b 74 24 18          	mov    0x18(%esp),%esi
            return chunk2mem(victim);
          }

        }

       bin = next_bin(bin);
  400eb4:	83 c1 08             	add    $0x8,%ecx
         {
           bin = next_bin(bin);
           ++idx;
         }
#endif
      } while ((++idx & (BINBLOCKWIDTH - 1)) != 0);
  400eb7:	46                   	inc    %esi
  400eb8:	89 74 24 18          	mov    %esi,0x18(%esp)
  400ebc:	f6 44 24 18 03       	testb  $0x3,0x18(%esp)
  400ec1:	0f 85 93 fc ff ff    	jne    400b5a <_malloc_r+0x1ba>
  400ec7:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  400ecb:	90                   	nop
  400ecc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

      /* Clear out the block bit. */

      do   /* Possibly backtrack to try to clear a partial block */
      {
        if ((startidx & (BINBLOCKWIDTH - 1)) == 0)
  400ed0:	f7 c5 03 00 00 00    	test   $0x3,%ebp
  400ed6:	0f 84 ca 01 00 00    	je     4010a6 <_malloc_r+0x706>
        {
          binblocks &= ~block;
          break;
        }
        --startidx;
       q = prev_bin(q);
  400edc:	8d 50 f8             	lea    -0x8(%eax),%edx
      } while (first(q) == q);
  400edf:	8b 00                	mov    (%eax),%eax
        if ((startidx & (BINBLOCKWIDTH - 1)) == 0)
        {
          binblocks &= ~block;
          break;
        }
        --startidx;
  400ee1:	4d                   	dec    %ebp
       q = prev_bin(q);
      } while (first(q) == q);
  400ee2:	39 d0                	cmp    %edx,%eax
  400ee4:	74 ea                	je     400ed0 <_malloc_r+0x530>
  400ee6:	a1 84 2a 40 00       	mov    0x402a84,%eax

      /* Get to the next possibly nonempty block */

      if ( (block <<= 1) <= binblocks && (block != 0) ) 
  400eeb:	01 ff                	add    %edi,%edi
  400eed:	39 c7                	cmp    %eax,%edi
  400eef:	0f 87 1b fd ff ff    	ja     400c10 <_malloc_r+0x270>
  400ef5:	85 ff                	test   %edi,%edi
  400ef7:	0f 84 13 fd ff ff    	je     400c10 <_malloc_r+0x270>
      {
        while ((block & binblocks) == 0)
  400efd:	85 f8                	test   %edi,%eax
  400eff:	0f 84 b8 01 00 00    	je     4010bd <_malloc_r+0x71d>
      return chunk2mem(victim);
    }

    /* Else place in bin */

    frontlink(victim, victim_size, remainder_index, bck, fwd);
  400f05:	8b 6c 24 18          	mov    0x18(%esp),%ebp
  400f09:	e9 3b fc ff ff       	jmp    400b49 <_malloc_r+0x1a9>
  400f0e:	66 90                	xchg   %ax,%ax

#if MALLOC_ALIGN != 16
    /* Also scan the next one, since it would have a remainder < MINSIZE */
    if (victim == q)
    {
      q = next_bin(q);
  400f10:	8d 46 08             	lea    0x8(%esi),%eax
      victim = last(q);
  400f13:	8b 76 14             	mov    0x14(%esi),%esi
    }
#endif
    if (victim != q)
  400f16:	39 f0                	cmp    %esi,%eax
  400f18:	0f 85 d0 fa ff ff    	jne    4009ee <_malloc_r+0x4e>
      check_malloced_chunk(victim, nb);
      MALLOC_UNLOCK;
      return chunk2mem(victim);
    }

    idx += 2; /* Set for bin scan below. We've already scanned 2 bins. */
  400f1e:	8d 6a 02             	lea    0x2(%edx),%ebp
  400f21:	e9 68 fb ff ff       	jmp    400a8e <_malloc_r+0xee>
  400f26:	8d 76 00             	lea    0x0(%esi),%esi
  400f29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
          }

          else if (remainder_size >= 0)  /* take */
          {
            set_inuse_bit_at_offset(victim, victim_size);
            unlink(victim, bck, fwd);
  400f30:	8b 56 08             	mov    0x8(%esi),%edx
            return chunk2mem(victim);
          }

          else if (remainder_size >= 0)  /* take */
          {
            set_inuse_bit_at_offset(victim, victim_size);
  400f33:	83 4c 06 04 01       	orl    $0x1,0x4(%esi,%eax,1)
            unlink(victim, bck, fwd);
  400f38:	8b 46 0c             	mov    0xc(%esi),%eax
  400f3b:	89 42 0c             	mov    %eax,0xc(%edx)
  400f3e:	89 50 08             	mov    %edx,0x8(%eax)
            check_malloced_chunk(victim, nb);
	    MALLOC_UNLOCK;
  400f41:	8b 44 24 40          	mov    0x40(%esp),%eax
  400f45:	89 04 24             	mov    %eax,(%esp)
  400f48:	e8 a3 01 00 00       	call   4010f0 <__malloc_unlock>
            return chunk2mem(victim);
  400f4d:	8d 46 08             	lea    0x8(%esi),%eax
  400f50:	e9 bf fa ff ff       	jmp    400a14 <_malloc_r+0x74>
  400f55:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  400f59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    idx += 2; /* Set for bin scan below. We've already scanned 2 bins. */

  }
  else
  {
    idx = bin_index(nb);
  400f60:	83 c7 5b             	add    $0x5b,%edi
  400f63:	8d 04 3f             	lea    (%edi,%edi,1),%eax
  400f66:	e9 f4 fa ff ff       	jmp    400a5f <_malloc_r+0xbf>
      return chunk2mem(victim);
    }

    /* Else place in bin */

    frontlink(victim, victim_size, remainder_index, bck, fwd);
  400f6b:	89 f9                	mov    %edi,%ecx
  400f6d:	c1 e9 06             	shr    $0x6,%ecx
  400f70:	83 c1 38             	add    $0x38,%ecx
  400f73:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
  400f76:	e9 a2 fe ff ff       	jmp    400e1d <_malloc_r+0x47d>

  brk = (char*)(MORECORE (sbrk_size));

  /* Fail if sbrk failed or if a foreign sbrk call killed our space */
  if (brk == (char*)(MORECORE_FAILURE) || 
      (brk < old_end && old_top != initial_top))
  400f7b:	81 fe 80 2a 40 00    	cmp    $0x402a80,%esi
  400f81:	0f 84 f2 fc ff ff    	je     400c79 <_malloc_r+0x2d9>
  400f87:	8b 35 88 2a 40 00    	mov    0x402a88,%esi
  400f8d:	8b 56 04             	mov    0x4(%esi),%edx
  400f90:	83 e2 fc             	and    $0xfffffffc,%edx
  400f93:	e9 e1 fd ff ff       	jmp    400d79 <_malloc_r+0x3d9>
    idx += 2; /* Set for bin scan below. We've already scanned 2 bins. */

  }
  else
  {
    idx = bin_index(nb);
  400f98:	81 ff 54 01 00 00    	cmp    $0x154,%edi
  400f9e:	77 3e                	ja     400fde <_malloc_r+0x63e>
  400fa0:	89 df                	mov    %ebx,%edi
  400fa2:	c1 ef 0f             	shr    $0xf,%edi
  400fa5:	83 c7 77             	add    $0x77,%edi
  400fa8:	8d 04 3f             	lea    (%edi,%edi,1),%eax
  400fab:	e9 af fa ff ff       	jmp    400a5f <_malloc_r+0xbf>
      return chunk2mem(victim);
    }

    /* Else place in bin */

    frontlink(victim, victim_size, remainder_index, bck, fwd);
  400fb0:	c1 f9 02             	sar    $0x2,%ecx
  400fb3:	b8 01 00 00 00       	mov    $0x1,%eax
  400fb8:	d3 e0                	shl    %cl,%eax
  400fba:	8b 3d 84 2a 40 00    	mov    0x402a84,%edi
  400fc0:	89 d1                	mov    %edx,%ecx
  400fc2:	09 f8                	or     %edi,%eax
  400fc4:	a3 84 2a 40 00       	mov    %eax,0x402a84
  400fc9:	e9 7b fe ff ff       	jmp    400e49 <_malloc_r+0x4a9>
      /* A double fencepost is necessary to prevent consolidation */

      /* If not enough space to do this, then user did something very wrong */
      if (old_top_size < MINSIZE) 
      {
        set_head(top, PREV_INUSE); /* will force null return from malloc */
  400fce:	c7 41 04 01 00 00 00 	movl   $0x1,0x4(%ecx)
  400fd5:	89 ce                	mov    %ecx,%esi
  400fd7:	31 d2                	xor    %edx,%edx
  400fd9:	e9 9b fd ff ff       	jmp    400d79 <_malloc_r+0x3d9>
    idx += 2; /* Set for bin scan below. We've already scanned 2 bins. */

  }
  else
  {
    idx = bin_index(nb);
  400fde:	81 ff 54 05 00 00    	cmp    $0x554,%edi
  400fe4:	77 25                	ja     40100b <_malloc_r+0x66b>
  400fe6:	89 df                	mov    %ebx,%edi
  400fe8:	c1 ef 12             	shr    $0x12,%edi
  400feb:	83 c7 7c             	add    $0x7c,%edi
  400fee:	8d 04 3f             	lea    (%edi,%edi,1),%eax
  400ff1:	e9 69 fa ff ff       	jmp    400a5f <_malloc_r+0xbf>
      return chunk2mem(victim);
    }

    /* Else place in bin */

    frontlink(victim, victim_size, remainder_index, bck, fwd);
  400ff6:	83 f9 54             	cmp    $0x54,%ecx
  400ff9:	77 7b                	ja     401076 <_malloc_r+0x6d6>
  400ffb:	89 f9                	mov    %edi,%ecx
  400ffd:	c1 e9 0c             	shr    $0xc,%ecx
  401000:	83 c1 6e             	add    $0x6e,%ecx
  401003:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
  401006:	e9 12 fe ff ff       	jmp    400e1d <_malloc_r+0x47d>
    idx += 2; /* Set for bin scan below. We've already scanned 2 bins. */

  }
  else
  {
    idx = bin_index(nb);
  40100b:	b8 fc 00 00 00       	mov    $0xfc,%eax
  401010:	bf 7e 00 00 00       	mov    $0x7e,%edi
  401015:	e9 45 fa ff ff       	jmp    400a5f <_malloc_r+0xbf>

  sbrked_mem += sbrk_size;

  if (brk == old_end /* can just add bytes to current top, unless
			previous correction failed */
      && ((POINTER_UINT)old_end & (pagesz - 1)) == 0)
  40101a:	f7 44 24 18 ff 0f 00 	testl  $0xfff,0x18(%esp)
  401021:	00 
  401022:	0f 85 69 fc ff ff    	jne    400c91 <_malloc_r+0x2f1>
  {
    top_size = sbrk_size + old_top_size;
    set_head(top, top_size | PREV_INUSE);
  401028:	a1 88 2a 40 00       	mov    0x402a88,%eax

  if (brk == old_end /* can just add bytes to current top, unless
			previous correction failed */
      && ((POINTER_UINT)old_end & (pagesz - 1)) == 0)
  {
    top_size = sbrk_size + old_top_size;
  40102d:	8d 4c 3d 00          	lea    0x0(%ebp,%edi,1),%ecx
    set_head(top, top_size | PREV_INUSE);
  401031:	83 c9 01             	or     $0x1,%ecx
  401034:	89 48 04             	mov    %ecx,0x4(%eax)
  401037:	e9 19 fd ff ff       	jmp    400d55 <_malloc_r+0x3b5>
  }
  else
  {
    if (sbrk_base == (char*)(-1))  /* First time through. Record base */
      sbrk_base = brk;
  40103c:	89 0d 60 2a 40 00    	mov    %ecx,0x402a60
  401042:	e9 64 fc ff ff       	jmp    400cab <_malloc_r+0x30b>
        SIZE_SZ|PREV_INUSE;
      chunk_at_offset(old_top, old_top_size + SIZE_SZ)->size =
        SIZE_SZ|PREV_INUSE;
      /* If possible, release the rest. */
      if (old_top_size >= MINSIZE) 
        fREe(RCALL chunk2mem(old_top));
  401047:	8b 44 24 40          	mov    0x40(%esp),%eax
  40104b:	83 c6 08             	add    $0x8,%esi
  40104e:	89 04 24             	mov    %eax,(%esp)
  401051:	89 74 24 04          	mov    %esi,0x4(%esp)
  401055:	e8 c6 f6 ff ff       	call   400720 <_free_r>
  40105a:	8b 15 e0 2e 40 00    	mov    0x402ee0,%edx
  401060:	a1 88 2a 40 00       	mov    0x402a88,%eax
  401065:	e9 eb fc ff ff       	jmp    400d55 <_malloc_r+0x3b5>
    /* Guarantee the next brk will be at a page boundary */
    correction += pagesz - ((POINTER_UINT)(brk + sbrk_size) & (pagesz - 1));

    /* Allocate correction */
    new_brk = (char*)(MORECORE (correction));
    if (new_brk == (char*)(MORECORE_FAILURE))
  40106a:	b8 01 00 00 00       	mov    $0x1,%eax
      {
	correction = 0;
  40106f:	31 d2                	xor    %edx,%edx
  401071:	e9 89 fc ff ff       	jmp    400cff <_malloc_r+0x35f>
      return chunk2mem(victim);
    }

    /* Else place in bin */

    frontlink(victim, victim_size, remainder_index, bck, fwd);
  401076:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
  40107c:	77 10                	ja     40108e <_malloc_r+0x6ee>
  40107e:	89 f9                	mov    %edi,%ecx
  401080:	c1 e9 0f             	shr    $0xf,%ecx
  401083:	83 c1 77             	add    $0x77,%ecx
  401086:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
  401089:	e9 8f fd ff ff       	jmp    400e1d <_malloc_r+0x47d>
  40108e:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
  401094:	77 39                	ja     4010cf <_malloc_r+0x72f>
  401096:	89 f9                	mov    %edi,%ecx
  401098:	c1 e9 12             	shr    $0x12,%ecx
  40109b:	83 c1 7c             	add    $0x7c,%ecx
  40109e:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
  4010a1:	e9 77 fd ff ff       	jmp    400e1d <_malloc_r+0x47d>

      do   /* Possibly backtrack to try to clear a partial block */
      {
        if ((startidx & (BINBLOCKWIDTH - 1)) == 0)
        {
          binblocks &= ~block;
  4010a6:	89 f8                	mov    %edi,%eax
  4010a8:	8b 0d 84 2a 40 00    	mov    0x402a84,%ecx
  4010ae:	83 f0 ff             	xor    $0xffffffff,%eax
  4010b1:	21 c8                	and    %ecx,%eax
  4010b3:	a3 84 2a 40 00       	mov    %eax,0x402a84
          break;
  4010b8:	e9 2e fe ff ff       	jmp    400eeb <_malloc_r+0x54b>

      if ( (block <<= 1) <= binblocks && (block != 0) ) 
      {
        while ((block & binblocks) == 0)
        {
          idx += BINBLOCKWIDTH;
  4010bd:	8b 54 24 18          	mov    0x18(%esp),%edx
          block <<= 1;
  4010c1:	01 ff                	add    %edi,%edi

      if ( (block <<= 1) <= binblocks && (block != 0) ) 
      {
        while ((block & binblocks) == 0)
        {
          idx += BINBLOCKWIDTH;
  4010c3:	83 c2 04             	add    $0x4,%edx
  4010c6:	89 54 24 18          	mov    %edx,0x18(%esp)
  4010ca:	e9 2e fe ff ff       	jmp    400efd <_malloc_r+0x55d>
      return chunk2mem(victim);
    }

    /* Else place in bin */

    frontlink(victim, victim_size, remainder_index, bck, fwd);
  4010cf:	b8 fc 00 00 00       	mov    $0xfc,%eax
  4010d4:	b9 7e 00 00 00       	mov    $0x7e,%ecx
  4010d9:	e9 3f fd ff ff       	jmp    400e1d <_malloc_r+0x47d>
  4010de:	90                   	nop
  4010df:	90                   	nop

004010e0 <__malloc_lock>:
#endif

void
__malloc_lock (ptr)
     struct _reent *ptr;
{
  4010e0:	c3                   	ret    
  4010e1:	eb 0d                	jmp    4010f0 <__malloc_unlock>
  4010e3:	90                   	nop
  4010e4:	90                   	nop
  4010e5:	90                   	nop
  4010e6:	90                   	nop
  4010e7:	90                   	nop
  4010e8:	90                   	nop
  4010e9:	90                   	nop
  4010ea:	90                   	nop
  4010eb:	90                   	nop
  4010ec:	90                   	nop
  4010ed:	90                   	nop
  4010ee:	90                   	nop
  4010ef:	90                   	nop

004010f0 <__malloc_unlock>:
}

void
__malloc_unlock (ptr)
     struct _reent *ptr;
{
  4010f0:	c3                   	ret    
  4010f1:	90                   	nop
  4010f2:	90                   	nop
  4010f3:	90                   	nop
  4010f4:	90                   	nop
  4010f5:	90                   	nop
  4010f6:	90                   	nop
  4010f7:	90                   	nop
  4010f8:	90                   	nop
  4010f9:	90                   	nop
  4010fa:	90                   	nop
  4010fb:	90                   	nop
  4010fc:	90                   	nop
  4010fd:	90                   	nop
  4010fe:	90                   	nop
  4010ff:	90                   	nop

00401100 <_sbrk_r>:

void *
_DEFUN (_sbrk_r, (ptr, incr),
     struct _reent *ptr _AND
     ptrdiff_t incr)
{
  401100:	83 ec 1c             	sub    $0x1c,%esp
  char *ret;
  void *_sbrk(ptrdiff_t);

  errno = 0;
  401103:	c7 05 14 2f 40 00 00 	movl   $0x0,0x402f14
  40110a:	00 00 00 
  if ((ret = (char *)(_sbrk (incr))) == (void *) -1 && errno != 0)
  40110d:	8b 44 24 24          	mov    0x24(%esp),%eax
  401111:	89 04 24             	mov    %eax,(%esp)
  401114:	e8 c7 f1 ff ff       	call   4002e0 <sbrk>
  401119:	83 f8 ff             	cmp    $0xffffffff,%eax
  40111c:	74 12                	je     401130 <_sbrk_r+0x30>
    ptr->_errno = errno;
  return ret;
}
  40111e:	83 c4 1c             	add    $0x1c,%esp
  401121:	c3                   	ret    
  401122:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  401129:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
{
  char *ret;
  void *_sbrk(ptrdiff_t);

  errno = 0;
  if ((ret = (char *)(_sbrk (incr))) == (void *) -1 && errno != 0)
  401130:	8b 15 14 2f 40 00    	mov    0x402f14,%edx
  401136:	85 d2                	test   %edx,%edx
  401138:	74 e4                	je     40111e <_sbrk_r+0x1e>
    ptr->_errno = errno;
  40113a:	8b 4c 24 20          	mov    0x20(%esp),%ecx
  40113e:	89 11                	mov    %edx,(%ecx)
  return ret;
}
  401140:	83 c4 1c             	add    $0x1c,%esp
  401143:	c3                   	ret    
  401144:	90                   	nop
  401145:	90                   	nop
  401146:	90                   	nop
  401147:	90                   	nop
  401148:	90                   	nop
  401149:	90                   	nop
  40114a:	90                   	nop
  40114b:	90                   	nop
  40114c:	90                   	nop
  40114d:	90                   	nop
  40114e:	90                   	nop
  40114f:	90                   	nop

00401150 <__do_global_ctors_aux>:
  401150:	55                   	push   %ebp
  401151:	89 e5                	mov    %esp,%ebp
  401153:	53                   	push   %ebx
  401154:	52                   	push   %edx
  401155:	bb b0 25 40 00       	mov    $0x4025b0,%ebx
  40115a:	a1 b0 25 40 00       	mov    0x4025b0,%eax
  40115f:	83 f8 ff             	cmp    $0xffffffff,%eax
  401162:	74 18                	je     40117c <__do_global_ctors_aux+0x2c>
  401164:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  40116a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi
  401170:	83 eb 04             	sub    $0x4,%ebx
  401173:	ff d0                	call   *%eax
  401175:	8b 03                	mov    (%ebx),%eax
  401177:	83 f8 ff             	cmp    $0xffffffff,%eax
  40117a:	75 f4                	jne    401170 <__do_global_ctors_aux+0x20>
  40117c:	58                   	pop    %eax
  40117d:	5b                   	pop    %ebx
  40117e:	5d                   	pop    %ebp
  40117f:	c3                   	ret    

Disassembly of section .fini:

00401180 <.fini>:
  401180:	e8 7b ef ff ff       	call   400100 <__do_global_dtors_aux>
