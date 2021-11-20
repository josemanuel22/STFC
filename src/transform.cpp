#include "preprocessing.h"
#include "kabsch.h"

#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <Eigen/Geometry>


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

Eigen::Affine3d Find3DAffineTransform(Eigen::Matrix3Xd in, Eigen::Matrix3Xd out) {

  // Default output
  Eigen::Affine3d A;
  A.linear() = Eigen::Matrix3d::Identity(3, 3);
  A.translation() = Eigen::Vector3d::Zero();

  if (in.cols() != out.cols())
    throw "Find3DAffineTransform(): input data mis-match";

  // First find the scale, by finding the ratio of sums of some distances,
  // then bring the datasets to the same scale.
  double dist_in = 0, dist_out = 0;
  for (int col = 0; col < in.cols()-1; col++) {
    dist_in  += (in.col(col+1) - in.col(col)).norm();
    dist_out += (out.col(col+1) - out.col(col)).norm();
  }
  if (dist_in <= 0 || dist_out <= 0)
    return A;
  double scale = dist_out/dist_in;
  out /= scale;

  // Find the centroids then shift to the origin
  Eigen::Vector3d in_ctr = Eigen::Vector3d::Zero();
  Eigen::Vector3d out_ctr = Eigen::Vector3d::Zero();
  for (int col = 0; col < in.cols(); col++) {
    in_ctr  += in.col(col);
    out_ctr += out.col(col);
  }
  in_ctr /= in.cols();
  out_ctr /= out.cols();
  for (int col = 0; col < in.cols(); col++) {
    in.col(col)  -= in_ctr;
    out.col(col) -= out_ctr;
  }

  // SVD
  Eigen::MatrixXd Cov = in * out.transpose();
  Eigen::JacobiSVD<Eigen::MatrixXd> svd(Cov, Eigen::ComputeThinU | Eigen::ComputeThinV);

  // Find the rotation
  double d = (svd.matrixV() * svd.matrixU().transpose()).determinant();
  if (d > 0)
    d = 1.0;
  else
    d = -1.0;
  Eigen::Matrix3d I = Eigen::Matrix3d::Identity(3, 3);
  I(2, 2) = d;
  Eigen::Matrix3d R = svd.matrixV() * I * svd.matrixU().transpose();

  // The final transform
  A.linear() = scale * R;
  A.translation() = scale*(out_ctr - R*in_ctr);

  return A;
}

// A function to test Find3DAffineTransform()

void TestFind3DAffineTransform(){

  // Create datasets with known transform
  Eigen::Matrix3Xd in(3, 100), out(3, 100);
  Eigen::Quaternion<double> Q(1, 3, 5, 2);
  Q.normalize();
  Eigen::Matrix3d R = Q.toRotationMatrix();
  double scale = 2.0;
  for (int row = 0; row < in.rows(); row++) {
    for (int col = 0; col < in.cols(); col++) {
      in(row, col) = log(2*row + 10.0)/sqrt(1.0*col + 4.0) + sqrt(col*1.0)/(row + 1.0);
    }
  }
  Eigen::Vector3d S;
  S << -5, 6, -27;
  for (int col = 0; col < in.cols(); col++)
    out.col(col) = scale*R*in.col(col) + S;

  Eigen::Affine3d A = Find3DAffineTransform(in, out);

  // See if we got the transform we expected
  if ( (scale*R-A.linear()).cwiseAbs().maxCoeff() > 1e-13 ||
       (S-A.translation()).cwiseAbs().maxCoeff() > 1e-13)
    throw "Could not determine the affine transform accurately enough";
}


//https://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.352.43&rep=rep1&type=pdf
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
	std::cout<< coordinates_C <<std::endl<<std::endl;
	std::cout<< transformation.matrix() <<std::endl;

	close_file(fp_A);
	close_file(fp_B);
}




