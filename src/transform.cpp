#include "preprocessing.h"
#include "kabsch.h"

int main() {

	FILE* fp_A;
	FILE* fp_B;
	FILE* fp_C;
	Eigen::Matrix3Xd coordinates_A;
	Eigen::Matrix3Xd coordinates_B;
	Eigen::Matrix3Xd coordinates_C;
	Eigen::Affine3d transformation = Eigen::Affine3d::Identity(); //if the atom is not a CA we use the identity transform until a CA atom is found

	bool is_ca;
	bool is_finish_1 = false;
	bool is_finish_2 = false;

	fp_A = open_file_for_read("../data/A.pdb");
	fp_B = open_file_for_read("../data/B.pdb");
	fp_C = open_file_for_write("../data/C.pdb");
	
	while(!is_finish_1 && !is_finish_2) {
		coordinates_A = read_coordinates(fp_A, &is_ca, &is_finish_1);
		coordinates_B = read_coordinates(fp_B, &is_ca, &is_finish_2);
		if(is_finish_1 || is_finish_2) break;
		if(is_ca == true)
			transformation = Find3DAffineTransform(coordinates_B, coordinates_A);
		coordinates_C = transformation * coordinates_B;
		writte_vector(fp_C, coordinates_A, coordinates_C);
		std::cout << RMSD(coordinates_A, coordinates_C) << std::endl;
	}

	close_file(fp_A);
	close_file(fp_B);
	close_file(fp_C);
}




