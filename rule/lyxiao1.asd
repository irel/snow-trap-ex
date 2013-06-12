@loadcell
@wait time=1300
@loop
;
@macro name=copyone
@copy dx=229 dy=101 sx=%x sy=0 sw=118 sh=50
@wait time=30
@endmacro
;
*start
@copyone x=0
@copyone x=118
@copyone x=236
@copyone x=118
@copyone x=0
@wait time=6200

@jump target=*start
