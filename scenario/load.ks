*load
[eval exp="f.当前load页=1"]
[history enabled=false output=false]
[locklink]
[rclick enabled="true" jump="true" storage="load.ks" target=*return]
[backlay]
[layopt layer=message5 page=fore visible=true  opacity=0]
[layopt layer=message2 visible=false page=back]

*load2
[position layer=message5 page=back visible=true opacity=255 top=0 height=640 left=0 width=960 marginl=0 margint=0 marginr=0 marginb=0 frame="loaddiban"]
[current layer=message5 page=back][er][nowait]

[locate x=82 y=580]
[button normal=cunduanniu1 over=cunduanniu11  enterse="yidong" clickse="dianji" exp="f.当前load页=1" target=*load2  entersebuf=3 clicksebuf=3 cond="f.当前load页!=1"]
[button normal=cunduanniu11 over=cunduanniu11  enterse="yidong" clickse="dianji" exp="f.当前load页=1" target=*load2  entersebuf=3 clicksebuf=3 cond="f.当前load页==1"]
[locate x=108 y=580]
[button normal=cunduanniu2 over=cunduanniu22  enterse="yidong" clickse="dianji" exp="f.当前load页=2" target=*load2  entersebuf=3 clicksebuf=3  cond="f.当前load页!=2"]
[button normal=cunduanniu22 over=cunduanniu22  enterse="yidong" clickse="dianji" exp="f.当前load页=2" target=*load2  entersebuf=3 clicksebuf=3  cond="f.当前load页==2"]
[locate x=136 y=580]
[button normal=cunduanniu3 over=cunduanniu33  enterse="yidong" clickse="dianji" exp="f.当前load页=3" target=*load2  entersebuf=3 clicksebuf=3   cond="f.当前load页!=3"]
[button normal=cunduanniu33 over=cunduanniu33  enterse="yidong" clickse="dianji" exp="f.当前load页=3" target=*load2  entersebuf=3 clicksebuf=3   cond="f.当前load页==3"]
[locate x=162 y=580]
[button normal=cunduanniu4 over=cunduanniu44  enterse="yidong" clickse="dianji" exp="f.当前load页=4" target=*load2  entersebuf=3 clicksebuf=3   cond="f.当前load页!=4"]
[button normal=cunduanniu44 over=cunduanniu44  enterse="yidong" clickse="dianji" exp="f.当前load页=4" target=*load2  entersebuf=3 clicksebuf=3   cond="f.当前load页==4"]
[locate x=188 y=580]
[button normal=cunduanniu5 over=cunduanniu55  enterse="yidong" clickse="dianji" exp="f.当前load页=5" target=*load2  entersebuf=3 clicksebuf=3   cond="f.当前load页!=5"]
[button normal=cunduanniu55 over=cunduanniu55  enterse="yidong" clickse="dianji" exp="f.当前load页=5" target=*load2  entersebuf=3 clicksebuf=3  cond="f.当前load页==5"]
[locate x=214 y=580]
[button normal=cunduanniu6 over=cunduanniu66  enterse="yidong" clickse="dianji" exp="f.当前load页=6" target=*load2  entersebuf=3 clicksebuf=3   cond="f.当前load页!=6"]
[button normal=cunduanniu66 over=cunduanniu66  enterse="yidong" clickse="dianji" exp="f.当前load页=6" target=*load2  entersebuf=3 clicksebuf=3   cond="f.当前load页==6"]
[locate x=240 y=580]
[button normal=cunduanniu7 over=cunduanniu77  enterse="yidong" clickse="dianji" exp="f.当前load页=7" target=*load2  entersebuf=3 clicksebuf=3   cond="f.当前load页!=7"]
[button normal=cunduanniu77 over=cunduanniu77  enterse="yidong" clickse="dianji" exp="f.当前load页=7" target=*load2  entersebuf=3 clicksebuf=3   cond="f.当前load页==7"]
[locate x=266 y=580]
[button normal=cunduanniu8 over=cunduanniu88  enterse="yidong" clickse="dianji" exp="f.当前load页=8" target=*load2  entersebuf=3 clicksebuf=3   cond="f.当前load页!=8"]
[button normal=cunduanniu88 over=cunduanniu88  enterse="yidong" clickse="dianji" exp="f.当前load页=8" target=*load2  entersebuf=3 clicksebuf=3   cond="f.当前load页==8"]
[locate x=292 y=580]
[button normal=cunduanniu9 over=cunduanniu99  enterse="yidong" clickse="dianji" exp="f.当前load页=9" target=*load2  entersebuf=3 clicksebuf=3   cond="f.当前load页!=9"]
[button normal=cunduanniu99 over=cunduanniu99  enterse="yidong" clickse="dianji" exp="f.当前load页=9" target=*load2  entersebuf=3 clicksebuf=3   cond="f.当前load页==9"]



