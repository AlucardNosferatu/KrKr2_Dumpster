;--------------------------------------------------
;0.ks
;--------------------------------------------------
*start
@if exp="(sf.end==1)"
@jump storage="2.ks"
@elsif exp="(sf.end==2)"
@jump storage="3.ks"
@elsif exp="(sf.end==3)"
@jump storage="4.ks"
@elsif exp="(sf.end==0)"
@jump storage="1.ks"
