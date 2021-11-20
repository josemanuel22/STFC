
Target: C++ program for superposing atomic structures (A and B)

Given atomic coordinates in files A.pdb and B.pdb, write a code, which

1) reads these files
2) extracts x,y,z coordinates
3) transforms x,y,z from B.pdb such that they overlap with x,y,z in A
4) writes out the original A and transformed B in a single file by simple
   concatenation (records from A followed by transformed records from B).
5) output superposition metrics (r.m.s.d. between overlapped atoms)

The code should be accompanied with a build script (e.g., Cmake based).
Use gcc or clang compiler.


Details

1) reading files should be straightforward, no details

2) file content looks like the following:

ATOM      2  OD2 ASP A   1      42.332  14.034   8.116  1.00 57.21      A    O
ATOM      3  OD1 ASP A   1      41.874  12.989   6.549  1.00 59.26      A    O
ATOM      4  CG  ASP A   1      42.815  13.315   7.448  1.00 56.56      A    C
ATOM      5  CB  ASP A   1      44.235  13.425   7.046  1.00 49.60      A    C
ATOM      6  CA  ASP A   1      45.237  12.391   7.547  1.00 35.72      A    C
ATOM      7  C   ASP A   1      46.586  12.368   7.307  1.00 31.08      A    C
ATOM      8  O   ASP A   1      47.495  13.115   7.457  1.00 25.51      A    O
ATOM      9  N   VAL A   2      46.688  11.649   5.993  1.00 35.09      A    N

Atomic coordinates are given in columns 7,8,9. E.g., for atom OD2,
x,y,z = 42.332, 14.034, 8.116

3) the transformation may be done in a number of different ways. One simple
solution is described here:

https://en.wikipedia.org/wiki/Kabsch_algorithm

You may use a different method of your choice, and you may use code borrowed
from anywhere for this purpose, gitlab etc etc. Do not reinvent and reimplement
unless necessary. Do not code standard algorithms like SVD, they should be
readily available from public repositories.

Note: the superposition is based on matching coordinates of alike atoms from
A and B. Use only 'CA' atoms for calculating the transformation matrix but
apply transformation to all atoms in the end. In the above sample, CA atom
has coordinates 45.237, 12.391, 7.547. You should get 96 CA-atoms in both A
and B and they should be matched one-to-one in order of appearance.

4) when writing the resulting file, reproduce contents of A and B as in
original files, but replace all coordinates in part B with the transformed
ones. Make sure that all column positions are kept as in original files
(fixed format).


Assessment criteria

Your code will be assessed on the following merits:

1) it should work using given files
2) it should demonstrate your skills in building a structured C++ program
3) it should be readable and understandable

All other factors, like computational efficiency, brevity, size etc will be
disregarded in the assessment.


Questions:

Any number of any questions may be asked if something is unclear.


Timeframe:

Not fixed but it should be reasonable. 2-3 weeks is suggested as a fair
estimate, please communicate if more time is required.
