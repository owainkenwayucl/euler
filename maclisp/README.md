# MacLisp ports

I've been playing about in MacLisp on a simulated PDP-10 and thought a fun side project would be to port some of these from Common Lisp.  This is actually a fairly easy exercise as the latter is derived from the former.  Some names have changed (see `eul001 lisp` where I've had to alias `mod` to `remainder`) others just work (see `eul002 lisp`).

One thing to be aware of is that in MacLisp the two integer types default to both input and display representation in octal and so you need to set that to decimal if you want output and input in base 10.

```lisp
(setq base 10.)  ; set output representation
10. 
(setq ibase 10.) ; set input representation
10. 

```

