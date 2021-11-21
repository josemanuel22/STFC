#include "preprocessing.h"
#include "kabsch.h"

int main() {

	FILE* fp_A;
	FILE* fp_B;
	FILE* fp_C;
	Eigen::Matrix3Xd coordinates_A;
	Eigen::Matrix3Xd coordinates_B;
	Eigen::Matrix3Xd coordinates_C;
	Eigen::Affine3d transformation;

	bool is_ca;
	bool is_finish;

	fp_A = open_file("../data/A.pdb");
	fp_B = open_file("../data/B.pdb");
	fp_C = fopen("../data/C.pdb", "w");

	coordinates_A = read_coordinates(fp_A, &is_ca);
	coordinates_B = read_coordinates(fp_B, &is_ca);

	if(is_ca == true)
		transformation = Find3DAffineTransform(coordinates_B, coordinates_A);

	coordinates_C = transformation * coordinates_A;

	writte_vector(fp_C, coordinates_A, coordinates_C);

	close_file(fp_A);
	close_file(fp_B);
	close_file(fp_C);
}




