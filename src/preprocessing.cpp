#include "preprocessing.h"


FILE* open_file(char* file_name) {
	FILE* fp = fopen(file_name, "r");
	if (fp == NULL)
	    exit(EXIT_FAILURE);
	return fp;
}

void close_file(FILE* fp) {
	fclose(fp);
}

Eigen::Matrix3Xd read_coordinates(FILE* fp, bool* is_ca) {

	Eigen::Matrix3Xd point(3, 1);

	char* line = NULL;
	size_t len = 0;
	char* atom = new char[5]; 
	char* prot = new char[4];
	char* amino = new char[4];
	char letter;
	unsigned int index_1, index_2;
	double* coordinates = new double[3];

	is_ca = false;
	if ((getline(&line, &len, fp)) != -1) {
		sscanf(line, "%s %d %s %s %c %d %lf %lf %lf", atom, &index_1, prot, amino, &letter, &index_2, &coordinates[0], &coordinates[1], &coordinates[2]);
		if (strcmp(prot, "CA") == 0) *is_ca = true;
		point(0,0) = coordinates[0];
		point(1,0) = coordinates[1];
		point(2,0) = coordinates[2];
		return point;
	}
	//return NULL;
}


int main() {
	FILE* fp;
	bool ca;
	Eigen::Matrix3Xd coordinates(3,1);
	fp = open_file("../data/A.pdb");
	coordinates = read_coordinates(fp, &ca);
	std::cout<< coordinates << std::endl;
	close_file(fp);
}