[locate x=94 y=174][button normal="&kag.getBookMarkFileNameAtNum((f.当前load页-1)*8)" over="&kag.getBookMarkFileNameAtNum((f.当前load页-1)*8)"  cond="checkdata((f.当前load页-1)*8)==true"]
[locate x=95 y=300]
[font size=16  color=0x003b72][emb exp="kag.getBookMarkDate((f.当前load页-1)*8)" cond="checkdata((f.当前load页-1)*8)==true"]
[ch text="      "  cond="checkdata((f.当前load页-1)*8)==true"]
[eval exp="tf.wudi=sf.地点[(f.当前load页-1)*8]"]
[locate x=95 y=324][ch text=&tf.wudi cond="checkdata((f.当前load页-1)*8)==true"][resetfont]

[locate x=381 y=174][button normal="&kag.getBookMarkFileNameAtNum((f.当前load页-1)*8+1)" over="&kag.getBookMarkFileNameAtNum((f.当前load页-1)*8+1)"   cond="checkdata((f.当前load页-1)*8+1)==true"]
[locate x=380 y=300]
[font size=16  color=0x003b72][emb exp="kag.getBookMarkDate((f.当前load页-1)*8+1)" cond="checkdata((f.当前load页-1)*8+1)==true"]
[ch text="      " cond="checkdata((f.当前load页-1)*8+1)==true"]
[eval exp="tf.wudi=sf.地点[(f.当前load页-1)*8+1]"]
[locate x=380 y=325][ch text=&tf.wudi  cond="checkdata((f.当前load页-1)*8+1)==true"][resetfont]


[locate x=667 y=174][button normal="&kag.getBookMarkFileNameAtNum((f.当前load页-1)*8+2)" over="&kag.getBookMarkFileNameAtNum((f.当前load页-1)*8+2)"   cond="checkdata((f.当前load页-1)*8+2)==true"]
[locate x=667 y=300]
[font size=16  color=0x003b72][emb exp="kag.getBookMarkDate((f.当前load页-1)*8+2)" cond="checkdata((f.当前load页-1)*8+2)==true"]
[ch text="      " cond="checkdata((f.当前load页-1)*8+2)==true"]
[eval exp="tf.wudi=sf.地点[(f.当前load页-1)*8+2]"]
[locate x=667 y=325][ch text=&tf.wudi cond="checkdata((f.当前load页-1)*8+2)==true"][resetfont]

[locate x=954 y=174][button normal="&kag.getBookMarkFileNameAtNum((f.当前load页-1)*8+3)" over="&kag.getBookMarkFileNameAtNum((f.当前load页-1)*8+3)"   cond="checkdata((f.当前load页-1)*8+3)==true"]
[locate x=954 y=300]
[font size=16  color=0x003b72][emb exp="kag.getBookMarkDate((f.当前load页-1)*8+3)" cond="checkdata((f.当前load页-1)*8+3)==true"]
[ch text="      " cond="checkdata((f.当前load页-1)*8+3)==true"]
[eval exp="tf.wudi=sf.地点[(f.当前load页-1)*8+3]"]
[locate x=954 y=325][ch text=&tf.wudi cond="checkdata((f.当前load页-1)*8+3)==true"][resetfont]


[locate x=94 y=386][button normal="&kag.getBookMarkFileNameAtNum((f.当前load页-1)*8+4)" over="&kag.getBookMarkFileNameAtNum((f.当前load页-1)*8+4)"   cond="checkdata((f.当前load页-1)*8+4)==true"]
[locate x=94 y=510]
[font size=16  color=0x003b72][emb exp="kag.getBookMarkDate((f.当前load页-1)*8+4)" cond="checkdata((f.当前load页-1)*8+4)==true"]
[ch text="      " cond="checkdata((f.当前load页-1)*8+4)==true"]
[eval exp="tf.wudi=sf.地点[(f.当前load页-1)*8+4]"]
[locate x=94 y=535][ch text=&tf.wudi cond="checkdata((f.当前load页-1)*8+4)==true"]

[locate x=381 y=386][button normal="&kag.getBookMarkFileNameAtNum((f.当前load页-1)*8+5)" over="&kag.getBookMarkFileNameAtNum((f.当前load页-1)*8+5)"   cond="checkdata((f.当前load页-1)*8+5)==true"]
[locate x=380 y=515]
[font size=16  color=0x003b72][emb exp="kag.getBookMarkDate((f.当前load页-1)*8+5)" cond="checkdata((f.当前load页-1)*8+5)==true"]
[ch text="      " cond="checkdata((f.当前load页-1)*8+5)==true"]
[eval exp="tf.wudi=sf.地点[(f.当前load页-1)*8+5]"]
[locate x=380 y=535][ch text=&tf.wudi cond="checkdata((f.当前load页-1)*8+5)==true"]

