# cool-bash-stuff
A collection of useful (and cool!) bash scripts

These scripts work for me on a 2015 MacBook Pro running macOS Sierra with GNU Bash version 3.2.57. I cannot guarantee they will work for you. I am always open for suggestions how to make these scripts more portable and/or robust. 

## Examples
```cdpsid``` is a useful function for changing to a directory where something is running, but you cannot remember which directory that is.
```bash
>>> pwd
/Users/tcmoore3

>>> ps
  PID TTY           TIME CMD
69696 ttys000   69:01.85 ./test.out

>>> cdpsid 69696
>>> pwd
/Users/tcmoore3/test
```

```mkcd``` is a nice one-liner for making a new directory and moving into it.
```bash
>>> pwd
/Users/tcmoore3/test

>>> ls
-rw-r--r--  1 tcmoore3  staff    34K Jan 11 22:38 file1
-rwxr-xr-x  1 tcmoore3  staff   970B Jan 11 22:48 file2

>>> mkcd new_dir
>>> pwd
/Users/tcmoore3/test/new_dir

>>> ls ..
-rw-r--r--  1 tcmoore3  staff    34K Jan 11 22:38 file1
-rw-r--r--  1 tcmoore3  staff   970B Jan 11 22:48 file2
drwxr-xr-x  2 tcmoore3  staff    68B Jan 11 23:03 new_dir

```
