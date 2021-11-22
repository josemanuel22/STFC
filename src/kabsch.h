#ifndef KABSCH_H
#define KABSCH_H

//disable Wimplicit-int-float-conversion
#if defined(__clang__)
    #pragma clang diagnostic push
    #pragma clang diagnostic ignored "-Wunknown-warning-option"
#endif

#include <Eigen/Geometry>

Eigen::Affine3d Find3DAffineTransform(Eigen::Matrix3Xd in, Eigen::Matrix3Xd out);

#endif
