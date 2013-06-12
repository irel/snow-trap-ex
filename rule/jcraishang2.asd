@loadcell
@wait time=1400
@loop
;
@macro name=copyone
@copy dx=115 dy=108 sx=%x sy=0 sw=139 sh=65
@wait time=20
@endmacro
;
*start
@copyone x=0
@copyone x=139
@copyone x=278
@copyone x=139
@copyone x=0
@wait time=6600

@jump target=*start

