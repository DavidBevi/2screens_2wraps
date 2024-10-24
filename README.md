# 2s2w (2 screens 2 wraps), an AHK script

Picture yourself using 2 screens and having the second screen both ABOVE and TO THE RIGHT of the main screen.

I have this setup, and I find myself trying to reach the 2nd monitor sometimes by going up, sometimes by going right.

This script allows me to do it.

![Demo](https://github.com/DavidBevi/2screens_2wraps/blob/main/2s2w_demo.gif?raw=true)

### A. Nice-to-read code with comments:

[`2s2w.ahk`](https://github.com/DavidBevi/2screens_2wraps/blob/main/2s2w.ahk)

### B. Supercompact code:

    ;▼ DOUBLE SCREEN, make cursor warp ALSO horizontally - set Screen2 OVER Screen1
    If (SysGet(80)>1) {
       sc1_w:=SysGet(0), sc1_h:=SysGet(1)
       SetTimer(warp(*)=>( MouseGetPos(&mx,&my),
                           (my>0? (mx=sc1_w-1? MouseMove(1,my-sc1_h) :{}) : 
                                  (mx=0? MouseMove(sc1_w-2, my+sc1_h):{}) )  ),33)
    }

You only need one of the two, they are identical in functionality.

I prefer the *Supercompact* version because I keep all my functions in one script/file, so I use [multi-statement](https://www.autohotkey.com/docs/v2/Variables.htm#comma), [ternary](https://www.autohotkey.com/docs/v2/Variables.htm#ternary), [fat-arrow](https://www.autohotkey.com/docs/v2/Variables.htm#fat-arrow), and uncommon spacing.

### This script is free and opensource, no attribution needed
