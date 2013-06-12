@loadcell
@wait time=1300
@loop
;
@macro name=copyone
@copy dx=98 dy=99 sx=%x sy=0 sw=131 sh=39
@wait time=25
@endmacro
;
*start
@copyone x=0
@copyone x=131
@copyone x=262
@copyone x=131
@copyone x=0
@wait time=6200

@jump target=*start

