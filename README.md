# cool-bash-stuff
A collection of useful (__and cool!__) bash scripts

These scripts work for me on a 2015 MacBook Pro running macOS Sierra with GNU Bash version 3.2.57. I cannot guarantee they will work for you. I am always open for suggestions on how to make these scripts more portable and/or robust. 

## Examples
```cdpsid``` is a nice function for changing to a directory where something is running, but you cannot remember which directory that is.
```bash
>>> pwd
/Users/tcmoore3

>>> ps
  PID TTY           TIME CMD
69695 ttys000   05:13.20 -bash
69696 ttys000   69:01.85 ./test.out

>>> pwd
/Users/tcmoore3
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

```myqstat``` is a nice function for outputting your job info on a cluser. Note that this was written for pbs, and probably won't work for another job scheduler, like slurm. It also prints a motivational message if you have no jobs running on that particular cluster.
```bash
 $ myqstat 

job_id job_name                    st  u'd_t      r'd_t     queue
------ --------                    --  -----      ------    -----
8291   1010-sep-305-extend         R   59:38:27 / 96:00:00  low  
8404   cg-SA-run3-st               R   04:22:33 / 96:00:00  low  
8406   cg-SA-run4-st               R   00:43:22 / 96:00:00  low  
8413   cg-SA-run4-shape-change_st  R   00:21:50 / 96:00:00  low  
8414   cg-SA-run4-shape-change     R   00:21:21 / 96:00:00  low  
8415   cg-SA-run3-shape-change     R   00:17:45 / 96:00:00  low  
8416   cg-SA-run4-shape-change_st  Q   -- / 96:00:00  low  
8417   cg-SA-run3-shape-change_st  Q   -- / 96:00:00  low  
-------
8 jobs total
6 jobs running
2 jobs in queue


 $ myqstat 

job_id job_name                    st  u'd_t      r'd_t     queue
------ --------                    --  -----      ------    -----
YOU HAVE NO JOBS RUNNING YOU PIECE OF SHIT
```
