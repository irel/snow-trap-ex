@loadcell
@wait time=1000
@loop
;
@macro name=copyone
@copy dx=187 dy=94 sx=%x sy=0 sw=117 sh=43
@wait time=50
@endmacro
;
*start
@copyone x=0
@copyone x=117
@copyone x=234
@copyone x=117
@copyone x=0
@wait time=6000

@jump target=*start