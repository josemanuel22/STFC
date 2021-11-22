#include "preprocessing.h"


FILE* open_file_for_read(char* file_name) {
	FILE* fp = fopen(file_name, "r");
	if (fp == NULL)
	    exit(EXIT_FAILURE);
	return fp;
}

FILE* open_file_for_write(char* file_name) {
	FILE* fp = fopen(file_name, "r");
	if (fp == NULL)
	    exit(EXIT_FAILURE);
	return fp;
}

void close_file(FILE* fp) {
	fclose(fp);
}

Eigen::Matrix3Xd read_coordinates(FILE* fp, bool* is_ca,  bool* is_finish) {

	Eigen::Matrix3Xd point(3, 1);

	char* line = NULL;
	size_t len = 0;
	char* atom = new char[5]; 
	char* prot = new char[4];
	char* amino = new char[4];
	char letter;
	unsigned int index_1, index_2;

	*is_ca = false;
	*is_finish = true;
	if (getline(&line, &len, fp) != -1) {
		sscanf(line, "%s %d %s %s %c %d %lf %lf %lf", atom, &index_1, prot, amino, &letter, &index_2, &point(0,0), &point(1,0), &point(2,0));
		if (strncmp(prot, "CA", 2) == 0) *is_ca = true;
		*is_finish = false;
		return point;
	}
	return point;
}

void writte_vector(FILE* file_out, Eigen::Matrix3Xd matrix_A, Eigen::Matrix3Xd matrix_B) {
	fprintf(file_out, "%lf %lf %lf %lf %lf %lf\n", matrix_A(0,0), matrix_A(1,0), matrix_A(2,0), matrix_B(0,0), matrix_B(1,0), matrix_B(2,0));
	return;
}


