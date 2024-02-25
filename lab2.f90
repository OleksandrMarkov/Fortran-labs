! Дано: натуральне число N, масив цілих чисел A(N).
! З’ясувати, які числа в масиві зустрічаються частіше – додатні чи від’ємні.
! Якщо всі члени масиву дорівнюють нулю, вивести повідомлення про це.

program lab2
implicit none
   integer, dimension (12) :: myArray
   integer :: i, positive = 0, negative = 0, zeros = 0

   myArray = (/-2, 5, 5, 5, 0, 0, -7, 1, 1, 10, 4, -3/)

   print *, 'Array: '

   do i = 1, size(myArray)
        print *, myArray(i)
        if (myArray(i) > 0) then
            positive = positive + 1
        else if (myArray(i) < 0) then
            negative = negative + 1
        else
            zeros = zeros + 1
        end if
   end do

   if (zeros .eq. size(myArray)) then
        print *, "All array elements are zeros!"
   else if (positive > negative) then
        print *, "There are more positive numbers in array "
   else if (positive < negative) then
        print *, "There are more negative numbers in array "
   else
        print *, "There are the same number of positive and negative numbers in array "
   end if

end program lab2
