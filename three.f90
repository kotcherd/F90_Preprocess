module three
use zero
real :: g

contains



function threefunc(x) result(y)
    real(8) :: x,y,y1,y2
#if defined BAR
    g = 9.0
#elif
    g = -666.666
#endif
    y1 = zerofunc(x)
    print *, "g is ", g
    print *, "g should be 9.0"
    y  = zerofunc(y1)
end function

end module


