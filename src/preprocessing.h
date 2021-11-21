#ifndef PREPROCESSING_H
#define PREPROCESSING_H

#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <Eigen/Geometry>

FILE* open_file(char* file_name);

void close_file(FILE* fp);

Eigen::Matrix3Xd read_coordinates(FILE* fp, bool* is_ca);

#endif