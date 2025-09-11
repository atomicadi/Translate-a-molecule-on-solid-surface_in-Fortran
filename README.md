# Translate a molecule on solid surface in Fortran

![image alt](https://github.com/atomicadi/Translate-a-molecule-on-solid-surface_in-Fortran/blob/fcdfdaf13bd7b94d720c0e3783c12bef9fa0c108/trans_represent.png)

In this Fortran code (translate.f90), a molecule (denoted by "M", in the rest of the README) which is nearly situated at the middle of a solid surface, is translated on the Au (111) surface.


1. After setting up the values of total distance (user want to move M (Here it is 13 Å)) and each iteration distance (Here it is 0.5 Å) a variable named, dis is generated which will be increased over iteration and added to the coordinates of the M. Here the total distance want to move is 13 Å and the each iteration distance is 0.5 Å. So the number of iteration is taken (13x0.5) = 26 times.
2. Then the corrdinates of the M and Au (111) surface are collected in a matrix format, and keeping the coordinated of Au unchanged, the value dis will be +/- accroding to the direction with the coordinates of M (Here dis is substracted only from coordinates of X axis to move along X) in each iteration, and an output file is generated in each step.

