*shezhi
[locklink]
[rclick enabled="true" jump="true" storage="shezhi2.ks" target=*return]
[backlay]

*shezhi2
[position layer=message3 page=back visible=true opacity=255 top=0 height=640 left=0 width=960 marginl=0 margint=0 marginr=0 marginb=0 frame="shezhi.png"]
[current layer=message3 page=back][er][nowait]
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
[locate x=25 y=600]
[button normal=zhedang1.png  over="zhedang1.png"  entersebuf=3 clicksebuf=3 ]
[locate x=1000 y=350]
[button normal=zhedang2.png  over="zhedang2.png" entersebuf=3 clicksebuf=3 ]

[locate x=470 y=595]
[button normal=yidutiaoguo1.png   over="yidutiaoguo1.png"  entersebuf=3 clicksebuf=3    cond="kag.allskip==false"]
[button normal=yidutiaoguo2.png target=*已读   over="yidutiaoguo2.png" enterse="yidong" clickse="dianji"  entersebuf=3 clicksebuf=3    cond="kag.allskip==true"]
[locate x=658 y=590]
[button normal=quanbutiaoguo1.png  over="quanbutiaoguo1.png"  entersebuf=3 clicksebuf=3  cond="kag.allskip==true"]
[button normal=quanbutiaoguo2.png  target=*全部  over="quanbutiaoguo2.png" enterse="yidong" clickse="dianji" entersebuf=3 clicksebuf=3  cond="kag.allskip==false"]
[locate x=1050 y=650]
[button normal=back1  target=*return  over="back2" enterse="yidong" clickse="dianji" entersebuf=3 clicksebuf=3  storage="shezhi2.ks"]
[trans method="crossfade" time=200  over="读取1" enterse="yidong" clickse="dianji"]
[wt]
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
[jump target=*shezhi2 storage="shezhi2.ks"]
[s]

*全部
[iscript]
  kag.allskip=true;
[endscript]
[locklink]
[jump target=*shezhi2 storage="shezhi2.ks"]
[s]


*return
[backlay]
[layopt layer="message3" visible="false" page="back"]
[locklink]
[stoptrans]
[trans method="crossfade" time=500]
[wt]
[current layer="message1" page="fore"]
[rclick enabled="false"]
[unlocklink]
