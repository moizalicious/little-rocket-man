Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Game))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Game))==(Machine(Game));
  Level(Machine(Game))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Game)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Game))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Game))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Game))==(?);
  List_Includes(Machine(Game))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Game))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Game))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Game))==(?);
  Context_List_Variables(Machine(Game))==(?);
  Abstract_List_Variables(Machine(Game))==(?);
  Local_List_Variables(Machine(Game))==(game_status);
  List_Variables(Machine(Game))==(game_status);
  External_List_Variables(Machine(Game))==(game_status)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Game))==(?);
  Abstract_List_VisibleVariables(Machine(Game))==(?);
  External_List_VisibleVariables(Machine(Game))==(?);
  Expanded_List_VisibleVariables(Machine(Game))==(?);
  List_VisibleVariables(Machine(Game))==(?);
  Internal_List_VisibleVariables(Machine(Game))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Game))==(btrue);
  Gluing_List_Invariant(Machine(Game))==(btrue);
  Expanded_List_Invariant(Machine(Game))==(btrue);
  Abstract_List_Invariant(Machine(Game))==(btrue);
  Context_List_Invariant(Machine(Game))==(btrue);
  List_Invariant(Machine(Game))==(game_status: GAME_STATUS)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Game))==(btrue);
  Abstract_List_Assertions(Machine(Game))==(btrue);
  Context_List_Assertions(Machine(Game))==(btrue);
  List_Assertions(Machine(Game))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Game))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Game))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Game))==(game_status:=playing);
  Context_List_Initialisation(Machine(Game))==(skip);
  List_Initialisation(Machine(Game))==(game_status:=playing)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Game))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Game))==(btrue);
  List_Constraints(Machine(Game))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Game))==(GameStatus,SetGameStatus);
  List_Operations(Machine(Game))==(GameStatus,SetGameStatus)
END
&
THEORY ListInputX IS
  List_Input(Machine(Game),GameStatus)==(?);
  List_Input(Machine(Game),SetGameStatus)==(gameStatus)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Game),GameStatus)==(gameStatus);
  List_Output(Machine(Game),SetGameStatus)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Game),GameStatus)==(gameStatus <-- GameStatus);
  List_Header(Machine(Game),SetGameStatus)==(SetGameStatus(gameStatus))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Game),GameStatus)==(btrue);
  List_Precondition(Machine(Game),SetGameStatus)==(gameStatus: GAME_STATUS)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Game),SetGameStatus)==(gameStatus: GAME_STATUS | game_status:=gameStatus);
  Expanded_List_Substitution(Machine(Game),GameStatus)==(btrue | gameStatus:=game_status);
  List_Substitution(Machine(Game),GameStatus)==(gameStatus:=game_status);
  List_Substitution(Machine(Game),SetGameStatus)==(game_status:=gameStatus)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Game))==(space,asteroids,starbase);
  Inherited_List_Constants(Machine(Game))==(?);
  List_Constants(Machine(Game))==(space,asteroids,starbase)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Game),GAME_STATUS)==({playing,won,lost});
  Context_List_Enumerated(Machine(Game))==(?);
  Context_List_Defered(Machine(Game))==(?);
  Context_List_Sets(Machine(Game))==(?);
  List_Valuable_Sets(Machine(Game))==(?);
  Inherited_List_Enumerated(Machine(Game))==(?);
  Inherited_List_Defered(Machine(Game))==(?);
  Inherited_List_Sets(Machine(Game))==(?);
  List_Enumerated(Machine(Game))==(GAME_STATUS,MOVEMENT_MESSAGE,ERROR_MESSAGE);
  List_Defered(Machine(Game))==(?);
  List_Sets(Machine(Game))==(GAME_STATUS,MOVEMENT_MESSAGE,ERROR_MESSAGE);
  Set_Definition(Machine(Game),MOVEMENT_MESSAGE)==({movement_successful,movement_failed});
  Set_Definition(Machine(Game),ERROR_MESSAGE)==({no_error,insufficient_power,out_of_bounds,asteroid_hit,asteroid_occupied})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Game))==(?);
  Expanded_List_HiddenConstants(Machine(Game))==(?);
  List_HiddenConstants(Machine(Game))==(?);
  External_List_HiddenConstants(Machine(Game))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Game))==(btrue);
  Context_List_Properties(Machine(Game))==(btrue);
  Inherited_List_Properties(Machine(Game))==(btrue);
  List_Properties(Machine(Game))==(space: 1..12 <-> 1..7 & asteroids <: space & starbase: space & starbase = 6,4 & GAME_STATUS: FIN(INTEGER) & not(GAME_STATUS = {}) & MOVEMENT_MESSAGE: FIN(INTEGER) & not(MOVEMENT_MESSAGE = {}) & ERROR_MESSAGE: FIN(INTEGER) & not(ERROR_MESSAGE = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Game),GameStatus)==(?);
  List_ANY_Var(Machine(Game),SetGameStatus)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Game)) == (space,asteroids,starbase,GAME_STATUS,MOVEMENT_MESSAGE,ERROR_MESSAGE,playing,won,lost,movement_successful,movement_failed,no_error,insufficient_power,out_of_bounds,asteroid_hit,asteroid_occupied | ? | game_status | ? | GameStatus,SetGameStatus | ? | ? | ? | Game);
  List_Of_HiddenCst_Ids(Machine(Game)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Game)) == (space,asteroids,starbase);
  List_Of_VisibleVar_Ids(Machine(Game)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Game)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Game)) == (Type(GAME_STATUS) == Cst(SetOf(etype(GAME_STATUS,0,2)));Type(MOVEMENT_MESSAGE) == Cst(SetOf(etype(MOVEMENT_MESSAGE,0,1)));Type(ERROR_MESSAGE) == Cst(SetOf(etype(ERROR_MESSAGE,0,4))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Game)) == (Type(playing) == Cst(etype(GAME_STATUS,0,2));Type(won) == Cst(etype(GAME_STATUS,0,2));Type(lost) == Cst(etype(GAME_STATUS,0,2));Type(movement_successful) == Cst(etype(MOVEMENT_MESSAGE,0,1));Type(movement_failed) == Cst(etype(MOVEMENT_MESSAGE,0,1));Type(no_error) == Cst(etype(ERROR_MESSAGE,0,4));Type(insufficient_power) == Cst(etype(ERROR_MESSAGE,0,4));Type(out_of_bounds) == Cst(etype(ERROR_MESSAGE,0,4));Type(asteroid_hit) == Cst(etype(ERROR_MESSAGE,0,4));Type(asteroid_occupied) == Cst(etype(ERROR_MESSAGE,0,4));Type(space) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(asteroids) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(starbase) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Game)) == (Type(game_status) == Mvl(etype(GAME_STATUS,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Game)) == (Type(SetGameStatus) == Cst(No_type,etype(GAME_STATUS,?,?));Type(GameStatus) == Cst(etype(GAME_STATUS,?,?),No_type));
  Observers(Machine(Game)) == (Type(GameStatus) == Cst(etype(GAME_STATUS,?,?),No_type))
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
