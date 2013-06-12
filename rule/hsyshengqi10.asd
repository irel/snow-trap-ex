@loadcell
@wait time=1200
@loop
;
@macro name=copyone
@copy dx=122 dy=95 sx=%x sy=0 sw=124 sh=46
@wait time=40
@endmacro
;
*start
@copyone x=0
@copyone x=124
@copyone x=248
@copyone x=124
@copyone x=0
@wait time=6300

@jump target=*start
