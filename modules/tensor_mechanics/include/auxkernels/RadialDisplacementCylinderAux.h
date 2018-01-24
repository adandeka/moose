//* This file is part of the MOOSE framework
//* https://www.mooseframework.org
//*
//* All rights reserved, see COPYRIGHT for full restrictions
//* https://github.com/idaholab/moose/blob/master/COPYRIGHT
//*
//* Licensed under LGPL 2.1, please see LICENSE for details
//* https://www.gnu.org/licenses/lgpl-2.1.html

#ifndef RADIALDISPLACEMENTCYLINDERAUX_H
#define RADIALDISPLACEMENTCYLINDERAUX_H

#include "AuxKernel.h"

class RadialDisplacementCylinderAux;

template <>
InputParameters validParams<RadialDisplacementCylinderAux>();

/**
 * Calculates the radial displacement for cylindrical geometries.
 * Works for 2D and 3D Cartesian systems and axisymmetric systems
 */

class RadialDisplacementCylinderAux : public AuxKernel
{
public:
  RadialDisplacementCylinderAux(const InputParameters & parameters);

  virtual ~RadialDisplacementCylinderAux() {}

protected:
  /// Compute the value of the radial displacement
  virtual Real computeValue();

  /// Type of coordinate system
  Moose::CoordinateSystemType _coord_system;

  /// Number of displacment components.
  unsigned int _ndisp;
  /// Coupled variable values of the displacement components.
  std::vector<const VariableValue *> _disp_vals;

  /// Axis direction
  RealVectorValue _axis_vector;

  /// Point used to define the origin of the cylinder axis for Cartesian systems
  RealVectorValue _origin;
};

#endif // RADIALDISPLACEMENTCYLINDERAUX_H
