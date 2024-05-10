program translate_left    !Written by Aditya Barman
    implicit none
    real, dimension(:), allocatable :: x, y, z
    integer :: i, j, num_atoms
    real :: dis
    character(len=2), dimension(:), allocatable :: atom
    character(len=100) :: input_file, output_filename
    character(len=100) :: new_directory_name, header
     

    
    
  do j = 1 , 26
       ! Displacement of atoms
       dis = j * 0.5
       input_file = "Au-111-8*12*1-core-TPBZ.xyz"
 
       ! Open the input file
       open(unit=10, file= input_file)

      ! Read the number of atoms  
       num_atoms = 976
      
      ! Skip the first two lines
      do i = 1, 2
        read(10, *)
      end do

     ! Allocate arrays based on the number of atoms
     allocate(atom(num_atoms), x(num_atoms), y(num_atoms), z(num_atoms))
    
     ! Read atomic coordinates from the file
     do i = 1, num_atoms
        read(10, '(a2, 3x, 3F12.6)') atom(i), x(i), y(i), z(i)
     end do

    !setting output file name
    output_filename = 'trans_left_' // trim(adjustl(int2str(j))) // '.xyz'
    header = 'Au-111-8-12-1-core-TPBZ-left-' // trim(adjustl(int2str(j))) 

    open(unit=20, file=output_filename)
    ! Write the modified atomic coordinates to standard output
    write(20, '(i4)') num_atoms
    write(20, '(a9)') header
    ! Write the modified atomic coordinates to standard output
    do i = 1, 826
        write(20, '(a2, 3F12.6)') atom(i), x(i), y(i), z(i)
    end do
 
    ! Write the un-modified atomic coordinates to standard output
    do i = 827, num_atoms
        write(20, '(a2, 3F12.6)') atom(i), x(i) - dis, y(i), z(i) 
    end do
  
    ! Clean up and stop the program
    close(unit=10)
    close(unit=20)
    deallocate(atom, x, y, z)
 end do

  write(*,*) "files are generated successfully by Schrodinger"

contains

    ! Function to convert integer to string
    function int2str(i) result(s)
        integer, intent(in) :: i
        character(len=10) :: s
        write(s, '(I10)') i
    end function int2str

     
end program translate_left

