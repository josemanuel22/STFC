#ifndef KABSCH_H
#define KABSCH_H

//disable Wimplicit-int-float-conversion
#if defined(__clang__)
    #pragma clang diagnostic push
    #pragma clang diagnostic ignored "-Wunknown-warning-option"
#endif

#include <Eigen/Geometry>
#include <math.h>

/*root-mean-square deviation of atomic positions*/
#define DISTANCE(A,B) ((A(0,0)-B(0,0)) * (A(0,0)-B(0,0)) + (A(1,0)-B(1,0)) * (A(1,0)-B(1,0)) + (A(1,0)-B(1,0)) * (A(1,0)-B(1,0)))

Eigen::Affine3d Find3DAffineTransform(Eigen::Matrix3Xd in, Eigen::Matrix3Xd out);

#endif
