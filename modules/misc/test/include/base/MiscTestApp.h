//* This file is part of the MOOSE framework
//* https://www.mooseframework.org
//*
//* All rights reserved, see COPYRIGHT for full restrictions
//* https://github.com/idaholab/moose/blob/master/COPYRIGHT
//*
//* Licensed under LGPL 2.1, please see LICENSE for details
//* https://www.gnu.org/licenses/lgpl-2.1.html
#ifndef MISCTESTAPP_H
#define MISCTESTAPP_H

#include "MooseApp.h"

class MiscTestApp;

template <>
InputParameters validParams<MiscTestApp>();

class MiscTestApp : public MooseApp
{
public:
  MiscTestApp(InputParameters parameters);
  virtual ~MiscTestApp();

  static void registerApps();
  static void registerObjects(Factory & factory);
  static void associateSyntax(Syntax & syntax, ActionFactory & action_factory);
};

#endif /* MISCTESTAPP_H */
