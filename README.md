# Translate a molecule on solid surface in Fortran

![image alt](https://github.com/atomicadi/Translate-a-molecule-on-solid-surface_in-Fortran/blob/fcdfdaf13bd7b94d720c0e3783c12bef9fa0c108/trans_represent.png)

In this Fortran code (**translate.f90**), a molecule (denoted by "M", in the rest of the README) which is nearly situated at the middle of a solid surface, is translated on the Au (111) surface.


1. After setting up the values for the total distance the user wants to move M (here, 13 Å) and the distance per iteration (here, 0.5 Å), a variable named dis is generated. This variable is incremented in each iteration and added to the coordinates of M. Since the total distance to be moved is 13 Å and the step size is 0.5 Å, the number of iterations is calculated as (13 / 0.5) = 26.
2. Then the coordinates of M and the Au(111) surface are collected in a matrix format. Keeping the coordinates of Au unchanged, the value of dis is added or subtracted (depending on the direction) from the coordinates of M. Here, dis is subtracted only from the X-axis coordinate to move along the X direction in each iteration, and an output file is generated at each step.


One can simply achieved the results by following this simple commands:
```
gfortran translate.f90
./a.out
```

