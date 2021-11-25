# Description

The `.cpp are found in `src` directory. Here we can find the following files: `preprocessing.cpp, transform.cpp, kabsch.cpp`. On `preprocessing.cpp` the logic to read and write the data is found. In this file we find code in `c` since reading and writing is optimized in this way. I/O operations are usually critical and therefore we have taken into account the speed of the code.

`wkabsch.cpp` We find the logic for implementation of the Kabsch algorithm. It is important to note that this file uses the [Eigen library](https://eigen.tuxfamily.org/index.php?title=Main_Page).

`transform.cpp` In this file is the main, where the transformation is applied and then the results are written.

# Execution

To compile and run (in the `src` directory):

```
make clean
make all
./transform
```

To run the tests go to the test in folder then run:

```
make clean
make test
./test
```