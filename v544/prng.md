`Pseudo-Random Number Generator (PRNG)` was upgraded to use the `getentropy()` system call on supporting operating systems.

For more information, please follow this link: https://perldoc.perl.org/perldelta#New-source-of-entropy-for-PRNG-seeding

Let's see what happens under the hood. We can use `strace`, that tracks Linux Kernel system calls.

First with Perl v5.44:

```bash
$ strace -e trace=getrandom,openat perl544 -e 'rand()'
```

You will see something like this in the output:

```bash
...
...
...
getrandom("\x75\xc6\x68\xd7\xbe\xbf\xe7\x08", 8, GRND_NONBLOCK) = 8
getrandom("\x04\x02\x92\x60\xe3\x09\xa8\xb3", 8, 0) = 8
getrandom("\xdc\x1d\xae\x38\xfa\xf4\x24\x5b", 8, 0) = 8
...
...
...
```

As per the manual: https://man7.org/linux/man-pages/man3/getentropy.3.html

> "The getentropy() function is implemented using getrandom(2)."

For older perl, try this:

```bash
$ strace -e trace=getrandom,openat perl -e 'rand()'
```

We get output like below:

```bash
...
...
...
openat(AT_FDCWD, "/dev/urandom", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/dev/urandom", O_RDONLY|O_CLOEXEC) = 3
...
...
...
```
