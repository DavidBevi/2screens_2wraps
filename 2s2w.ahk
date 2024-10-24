;▼ DOUBLE SCREEN, make cursor warp ALSO horizontally - set Screen2 OVER Screen1

; For performance reasons I wrapped the entire script in a check:
; it only starts running if the script is launched with second screen already connected
If (SysGet(80)>1) {

   ; Save the primary screen resolution
   sc1_w:=SysGet(0)
   sc1_h:=SysGet(1)

   ; Make the function
   ; It will be called by a timer, so other routines can run concurrently
   warp_to_other_screen() {
      ; Get current mouse position
      MouseGetPos(&mx, &my)
      ; Warp if cursor touches Screen1-right border
      If (my>0 and mx=sc1_w-1) {
            MouseMove(1,my-sc1_h)
      }
      ; Warp if cursor touches Screen2-left border
      Else If (my<0 and mx=0) {
            MouseMove(sc1_w-2, my+sc1_h)
      }
   }

   ; Make it loop
   SetTimer(warp_to_other_screen,33)
}
