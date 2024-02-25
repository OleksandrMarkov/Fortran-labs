! Дано: натуральне число N. Серед натуральних чисел від 1 до N знайти всі ті,
! які можна представити у вигляді суми квадратів двох натуральних чисел.
! Визначити процедуру, яка дозволяє розпізнавати повні квадрати.

program lab3
    implicit none
    integer, parameter :: N = 35
    call sub(N)
end program lab3

subroutine sub(N)
    integer :: i
    real :: k, j
    do i = 2, N
        do j = 1, i
            k = sqrt(real(i - j*j))
            if ( ( k == floor(k) ) .and. (k > 0) ) then
                print *, i
                exit
            end if
        end do
    end do
end subroutine sub
