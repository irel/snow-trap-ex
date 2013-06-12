@loadcell
@wait time=1200
@loop
;
@macro name=copyone
@copy dx=144 dy=78 sx=%x sy=0 sw=108 sh=38
@wait time=30
@endmacro
;
*start
@copyone x=0
@copyone x=108
@copyone x=216
@copyone x=108
@copyone x=0
@wait time=6600

@jump target=*start