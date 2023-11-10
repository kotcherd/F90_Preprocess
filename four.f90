module four
use three

implicit none

contains

function fourfunc(x) result(y)
    real(8) :: x,y
    y = threefunc(x) 
end function

end module

