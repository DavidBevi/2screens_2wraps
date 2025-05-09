;2SCREENS_2WRAPS by DavidBevi
#Requires AutoHotkey v2.0
CoordMode("Mouse")

;Define WARP (move cursor upon touching borders)
warp(sw:=SysGet(0),sh:=SysGet(1),p*)=>(
    MouseGetPos(&mx,&my),
    (my=0)*(mx<=sw)? MouseMove(mx+sw, sh-2, 0):
    (my>=sh-1)*(mx>sw)? MouseMove(mx-sw, 2, 0):{}
)
;Define TOGGLE (deact when there's only 1 screen)
togglewarp(*)=>SetTimer(warp, SysGet(80)>1?33:0)

togglewarp() ;Launch first time
OnMessage(0x7E,togglewarp) ;Auto (de)activate
