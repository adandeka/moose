//* This file is part of the MOOSE framework
//* https://www.mooseframework.org
//*
//* All rights reserved, see COPYRIGHT for full restrictions
//* https://github.com/idaholab/moose/blob/master/COPYRIGHT
//*
//* Licensed under LGPL 2.1, please see LICENSE for details
//* https://www.gnu.org/licenses/lgpl-2.1.html

#ifndef SPLITCHCRES_H
#define SPLITCHCRES_H

#include "SplitCHBase.h"

// Forward Declarations
class SplitCHCRes;

template <>
InputParameters validParams<SplitCHCRes>();

/// The couple, SplitCHCRes and SplitCHWRes, splits the CH equation by replacing chemical potential with 'w'.
class SplitCHCRes : public SplitCHBase
{
public:
  SplitCHCRes(const InputParameters & parameters);

protected:
  virtual Real computeQpResidual();
  virtual Real computeQpJacobian();
  virtual Real computeQpOffDiagJacobian(unsigned int jvar);

  const MaterialProperty<Real> & _kappa;
  unsigned int _w_var;
  const VariableValue & _w;
};

#endif // SPLITCHCRES_H
