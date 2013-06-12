@loadcell
@wait time=1300
@loop
;
@macro name=copyone
@copy dx=146 dy=118 sx=%x sy=0 sw=135 sh=44
@wait time=30
@endmacro
;
*start
@copyone x=0
@copyone x=135
@copyone x=270
@copyone x=135
@copyone x=0
@wait time=6300

@jump target=*start