[locate x=667 y=386][button normal="&kag.getBookMarkFileNameAtNum((f.当前load页-1)*8+6)" over="&kag.getBookMarkFileNameAtNum((f.当前load页-1)*8+6)"   cond="checkdata((f.当前load页-1)*8+6)==true"]
[locate x=665 y=515]
[font size=16  color=0x003b72][emb exp="kag.getBookMarkDate((f.当前load页-1)*8+6)" cond="checkdata((f.当前load页-1)*8+6)==true"]
[ch text="      " cond="checkdata((f.当前load页-1)*8+6)==true"]
[eval exp="tf.wudi=sf.地点[(f.当前load页-1)*8+6]"]
[locate x=665 y=535][ch text=&tf.wudi cond="checkdata((f.当前load页-1)*8+6)==true"]

[locate x=954 y=387][button normal="&kag.getBookMarkFileNameAtNum((f.当前load页-1)*8+7)" over="&kag.getBookMarkFileNameAtNum((f.当前load页-1)*8+7)"   cond="checkdata((f.当前load页-1)*8+7)==true"]
[locate x=954 y=515]
[font size=16  color=0x003b72][emb exp="kag.getBookMarkDate((f.当前load页-1)*8+7)" cond="checkdata((f.当前load页-1)*8+7)==true"]
[ch text="      " cond="checkdata((f.当前load页-1)*8+7)==true"]
[eval exp="tf.wudi=sf.地点[(f.当前load页-1)*8+7]"]
[locate x=954 y=537][ch text=&tf.wudi cond="checkdata((f.当前load页-1)*8+7)==true"]

[locate x=1050 y=650]
[button normal=back1  target=*return  over="back2" enterse="yidong" clickse="dianji" entersebuf=3 clicksebuf=3  storage="load.ks"]


[position layer=message6 page=back visible=true opacity=255 top=0 height=640 left=0 width=960 marginl=0 margint=0 marginr=0 marginb=0 frame="mingming"]
[current layer=message6 page=back][er]
[locate x=77 y=158][button normal="kuang1" over="kuang2" storage="load.ks" target=*读取 exp="tf.存档编号=(f.当前load页-1)*8"]
[locate x=364 y=158][button normal="kuang1" over="kuang2" storage="load.ks" target=*读取 exp="tf.存档编号=(f.当前load页-1)*8+1"]
[locate x=650 y=158][button normal="kuang1" over="kuang2" storage="load.ks" target=*读取 exp="tf.存档编号=(f.当前load页-1)*8+2"]
[locate x=937 y=159][button normal="kuang1" over="kuang2" storage="load.ks" target=*读取 exp="tf.存档编号=(f.当前load页-1)*8+3"]
[locate x=77 y=370][button normal="kuang1" over="kuang2" storage="load.ks" target=*读取 exp="tf.存档编号=(f.当前load页-1)*8+4"]
[locate x=364 y=370][button normal="kuang1" over="kuang2" storage="load.ks" target=*读取 exp="tf.存档编号=(f.当前load页-1)*8+5"]
[locate x=650 y=370][button normal="kuang1" over="kuang2" storage="load.ks" target=*读取 exp="tf.存档编号=(f.当前load页-1)*8+6"]
[locate x=937 y=370][button normal="kuang1" over="kuang2" storage="load.ks" target=*读取 exp="tf.存档编号=(f.当前load页-1)*8+7"]

[stoptrans]
[trans method=crossfade time=200][wt]
[s]



*读取
;当档案存在时,打开读取询问框
[if exp="checkdata(tf.存档编号)==true"]
;[eval exp="tf.询问对话='※确定要读取 Data'+(tf.存档编号+1)+' 吗？※'"]
[询问窗口 text=&tf.询问对话 storage=load.ks cancel=*cancel ok=*确定读取 xuanxiang=cdjm2]
[endif]

;当档案不存在时,读取无效
[if exp="checkdata(tf.存档编号)==false"]
[current layer="message7" page="fore"]
[er]
[jump target=*load2 storage="load.ks"]

;[档案显示 target=*读取]
[endif]
[s]

*确定读取

[eval exp="kag.historyLayer.clear()"]
[backlay]
[position layer=message8 frame="chunhei" top=0 left=0 page=back visible=true opacity=255]
[locklink]
[stoptrans]
[trans method=crossfade time=1000][wt]
[unlocklink]
[load place=&tf.存档编号 ask="false"]

[s]


*cancel
[backlay]
[layopt layer=message7 visible=false page=back]
[current layer="message7" page="back"]
[er]
[locklink]
[stoptrans]
[trans method="crossfade" time=200]
[wt]
[unlocklink]
[rclick enabled="true" jump="true" storage="load.ks" target=*return]
[s]

*return
[history enabled=true output=true]
[backlay]
[layopt layer="message5" visible="false" page="back"]
[layopt layer="message6" visible="false" page="back"]
[layopt layer=message2 visible=true page=back]
[locklink]
[stoptrans]
[trans method="crossfade" time=500]
[wt]
;[unlocklink]
[current layer="message1" page="fore"]
[rclick enabled="true" call="true" storage="youjian.ks" target=*youjian1]
[return]

