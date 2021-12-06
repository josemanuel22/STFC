#include "preprocessing.h"
#include "kabsch.h"

int main() {

	FILE* fp_A;
	FILE* fp_B;	
	FILE* fp_A2;
	FILE* fp_B2;
	FILE* fp_C;

	Eigen::Matrix3Xd coordinates_A(3,3);
	Eigen::Matrix3Xd coordinates_B(3,3);
	Eigen::Matrix3Xd coordinates_C(3,3);
	Eigen::Affine3d transformation = Eigen::Affine3d::Identity(); //if the atom is not a CA we use the identity transform until a CA atom is found

	bool is_ca = false;
	bool is_finish_1 = false;
	bool is_finish_2 = false;
	bool change_atom_A = false;
	bool change_atom_B = false;

	double rmsd = 0.0;
	unsigned int num = 0;

	fp_A = open_file_for_read("../data/A.pdb");
	fp_B = open_file_for_read("../data/B.pdb");

	fp_A2 = open_file_for_read("../data/A.pdb");
	fp_B2 = open_file_for_read("../data/B.pdb");

	fp_C = open_file_for_write("../data/C.pdb");
	
	while(!is_finish_1 && !is_finish_2 ) {

		coordinates_A.col(0) = read_coordinates(fp_A, &is_ca, &is_finish_1, &change_atom_A).col(0);
		coordinates_B.col(0) = read_coordinates(fp_B, &is_ca, &is_finish_2, &change_atom_B).col(0);
		num++;

		if ( is_finish_1 || is_finish_2 ) break;

		if(change_atom_A == true) {

			coordinates_A.col(1) = read_coordinates(fp_A, &is_ca, &is_finish_1, &change_atom_A).col(0);
			coordinates_B.col(1) = read_coordinates(fp_B, &is_ca, &is_finish_2, &change_atom_B).col(0);
			num++;

			coordinates_A.col(2) = read_coordinates(fp_A, &is_ca, &is_finish_1, &change_atom_A).col(0);
			coordinates_B.col(2) = read_coordinates(fp_B, &is_ca, &is_finish_2, &change_atom_B).col(0);
			num++;

			transformation = Find3DAffineTransform(coordinates_B, coordinates_A);
			coordinates_C = transformation * coordinates_B;
			writte_vector(fp_A2, fp_B2, fp_C, coordinates_A.col(0), coordinates_C.col(0));
			writte_vector(fp_A2, fp_B2, fp_C, coordinates_A.col(1), coordinates_C.col(1));
			writte_vector(fp_A2, fp_B2, fp_C, coordinates_A.col(2), coordinates_C.col(2));
			continue;
		}

		rmsd += DISTANCE(coordinates_A, coordinates_C.col(0));
		//std::cout << DISTANCE(coordinates_A, coordinates_C.col(0)) << std::endl;

		coordinates_C = transformation * coordinates_B.col(0);
		writte_vector(fp_A2, fp_B2, fp_C, coordinates_A.col(0), coordinates_C.col(0));
		
	}

	std::cout << sqrt(rmsd)/sqrt(num) << std::endl;

	close_file(fp_A);
	close_file(fp_B);
	close_file(fp_C);
}




