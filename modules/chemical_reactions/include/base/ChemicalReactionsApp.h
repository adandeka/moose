//* This file is part of the MOOSE framework
//* https://www.mooseframework.org
//*
//* All rights reserved, see COPYRIGHT for full restrictions
//* https://github.com/idaholab/moose/blob/master/COPYRIGHT
//*
//* Licensed under LGPL 2.1, please see LICENSE for details
//* https://www.gnu.org/licenses/lgpl-2.1.html

#ifndef CHEMICAL_REACTIONSAPP_H
#define CHEMICAL_REACTIONSAPP_H

#include "MooseApp.h"

class ChemicalReactionsApp;

template <>
InputParameters validParams<ChemicalReactionsApp>();

class ChemicalReactionsApp : public MooseApp
{
public:
  ChemicalReactionsApp(const InputParameters & parameters);
  virtual ~ChemicalReactionsApp();

  static void registerApps();
  static void registerObjects(Factory & factory);
  static void associateSyntax(Syntax & syntax, ActionFactory & action_factory);
};

#endif /* CHEMICAL_REACTIONSAPP_H */
