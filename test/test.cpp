#include "../src/preprocessing.h"
#include "../src/kabsch.h"

#include <assert.h>

int main() {
    // To simplify this example test, let's suppose we'll test 'float'.
    // Some test are stupid, but all should pass.

    FILE* fp_A;
	FILE* fp_B;
	
	Eigen::Matrix3Xd coordinates_A;
	Eigen::Matrix3Xd coordinates_B;
	Eigen::Matrix3Xd coordinates_C;
	Eigen::Affine3d transformation;

	bool is_ca;
	bool is_finish_1 = false;
	bool is_finish_2 = false;

	fp_A = open_file_for_read("A.pdb");
	fp_B = open_file_for_read("B.pdb");

    //check if the affine transform work. If not an expection is threw.
    TestFind3DAffineTransform();

	coordinates_A = read_coordinates(fp_A, &is_ca, &is_finish_1);
	coordinates_B = read_coordinates(fp_B, &is_ca, &is_finish_2);
	transformation = Find3DAffineTransform(coordinates_B, coordinates_A);

	coordinates_C = transformation * coordinates_B;

    assert(coordinates_A(0,0) == 45.237);
    assert(coordinates_A(1,0) == 12.391);
    assert(coordinates_A(2,0) == 7.547);

    assert(coordinates_B(0,0) == 13.414);
    assert(coordinates_B(1,0) == 18.765);
    assert(coordinates_B(2,0) == 22.708);

    assert(coordinates_C(0,0) == 13.414);
    assert(coordinates_C(1,0) == 18.765);
    assert(coordinates_C(2,0) == 22.708);

    coordinates_A = read_coordinates(fp_A, &is_ca, &is_finish_1);
	coordinates_B = read_coordinates(fp_B, &is_ca, &is_finish_2);

	coordinates_C = transformation * coordinates_B;

    assert(coordinates_A(0,0) == 46.586);
    assert(coordinates_A(1,0) == 12.368);
    assert(coordinates_A(2,0) == 7.307);

    assert(coordinates_B(0,0) == 13.558);
    assert(coordinates_B(1,0) == 17.258);
    assert(coordinates_B(2,0) == 21.908);

    assert(coordinates_C(0,0) == 13.558);
    assert(coordinates_C(1,0) == 17.258);
    assert(coordinates_C(2,0) == 21.908);

    coordinates_A = read_coordinates(fp_A, &is_ca, &is_finish_1);
	coordinates_B = read_coordinates(fp_B, &is_ca, &is_finish_2);

	coordinates_C = transformation * coordinates_B;

    assert(coordinates_A(0,0) == 47.495);
    assert(coordinates_A(1,0) == 13.115);
    assert(coordinates_A(2,0) == 7.457);

    assert(coordinates_B(0,0) == 15.269);
    assert(coordinates_B(1,0) == 17.623);
    assert(coordinates_B(2,0) == 21.249);

    assert(coordinates_C(0,0) == 15.269);
    assert(coordinates_C(1,0) == 17.623);
    assert(coordinates_C(2,0) == 21.249);

	close_file(fp_A);
	close_file(fp_B);

	std::cout << "Test successful" << std::endl;
}
