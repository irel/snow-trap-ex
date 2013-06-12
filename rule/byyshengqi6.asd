@loadcell
@wait time=1000
@loop
;
@macro name=copyone
@copy dx=186 dy=128 sx=%x sy=0 sw=147 sh=49
@wait time=30
@endmacro
;
*start
@copyone x=0
@copyone x=147
@copyone x=294
@copyone x=147
@copyone x=0
@wait time=6000

@jump target=*start