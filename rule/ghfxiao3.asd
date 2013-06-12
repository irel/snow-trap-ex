@loadcell
@wait time=1500
@loop
;
@macro name=copyone
@copy dx=148 dy=108 sx=%x sy=0 sw=146 sh=57
@wait time=25
@endmacro
;
*start
@copyone x=0
@copyone x=146
@copyone x=292
@copyone x=146
@copyone x=0
@wait time=6400

@jump target=*start