;------------------------------------------------------------
;特别模式
;------------------------------------------------------------
*start
;这里写成place=1，是因为更上一层的界面（CG模式啥的）默认把状态记录到place=0，但要一层层返回就需要保存多个不同的临时状态
@tempsave place="1"
;------------------------------------------------------------
*window
@history enabled="false"
@locklink
;------------------------------------------------------------
;调用地图作为特别模式的选单，地图上包含【CG模式、结局收集、音乐鉴赏、返回四个按钮】
@sysmap storage="omake.map"
;定义并允许右键返回
@rclick jump="true" target="*返回" storage="title_other.ks" enabled="true"
@s
;------------------------------------------------------------
;CG模式
*cgmode
@clsysmap
@call storage="cgmode.ks"
@jump target="*window" storage="title_other.ks"
;------------------------------------------------------------
;结局收集
*endlist
@clsysmap
@call storage="endmode.ks"
@jump target="*window" storage="title_other.ks"
;------------------------------------------------------------
;音乐鉴赏
*bgmlist
@clsysmap
@call storage="bgmmode.ks"
@jump target="*window" storage="title_other.ks"
;------------------------------------------------------------
*返回
@clsysmap
@backlay
@tempload place="1" backlay="true"
@trans time="200" method="crossfade"
@wt
@return
