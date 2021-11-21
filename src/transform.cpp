#include "preprocessing.h"
#include "kabsch.h"

int main() {

	FILE* fp_A;
	FILE* fp_B;
	Eigen::Matrix3Xd coordinates_A;
	Eigen::Matrix3Xd coordinates_B;
	Eigen::Matrix3Xd coordinates_C;
	Eigen::Affine3d transformation;

	bool is_ca;

	fp_A = open_file("../data/A.pdb");
	fp_B = open_file("../data/B.pdb");



	coordinates_A = read_coordinates(fp_A, &is_ca);
	coordinates_B = read_coordinates(fp_B, &is_ca);

	if(is_ca == true)
		transformation = Find3DAffineTransform(coordinates_B, coordinates_A);

	coordinates_C = transformation * coordinates_A;

	std::cout<< coordinates_A <<std::endl<<std::endl;
	std::cout<< coordinates_B <<std::endl<<std::endl;
	//std::cout<< coordinates_C <<std::endl<<std::endl;
	//std::cout<< transformation.matrix() <<std::endl;

	close_file(fp_A);
	close_file(fp_B);
}




