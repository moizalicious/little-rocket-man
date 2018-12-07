Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(GameInfo))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(GameInfo))==(Machine(GameInfo));
  Level(Machine(GameInfo))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(GameInfo)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(GameInfo))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(GameInfo))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(GameInfo))==(?);
  List_Includes(Machine(GameInfo))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(GameInfo))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(GameInfo))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(GameInfo))==(?);
  Context_List_Variables(Machine(GameInfo))==(?);
  Abstract_List_Variables(Machine(GameInfo))==(?);
  Local_List_Variables(Machine(GameInfo))==(?);
  List_Variables(Machine(GameInfo))==(?);
  External_List_Variables(Machine(GameInfo))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(GameInfo))==(?);
  Abstract_List_VisibleVariables(Machine(GameInfo))==(?);
  External_List_VisibleVariables(Machine(GameInfo))==(?);
  Expanded_List_VisibleVariables(Machine(GameInfo))==(?);
  List_VisibleVariables(Machine(GameInfo))==(?);
  Internal_List_VisibleVariables(Machine(GameInfo))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(GameInfo))==(btrue);
  Gluing_List_Invariant(Machine(GameInfo))==(btrue);
  Expanded_List_Invariant(Machine(GameInfo))==(btrue);
  Abstract_List_Invariant(Machine(GameInfo))==(btrue);
  Context_List_Invariant(Machine(GameInfo))==(btrue);
  List_Invariant(Machine(GameInfo))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(GameInfo))==(btrue);
  Abstract_List_Assertions(Machine(GameInfo))==(btrue);
  Context_List_Assertions(Machine(GameInfo))==(btrue);
  List_Assertions(Machine(GameInfo))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(GameInfo))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(GameInfo))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(GameInfo))==(skip);
  Context_List_Initialisation(Machine(GameInfo))==(skip);
  List_Initialisation(Machine(GameInfo))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(GameInfo))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(GameInfo))==(btrue);
  List_Constraints(Machine(GameInfo))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(GameInfo))==(?);
  List_Operations(Machine(GameInfo))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(GameInfo))==(?);
  Inherited_List_Constants(Machine(GameInfo))==(?);
  List_Constants(Machine(GameInfo))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(GameInfo))==(?);
  Context_List_Defered(Machine(GameInfo))==(?);
  Context_List_Sets(Machine(GameInfo))==(?);
  List_Valuable_Sets(Machine(GameInfo))==(?);
  Inherited_List_Enumerated(Machine(GameInfo))==(?);
  Inherited_List_Defered(Machine(GameInfo))==(?);
  Inherited_List_Sets(Machine(GameInfo))==(?);
  List_Enumerated(Machine(GameInfo))==(?);
  List_Defered(Machine(GameInfo))==(?);
  List_Sets(Machine(GameInfo))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(GameInfo))==(?);
  Expanded_List_HiddenConstants(Machine(GameInfo))==(?);
  List_HiddenConstants(Machine(GameInfo))==(?);
  External_List_HiddenConstants(Machine(GameInfo))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(GameInfo))==(btrue);
  Context_List_Properties(Machine(GameInfo))==(btrue);
  Inherited_List_Properties(Machine(GameInfo))==(btrue);
  List_Properties(Machine(GameInfo))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(GameInfo)) == (? | ? | ? | ? | ? | ? | ? | ? | GameInfo);
  List_Of_HiddenCst_Ids(Machine(GameInfo)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(GameInfo)) == (?);
  List_Of_VisibleVar_Ids(Machine(GameInfo)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(GameInfo)) == (?: ?)
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
