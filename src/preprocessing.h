#ifndef PREPROCESSING_H
#define PREPROCESSING_H

#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <Eigen/Geometry>

FILE* open_file_for_read(char* file_name);

FILE* open_file_for_write(char* file_name);

void close_file(FILE* fp);

Eigen::Matrix3Xd read_coordinates(FILE* fp, bool* is_ca,  bool* is_finish, bool* change_atom);

void writte_vector(FILE* file_A, FILE* file_B, FILE* file_out, Eigen::Matrix3Xd matrix_A, Eigen::Matrix3Xd matrix_B);

#endif