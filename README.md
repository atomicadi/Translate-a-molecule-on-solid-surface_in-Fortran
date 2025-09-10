# Translate a molecule on solid surface in Fortran
https://github.com/atomicadi/Translate-a-molecule-on-solid-surface_in-Fortran/blob/fcdfdaf13bd7b94d720c0e3783c12bef9fa0c108/trans_represent.png

In this Fortran (.f90) code, a molecule (denoted by "M", in the rest of the README) which is nearly situated at the middle of a solid surface, is translated in the left side by 0.5 angstrom(A) (in angstrom unit) in each step.\
Let's break down the code,
1. After giving all the parameters and variables, first the M is transalated to 13 A, so the iterate value is take 1 to 26 (j).
2. Give the number of atoms and open the file.
3. In the .xyz format, first two line gives the no. of atoms and ame of the file. So, skip that two.
4. Allocate the coordinates and atom, so taht it can read it serialy.
5. Read all the atomic coordinates and atomic symbols.
6. It is allocatable, so go from where to where, changes are needed by giving the value of i. (i= 1, 23)
7. And then, arrenge the unchanged one, by giving the i value, after the ending no. of prvious i value. (i= 24, num_atom)
8. Deallocated the allocated variables.
9. lastly, a function is contained with the code, which converts integer to string for generation new output files.

