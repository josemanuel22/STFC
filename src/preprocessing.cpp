#include "preprocessing.h"

/**
 * For performance purposes we use the C routines. You can see in this link an analysis 
 + of its performance for the treatment of large files.
 * https://stackoverflow.com/questions/7868936/read-file-line-by-line-using-ifstream-in-c
 *
 * For the matrix calculation we use the library developed at INRIA Eigen.
 + To this day, it is still the standard for this type of operation.
 * https://eigen.tuxfamily.org/index.php?title=Main_Page
 */

FILE* open_file_for_read(char* file_name) {
	FILE* fp = fopen(file_name, "r");
	if (fp == NULL)
	    exit(EXIT_FAILURE);
	return fp;
}

FILE* open_file_for_write(char* file_name) {
	FILE* fp = fopen(file_name, "w");
	if (fp == NULL)
	    exit(EXIT_FAILURE);
	return fp;
}

void close_file(FILE* fp) {
	fclose(fp);
}

/**
 * Read the coordinates of the next atom in the file. 
 * Indicates if it is a CA atom and if the file was terminated.
 * @param fp the pointer to the file to read
 * @param is_ca boolean that indicates if the atom is type ca or not
 * @param is_finish boolean that indicates ig we reach the end of the file
 */
int num_atom = 0;
Eigen::Matrix3Xd read_coordinates(FILE* fp, bool* is_ca,  bool* is_finish, bool* change_atom) {

	Eigen::Matrix3Xd point(3, 1);

	char letter;
	char* line = NULL;
	char* atom = new char[5]; 
	char* prot = new char[4];
	char* amino = new char[4];
	size_t len = 0;
	unsigned int index_1, index_2;

	*is_ca = false;
	*is_finish = true;
	*change_atom = false;
	if (getline(&line, &len, fp) != -1) {
		sscanf(line, "%s %d %s %s %c %d %lf %lf %lf", atom, &index_1, prot, amino, &letter, &index_2, &point(0,0), &point(1,0), &point(2,0));
		if ( num_atom != index_2) {
			num_atom = index_2;
			*change_atom = true;
		}
		if (strncmp(prot, "CA", 2) == 0) *is_ca = true;
		*is_finish = false;
		return point;
	}
	return point;
}

/**
 * Writes the coordinates of the vectors in a file-
 * @param fp the pointer to the file to write
 * @param matrix_A the first vector 
 * @param matrix_B the second vector 
 */
void writte_vector(FILE* file_A, FILE* file_B, FILE* file_out, Eigen::Matrix3Xd matrix_A, Eigen::Matrix3Xd matrix_B) {

	Eigen::Matrix3Xd point(3, 1);

	char letter_1;
	char* line = NULL;
	char* atom = new char[5]; 
	char* prot = new char[5];
	char* amino = new char[4];
	size_t len = 0;
	unsigned int index_1, index_2;
	double val_1, val_2;
	char letter_2, letter_3;
	if (getline(&line, &len, file_A) != -1) {
		sscanf(line, "%s\t%d\t%s\t%s\t%c\t%d\t%lf\t%lf\t%lf\t%lf\t%lf\t%c\t%c", atom, &index_1, prot, amino, &letter_1, &index_2, &point(0,0), &point(1,0), &point(2,0), &val_1, &val_2, &letter_2, &letter_3);
		fprintf(file_out, "%s\t%d\t%s\t%s\t%c\t%d\t%.3lf\t%.3lf\t%.3lf\t%.2lf\t%.2lf\t%c\t%c ", atom, index_1, prot, amino, letter_1, index_2, matrix_A(0,0), matrix_A(1,0), matrix_A(2,0), val_1, val_2, letter_2, letter_3);
	}
	if (getline(&line, &len, file_B) != -1) {
		sscanf(line, "%s\t%d\t%s\t%s\t%c\t%d\t%lf\t%lf\t%lf\t%lf\t%lf\t%c\t%c", atom, &index_1, prot, amino, &letter_1, &index_2, &point(0,0), &point(1,0), &point(2,0), &val_1, &val_2, &letter_2, &letter_3);
		fprintf(file_out, "%s\t%d\t%s\t%s\t%c\t%d\t%.3lf\t%.3lf\t%.3lf\t%.2lf\t%.2lf\t%c\t%c\n", atom, index_1, prot, amino, letter_1, index_2, matrix_B(0,0), matrix_B(1,0), matrix_B(2,0), val_1, val_2, letter_2, letter_3);
	}
	return;
}


