[iscript]
function kagskip1()
{
  kag.allskip=true;
}
function kagskip2()
{
  kag.allskip=false;
}
[endscript]

*shezhi
[history enabled=false output=false]
[locklink]
[rclick enabled="true" jump="true" storage="shezhi.ks" target=*return]
[backlay]
[layopt layer=message2 visible=false page=back]
*shezhi2
[position layer=message5 page=back visible=true opacity=255 top=0 height=640 left=0 width=960 marginl=0 margint=0 marginr=0 marginb=0 frame="shezhi.png"]
[current layer=message5 page=back][er][nowait]
[locate x=370 y=227]
[slider value="kag.bgmvolume" base=gunzhou width=340 height=33 normal=log_bar_normal.png ]
[locate x=370 y=282]
[slider value="kag.sevolume" base=gunzhou width=340 height=33 normal=log_bar_normal.png ]
[locate x=370 y=430]
[slider value="kag.textspeed" base=gunzhou width=330 height=33 normal=log_bar_normal.png max=10 min=0]
[locate x=10 y=540]
;[button normal=title01  target=*确认返回  over="title" enterse="yidong" clickse="dianji" entersebuf=3 clicksebuf=3 ]
[locate x=470 y=485]
[button normal=windows2.png  target=*窗口  over="windows1.png" enterse="yidong" clickse="dianji"  entersebuf=3 clicksebuf=3 ]
[locate x=658 y=485]
[button normal=fullscreen2.png  target=*全屏  over="fullscreen1.png" enterse="yidong" clickse="dianji" entersebuf=3 clicksebuf=3  ]

[locate x=470 y=540]
[button normal=1024p1.png  target=*窗口比例1  over="1024p2.png" enterse="yidong" clickse="dianji"  entersebuf=3 clicksebuf=3 ]
[locate x=658 y=540]
[button normal=1280p1.png  target=*窗口比例2  over="1280p2.png" enterse="yidong" clickse="dianji" entersebuf=3 clicksebuf=3 ]

[locate x=470 y=595]
[button normal=yidutiaoguo1.png   over="yidutiaoguo1.png"  entersebuf=3 clicksebuf=3    cond="kag.allskip==false"]
[button normal=yidutiaoguo2.png target=*已读   over="yidutiaoguo2.png" enterse="yidong" clickse="dianji"  entersebuf=3 clicksebuf=3    cond="kag.allskip==true"]
[locate x=658 y=590]
[button normal=quanbutiaoguo1.png  over="quanbutiaoguo1.png"  entersebuf=3 clicksebuf=3  cond="kag.allskip==true"]
[button normal=quanbutiaoguo2.png  target=*全部  over="quanbutiaoguo2.png" enterse="yidong" clickse="dianji" entersebuf=3 clicksebuf=3  cond="kag.allskip==false"]
[locate x=1050 y=650]
[button normal=back1  target=*return  over="back2" enterse="yidong" clickse="dianji" entersebuf=3 clicksebuf=3  storage="shezhi.ks"]
[locate x=850 y=650]
[button normal=title1  target=*确认返回  over="title2" enterse="yidong" clickse="dianji" entersebuf=3 clicksebuf=3 ]
[trans method="crossfade" time=200  over="读取1" enterse="yidong" clickse="dianji"]
[wt]
[s]


*确认返回
;[eval exp="tf.询问对话='确定返回标题菜单吗？'"]
[询问窗口1 text=&tf.询问对话 storage=shezhi.ks cancel=*cancel ok=*title xuanxiang=cdjm3 entersebuf=3 clicksebuf=3]
[s]



*cancel
[backlay]
;[freeimage layer=5 page="back"]
[layopt layer=message7 visible=false page=fore]
[current layer="message7" page="back"]
[locklink]
[stoptrans]
[wt]
[unlocklink]
[rclick enabled="true" jump="true" storage="shezhi.ks" target=*return]
[s]

*全屏
[eval exp="kag.onFullScreenMenuItemClick(kag)"]
[unlocklink]
[s]
*窗口
[eval exp="kag.onWindowedMenuItemClick(kag)"]
[unlocklink]
[s]

*窗口比例1
[if exp="kag.fullScreened==false"] 
[eval exp="kag.innerWidth=1024"]
[endif] 
[unlocklink]
[s]
*窗口比例2
[if exp="kag.fullScreened==false"] 
[eval exp="kag.innerWidth=1280"]
[endif] 
[unlocklink]
[s]

*已读
[iscript]
  kag.allskip=false;
[endscript]
[locklink]
[jump target=*shezhi2 storage="shezhi.ks"]
[s]

*全部
[iscript]
  kag.allskip=true;
[endscript]
[locklink]
[jump target=*shezhi2 storage="shezhi.ks"]
[s]

*return
[history enabled=true output=true]
[backlay]
[layopt layer="message5" visible="false" page="back"]
[layopt layer=message2 visible=true page=back]
[layopt layer=message1 visible=true page=back]
[locklink]
[stoptrans]
[trans method="crossfade" time=500]
[wt]
[current layer="message1" page="fore"]
[history enabled=true output=true]
[rclick enabled="true" call="true" storage="youjian.ks" target=*youjian1]
;缩略图锁定取消
;这里所有系统(SAVE,LOAD,OPTION)的返回都将返回*return标签，因此锁定取消只要设定一次
;锁定和锁定取消必须是一一对应的，因此如果你设定了多了返回游戏的标签，每个的末尾都要取消锁定
;否则下一次再进入主菜单就会出错
[return]

*title
;[eval exp="kag.goToStart()"]
[gotostart ask="false"]
;[jump target=*first1 storage="first.ks"]