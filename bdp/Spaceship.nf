Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Spaceship))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Spaceship))==(Machine(Spaceship));
  Level(Machine(Spaceship))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Spaceship)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Spaceship))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Spaceship))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Spaceship))==(Game);
  List_Includes(Machine(Spaceship))==(Game)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Spaceship))==(GameStatus)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Spaceship))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Spaceship))==(?);
  Context_List_Variables(Machine(Spaceship))==(?);
  Abstract_List_Variables(Machine(Spaceship))==(?);
  Local_List_Variables(Machine(Spaceship))==(mission_route,moves_completed,asteroid_collisions,power,positionY,positionX);
  List_Variables(Machine(Spaceship))==(mission_route,moves_completed,asteroid_collisions,power,positionY,positionX,game_status);
  External_List_Variables(Machine(Spaceship))==(mission_route,moves_completed,asteroid_collisions,power,positionY,positionX,game_status)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Spaceship))==(?);
  Abstract_List_VisibleVariables(Machine(Spaceship))==(?);
  External_List_VisibleVariables(Machine(Spaceship))==(?);
  Expanded_List_VisibleVariables(Machine(Spaceship))==(?);
  List_VisibleVariables(Machine(Spaceship))==(?);
  Internal_List_VisibleVariables(Machine(Spaceship))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Spaceship))==(btrue);
  Gluing_List_Invariant(Machine(Spaceship))==(btrue);
  Abstract_List_Invariant(Machine(Spaceship))==(btrue);
  Expanded_List_Invariant(Machine(Spaceship))==(game_status: GAME_STATUS);
  Context_List_Invariant(Machine(Spaceship))==(btrue);
  List_Invariant(Machine(Spaceship))==(positionX: dom(space) & positionY: ran(space) & power: 0..200 & asteroid_collisions: 0..100 & moves_completed: 1..200 & mission_route: 1..200 +-> space)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(Spaceship))==(btrue);
  Expanded_List_Assertions(Machine(Spaceship))==(btrue);
  Context_List_Assertions(Machine(Spaceship))==(btrue);
  List_Assertions(Machine(Spaceship))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Spaceship))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Spaceship))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Spaceship))==(game_status:=playing;positionX,positionY,power,asteroid_collisions,moves_completed,mission_route:=min(dom(space)),min(ran(space)),200,0,1,{1}*{1|->1});
  Context_List_Initialisation(Machine(Spaceship))==(skip);
  List_Initialisation(Machine(Spaceship))==(positionX:=min(dom(space)) || positionY:=min(ran(space)) || power:=200 || asteroid_collisions:=0 || moves_completed:=1 || mission_route:={1}*{1|->1})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Spaceship))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Spaceship),Machine(Game))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(Spaceship),Machine(Game))==(btrue);
  List_Context_Constraints(Machine(Spaceship))==(btrue);
  List_Constraints(Machine(Spaceship))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Spaceship))==(MoveUp,MoveDown,MoveForward,MoveBackward,EngageWarpDrive,MissionStatus,MissionRoute,DockedAtStarbase,GameStatus);
  List_Operations(Machine(Spaceship))==(MoveUp,MoveDown,MoveForward,MoveBackward,EngageWarpDrive,MissionStatus,MissionRoute,DockedAtStarbase,GameStatus)
END
&
THEORY ListInputX IS
  List_Input(Machine(Spaceship),GameStatus)==(?);
  List_Input(Machine(Spaceship),MoveUp)==(?);
  List_Input(Machine(Spaceship),MoveDown)==(?);
  List_Input(Machine(Spaceship),MoveForward)==(?);
  List_Input(Machine(Spaceship),MoveBackward)==(?);
  List_Input(Machine(Spaceship),EngageWarpDrive)==(xx,yy);
  List_Input(Machine(Spaceship),MissionStatus)==(?);
  List_Input(Machine(Spaceship),MissionRoute)==(?);
  List_Input(Machine(Spaceship),DockedAtStarbase)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Spaceship),GameStatus)==(gameStatus);
  List_Output(Machine(Spaceship),MoveUp)==(outcome,error);
  List_Output(Machine(Spaceship),MoveDown)==(outcome,error);
  List_Output(Machine(Spaceship),MoveForward)==(outcome,error);
  List_Output(Machine(Spaceship),MoveBackward)==(outcome,error);
  List_Output(Machine(Spaceship),EngageWarpDrive)==(outcome,error);
  List_Output(Machine(Spaceship),MissionStatus)==(currentLocation,currentPower,asteroidCollisions);
  List_Output(Machine(Spaceship),MissionRoute)==(missionRoute);
  List_Output(Machine(Spaceship),DockedAtStarbase)==(answer)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Spaceship),GameStatus)==(gameStatus <-- GameStatus);
  List_Header(Machine(Spaceship),MoveUp)==(outcome,error <-- MoveUp);
  List_Header(Machine(Spaceship),MoveDown)==(outcome,error <-- MoveDown);
  List_Header(Machine(Spaceship),MoveForward)==(outcome,error <-- MoveForward);
  List_Header(Machine(Spaceship),MoveBackward)==(outcome,error <-- MoveBackward);
  List_Header(Machine(Spaceship),EngageWarpDrive)==(outcome,error <-- EngageWarpDrive(xx,yy));
  List_Header(Machine(Spaceship),MissionStatus)==(currentLocation,currentPower,asteroidCollisions <-- MissionStatus);
  List_Header(Machine(Spaceship),MissionRoute)==(missionRoute <-- MissionRoute);
  List_Header(Machine(Spaceship),DockedAtStarbase)==(answer <-- DockedAtStarbase)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Machine(Spaceship),GameStatus)==(btrue);
  List_Precondition(Machine(Spaceship),GameStatus)==(btrue);
  List_Precondition(Machine(Spaceship),MoveUp)==(game_status = playing);
  List_Precondition(Machine(Spaceship),MoveDown)==(game_status = playing);
  List_Precondition(Machine(Spaceship),MoveForward)==(game_status = playing);
  List_Precondition(Machine(Spaceship),MoveBackward)==(game_status = playing);
  List_Precondition(Machine(Spaceship),EngageWarpDrive)==(game_status = playing & xx: dom(space) & yy: ran(space) & xx|->yy/=(positionX|->positionY) & xx|->yy/=starbase);
  List_Precondition(Machine(Spaceship),MissionStatus)==(btrue);
  List_Precondition(Machine(Spaceship),MissionRoute)==(btrue);
  List_Precondition(Machine(Spaceship),DockedAtStarbase)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Spaceship),DockedAtStarbase)==(btrue | positionX|->positionY = starbase ==> answer:=TRUE [] not(positionX|->positionY = starbase) ==> answer:=FALSE);
  Expanded_List_Substitution(Machine(Spaceship),MissionRoute)==(btrue | missionRoute:=mission_route);
  Expanded_List_Substitution(Machine(Spaceship),MissionStatus)==(btrue | currentLocation,currentPower,asteroidCollisions:=positionX|->positionY,power,asteroid_collisions);
  Expanded_List_Substitution(Machine(Spaceship),EngageWarpDrive)==(game_status = playing & xx: dom(space) & yy: ran(space) & xx|->yy/=(positionX|->positionY) & xx|->yy/=starbase | power>20 ==> (xx|->yy: asteroids ==> outcome,error:=movement_failed,asteroid_occupied [] not(xx|->yy: asteroids) ==> power,positionX,positionY,outcome,error,mission_route,moves_completed:=power-20,xx,yy,movement_successful,no_error,mission_route<+{moves_completed+1|->(xx|->yy)},moves_completed+1) [] not(power>20) ==> outcome,error:=movement_failed,insufficient_power);
  Expanded_List_Substitution(Machine(Spaceship),MoveBackward)==(game_status = playing | positionX = min(dom(space)) ==> outcome,error:=movement_failed,out_of_bounds [] not(positionX = min(dom(space))) ==> (positionX-1|->positionY: asteroids ==> (power>10 ==> power,outcome,error,asteroid_collisions:=power-10,movement_failed,asteroid_hit,asteroid_collisions+1 [] not(power>10) ==> (lost: GAME_STATUS | power,outcome,error,asteroid_collisions:=0,movement_failed,asteroid_hit,asteroid_collisions+1 || game_status:=lost)) [] not(positionX-1|->positionY: asteroids) ==> (power>=5 ==> (positionX-1|->positionY = starbase ==> (won: GAME_STATUS | positionX,power,outcome,error:=positionX-1,power-5,movement_successful,no_error || game_status:=won || mission_route:=mission_route<+{moves_completed+1|->(positionX-1|->positionY)} || moves_completed:=moves_completed+1) [] not(positionX-1|->positionY = starbase) ==> (power = 5 ==> (lost: GAME_STATUS | positionX,power,outcome,error:=positionX-1,power-5,movement_successful,no_error || game_status:=lost || mission_route:=mission_route<+{moves_completed+1|->(positionX-1|->positionY)} || moves_completed:=moves_completed+1) [] not(power = 5) ==> positionX,power,outcome,error,mission_route,moves_completed:=positionX-1,power-5,movement_successful,no_error,mission_route<+{moves_completed+1|->(positionX-1|->positionY)},moves_completed+1)) [] not(power>=5) ==> (lost: GAME_STATUS | power,outcome,error:=0,movement_failed,insufficient_power || game_status:=lost))));
  Expanded_List_Substitution(Machine(Spaceship),MoveForward)==(game_status = playing | positionX = max(dom(space)) ==> outcome,error:=movement_failed,out_of_bounds [] not(positionX = max(dom(space))) ==> (positionX+1|->positionY: asteroids ==> (power>10 ==> power,outcome,error,asteroid_collisions:=power-10,movement_failed,asteroid_hit,asteroid_collisions+1 [] not(power>10) ==> (lost: GAME_STATUS | power,outcome,error,asteroid_collisions:=0,movement_failed,asteroid_hit,asteroid_collisions+1 || game_status:=lost)) [] not(positionX+1|->positionY: asteroids) ==> (power>=5 ==> (positionX+1|->positionY = starbase ==> (won: GAME_STATUS | positionX,power,outcome,error:=positionX+1,power-5,movement_successful,no_error || game_status:=won || mission_route:=mission_route<+{moves_completed+1|->(positionX+1|->positionY)} || moves_completed:=moves_completed+1) [] not(positionX+1|->positionY = starbase) ==> (power = 5 ==> (lost: GAME_STATUS | positionX,power,outcome,error:=positionX+1,power-5,movement_successful,no_error || game_status:=lost || mission_route:=mission_route<+{moves_completed+1|->(positionX+1|->positionY)} || moves_completed:=moves_completed+1) [] not(power = 5) ==> positionX,power,outcome,error,mission_route,moves_completed:=positionX+1,power-5,movement_successful,no_error,mission_route<+{moves_completed+1|->(positionX+1|->positionY)},moves_completed+1)) [] not(power>=5) ==> (lost: GAME_STATUS | power,outcome,error:=0,movement_failed,insufficient_power || game_status:=lost))));
  Expanded_List_Substitution(Machine(Spaceship),MoveDown)==(game_status = playing | positionY = min(ran(space)) ==> outcome,error:=movement_failed,out_of_bounds [] not(positionY = min(ran(space))) ==> (positionX|->positionY-1: asteroids ==> (power>10 ==> power,outcome,error,asteroid_collisions:=power-10,movement_failed,asteroid_hit,asteroid_collisions+1 [] not(power>10) ==> (lost: GAME_STATUS | power,outcome,error,asteroid_collisions:=0,movement_failed,asteroid_hit,asteroid_collisions+1 || game_status:=lost)) [] not(positionX|->positionY-1: asteroids) ==> (power>=5 ==> (positionX|->positionY-1 = starbase ==> (won: GAME_STATUS | positionY,power,outcome,error:=positionY-1,power-5,movement_successful,no_error || game_status:=won || mission_route:=mission_route<+{moves_completed+1|->(positionX|->positionY-1)} || moves_completed:=moves_completed+1) [] not(positionX|->positionY-1 = starbase) ==> (power = 5 ==> (lost: GAME_STATUS | positionY,power,outcome,error:=positionY-1,power-5,movement_successful,no_error || game_status:=lost || mission_route:=mission_route<+{moves_completed+1|->(positionX|->positionY-1)} || moves_completed:=moves_completed+1) [] not(power = 5) ==> positionY,power,outcome,error,mission_route,moves_completed:=positionY-1,power-5,movement_successful,no_error,mission_route<+{moves_completed+1|->(positionX|->positionY-1)},moves_completed+1)) [] not(power>=5) ==> (lost: GAME_STATUS | power,outcome,error:=0,movement_failed,insufficient_power || game_status:=lost))));
  Expanded_List_Substitution(Machine(Spaceship),MoveUp)==(game_status = playing | positionY = max(ran(space)) ==> outcome,error:=movement_failed,out_of_bounds [] not(positionY = max(ran(space))) ==> (positionX|->positionY+1: asteroids ==> (power>10 ==> power,outcome,error,asteroid_collisions:=power-10,movement_failed,asteroid_hit,asteroid_collisions+1 [] not(power>10) ==> (lost: GAME_STATUS | power,outcome,error,asteroid_collisions:=0,movement_failed,asteroid_hit,asteroid_collisions+1 || game_status:=lost)) [] not(positionX|->positionY+1: asteroids) ==> (power>=5 ==> (positionX|->positionY+1 = starbase ==> (won: GAME_STATUS | positionY,power,outcome,error:=positionY+1,power-5,movement_successful,no_error || game_status:=won || mission_route:=mission_route<+{moves_completed+1|->(positionX|->positionY+1)} || moves_completed:=moves_completed+1) [] not(positionX|->positionY+1 = starbase) ==> (power = 5 ==> (lost: GAME_STATUS | positionY,power,outcome,error:=positionY+1,power-5,movement_successful,no_error || game_status:=lost || mission_route:=mission_route<+{moves_completed+1|->(positionX|->positionY+1)} || moves_completed:=moves_completed+1) [] not(power = 5) ==> positionY,power,outcome,error,mission_route,moves_completed:=positionY+1,power-5,movement_successful,no_error,mission_route<+{moves_completed+1|->(positionX|->positionY+1)},moves_completed+1)) [] not(power>=5) ==> (lost: GAME_STATUS | power,outcome,error:=0,movement_failed,insufficient_power || game_status:=lost))));
  List_Substitution(Machine(Spaceship),GameStatus)==(gameStatus:=game_status);
  Expanded_List_Substitution(Machine(Spaceship),GameStatus)==(btrue | gameStatus:=game_status);
  List_Substitution(Machine(Spaceship),MoveUp)==(IF positionY = max(ran(space)) THEN outcome:=movement_failed || error:=out_of_bounds ELSIF positionX|->positionY+1: asteroids THEN IF power>10 THEN power:=power-10 || outcome:=movement_failed || error:=asteroid_hit || asteroid_collisions:=asteroid_collisions+1 ELSE power:=0 || outcome:=movement_failed || error:=asteroid_hit || asteroid_collisions:=asteroid_collisions+1 || SetGameStatus(lost) END ELSIF power>=5 THEN IF positionX|->positionY+1 = starbase THEN positionY:=positionY+1 || power:=power-5 || outcome:=movement_successful || error:=no_error || SetGameStatus(won) || mission_route(moves_completed+1):=positionX|->positionY+1 || moves_completed:=moves_completed+1 ELSIF power = 5 THEN positionY:=positionY+1 || power:=power-5 || outcome:=movement_successful || error:=no_error || SetGameStatus(lost) || mission_route(moves_completed+1):=positionX|->positionY+1 || moves_completed:=moves_completed+1 ELSE positionY:=positionY+1 || power:=power-5 || outcome:=movement_successful || error:=no_error || mission_route(moves_completed+1):=positionX|->positionY+1 || moves_completed:=moves_completed+1 END ELSE power:=0 || outcome:=movement_failed || error:=insufficient_power || SetGameStatus(lost) END);
  List_Substitution(Machine(Spaceship),MoveDown)==(IF positionY = min(ran(space)) THEN outcome:=movement_failed || error:=out_of_bounds ELSIF positionX|->positionY-1: asteroids THEN IF power>10 THEN power:=power-10 || outcome:=movement_failed || error:=asteroid_hit || asteroid_collisions:=asteroid_collisions+1 ELSE power:=0 || outcome:=movement_failed || error:=asteroid_hit || asteroid_collisions:=asteroid_collisions+1 || SetGameStatus(lost) END ELSIF power>=5 THEN IF positionX|->positionY-1 = starbase THEN positionY:=positionY-1 || power:=power-5 || outcome:=movement_successful || error:=no_error || SetGameStatus(won) || mission_route(moves_completed+1):=positionX|->positionY-1 || moves_completed:=moves_completed+1 ELSIF power = 5 THEN positionY:=positionY-1 || power:=power-5 || outcome:=movement_successful || error:=no_error || SetGameStatus(lost) || mission_route(moves_completed+1):=positionX|->positionY-1 || moves_completed:=moves_completed+1 ELSE positionY:=positionY-1 || power:=power-5 || outcome:=movement_successful || error:=no_error || mission_route(moves_completed+1):=positionX|->positionY-1 || moves_completed:=moves_completed+1 END ELSE power:=0 || outcome:=movement_failed || error:=insufficient_power || SetGameStatus(lost) END);
  List_Substitution(Machine(Spaceship),MoveForward)==(IF positionX = max(dom(space)) THEN outcome:=movement_failed || error:=out_of_bounds ELSIF positionX+1|->positionY: asteroids THEN IF power>10 THEN power:=power-10 || outcome:=movement_failed || error:=asteroid_hit || asteroid_collisions:=asteroid_collisions+1 ELSE power:=0 || outcome:=movement_failed || error:=asteroid_hit || asteroid_collisions:=asteroid_collisions+1 || SetGameStatus(lost) END ELSIF power>=5 THEN IF positionX+1|->positionY = starbase THEN positionX:=positionX+1 || power:=power-5 || outcome:=movement_successful || error:=no_error || SetGameStatus(won) || mission_route(moves_completed+1):=positionX+1|->positionY || moves_completed:=moves_completed+1 ELSIF power = 5 THEN positionX:=positionX+1 || power:=power-5 || outcome:=movement_successful || error:=no_error || SetGameStatus(lost) || mission_route(moves_completed+1):=positionX+1|->positionY || moves_completed:=moves_completed+1 ELSE positionX:=positionX+1 || power:=power-5 || outcome:=movement_successful || error:=no_error || mission_route(moves_completed+1):=positionX+1|->positionY || moves_completed:=moves_completed+1 END ELSE power:=0 || outcome:=movement_failed || error:=insufficient_power || SetGameStatus(lost) END);
  List_Substitution(Machine(Spaceship),MoveBackward)==(IF positionX = min(dom(space)) THEN outcome:=movement_failed || error:=out_of_bounds ELSIF positionX-1|->positionY: asteroids THEN IF power>10 THEN power:=power-10 || outcome:=movement_failed || error:=asteroid_hit || asteroid_collisions:=asteroid_collisions+1 ELSE power:=0 || outcome:=movement_failed || error:=asteroid_hit || asteroid_collisions:=asteroid_collisions+1 || SetGameStatus(lost) END ELSIF power>=5 THEN IF positionX-1|->positionY = starbase THEN positionX:=positionX-1 || power:=power-5 || outcome:=movement_successful || error:=no_error || SetGameStatus(won) || mission_route(moves_completed+1):=positionX-1|->positionY || moves_completed:=moves_completed+1 ELSIF power = 5 THEN positionX:=positionX-1 || power:=power-5 || outcome:=movement_successful || error:=no_error || SetGameStatus(lost) || mission_route(moves_completed+1):=positionX-1|->positionY || moves_completed:=moves_completed+1 ELSE positionX:=positionX-1 || power:=power-5 || outcome:=movement_successful || error:=no_error || mission_route(moves_completed+1):=positionX-1|->positionY || moves_completed:=moves_completed+1 END ELSE power:=0 || outcome:=movement_failed || error:=insufficient_power || SetGameStatus(lost) END);
  List_Substitution(Machine(Spaceship),EngageWarpDrive)==(IF power>20 THEN IF xx|->yy: asteroids THEN outcome:=movement_failed || error:=asteroid_occupied ELSE power:=power-20 || positionX:=xx || positionY:=yy || outcome:=movement_successful || error:=no_error || mission_route(moves_completed+1):=xx|->yy || moves_completed:=moves_completed+1 END ELSE outcome:=movement_failed || error:=insufficient_power END);
  List_Substitution(Machine(Spaceship),MissionStatus)==(currentLocation:=positionX|->positionY || currentPower:=power || asteroidCollisions:=asteroid_collisions);
  List_Substitution(Machine(Spaceship),MissionRoute)==(missionRoute:=mission_route);
  List_Substitution(Machine(Spaceship),DockedAtStarbase)==(IF positionX|->positionY = starbase THEN answer:=TRUE ELSE answer:=FALSE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Spaceship))==(space,asteroids,starbase);
  Inherited_List_Constants(Machine(Spaceship))==(space,asteroids,starbase);
  List_Constants(Machine(Spaceship))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Spaceship),ERROR_MESSAGE)==({no_error,insufficient_power,out_of_bounds,asteroid_hit,asteroid_occupied});
  Context_List_Enumerated(Machine(Spaceship))==(?);
  Context_List_Defered(Machine(Spaceship))==(?);
  Context_List_Sets(Machine(Spaceship))==(?);
  List_Valuable_Sets(Machine(Spaceship))==(?);
  Inherited_List_Enumerated(Machine(Spaceship))==(GAME_STATUS,MOVEMENT_MESSAGE,ERROR_MESSAGE);
  Inherited_List_Defered(Machine(Spaceship))==(?);
  Inherited_List_Sets(Machine(Spaceship))==(GAME_STATUS,MOVEMENT_MESSAGE,ERROR_MESSAGE);
  List_Enumerated(Machine(Spaceship))==(?);
  List_Defered(Machine(Spaceship))==(?);
  List_Sets(Machine(Spaceship))==(?);
  Set_Definition(Machine(Spaceship),MOVEMENT_MESSAGE)==({movement_successful,movement_failed});
  Set_Definition(Machine(Spaceship),GAME_STATUS)==({playing,won,lost})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Spaceship))==(?);
  Expanded_List_HiddenConstants(Machine(Spaceship))==(?);
  List_HiddenConstants(Machine(Spaceship))==(?);
  External_List_HiddenConstants(Machine(Spaceship))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Spaceship))==(btrue);
  Context_List_Properties(Machine(Spaceship))==(btrue);
  Inherited_List_Properties(Machine(Spaceship))==(space: 1..12 <-> 1..7 & space = {1|->1,1|->2,1|->3,1|->4,1|->5,1|->6,1|->7,2|->1,2|->2,2|->3,2|->4,2|->5,2|->6,2|->7,3|->1,3|->2,3|->3,3|->4,3|->5,3|->6,3|->7,4|->1,4|->2,4|->3,4|->4,4|->5,4|->6,4|->7,5|->1,5|->2,5|->3,5|->4,5|->5,5|->6,5|->7,6|->1,6|->2,6|->3,6|->4,6|->5,6|->6,6|->7,7|->1,7|->2,7|->3,7|->4,7|->5,7|->6,7|->7,8|->1,8|->2,8|->3,8|->4,8|->5,8|->6,8|->7,9|->1,9|->2,9|->3,9|->4,9|->5,9|->6,9|->7,10|->1,10|->2,10|->3,10|->4,10|->5,10|->6,10|->7,11|->1,11|->2,11|->3,11|->4,11|->5,11|->6,11|->7,12|->1,12|->2,12|->3,12|->4,12|->5,12|->6,12|->7} & asteroids <: space & asteroids = {7|->1,3|->2,11|->2,8|->3,5|->4,3|->5,7|->5,12|->5,10|->6,6|->7,7|->7} & starbase: space & starbase = 6|->4 & GAME_STATUS: FIN(INTEGER) & not(GAME_STATUS = {}) & MOVEMENT_MESSAGE: FIN(INTEGER) & not(MOVEMENT_MESSAGE = {}) & ERROR_MESSAGE: FIN(INTEGER) & not(ERROR_MESSAGE = {}));
  List_Properties(Machine(Spaceship))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Spaceship),GameStatus)==(?);
  List_ANY_Var(Machine(Spaceship),MoveUp)==(?);
  List_ANY_Var(Machine(Spaceship),MoveDown)==(?);
  List_ANY_Var(Machine(Spaceship),MoveForward)==(?);
  List_ANY_Var(Machine(Spaceship),MoveBackward)==(?);
  List_ANY_Var(Machine(Spaceship),EngageWarpDrive)==(?);
  List_ANY_Var(Machine(Spaceship),MissionStatus)==(?);
  List_ANY_Var(Machine(Spaceship),MissionRoute)==(?);
  List_ANY_Var(Machine(Spaceship),DockedAtStarbase)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Spaceship)) == (? | space,asteroids,starbase,GAME_STATUS,MOVEMENT_MESSAGE,ERROR_MESSAGE,playing,won,lost,movement_successful,movement_failed,no_error,insufficient_power,out_of_bounds,asteroid_hit,asteroid_occupied | mission_route,moves_completed,asteroid_collisions,power,positionY,positionX | V,game_status | MoveUp,MoveDown,MoveForward,MoveBackward,EngageWarpDrive,MissionStatus,MissionRoute,DockedAtStarbase | GameStatus | included(Machine(Game)) | ? | Spaceship);
  List_Of_HiddenCst_Ids(Machine(Spaceship)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Spaceship)) == (space,asteroids,starbase);
  List_Of_VisibleVar_Ids(Machine(Spaceship)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Spaceship)) == (?: ?);
  List_Of_Ids(Machine(Game)) == (space,asteroids,starbase,GAME_STATUS,MOVEMENT_MESSAGE,ERROR_MESSAGE,playing,won,lost,movement_successful,movement_failed,no_error,insufficient_power,out_of_bounds,asteroid_hit,asteroid_occupied | ? | game_status | ? | GameStatus,SetGameStatus | ? | ? | ? | Game);
  List_Of_HiddenCst_Ids(Machine(Game)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Game)) == (space,asteroids,starbase);
  List_Of_VisibleVar_Ids(Machine(Game)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Game)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Spaceship)) == (Type(ERROR_MESSAGE) == Cst(SetOf(etype(ERROR_MESSAGE,0,4)));Type(MOVEMENT_MESSAGE) == Cst(SetOf(etype(MOVEMENT_MESSAGE,0,1)));Type(GAME_STATUS) == Cst(SetOf(etype(GAME_STATUS,0,2))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Spaceship)) == (Type(starbase) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(asteroids) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(space) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(asteroid_occupied) == Cst(etype(ERROR_MESSAGE,0,4));Type(asteroid_hit) == Cst(etype(ERROR_MESSAGE,0,4));Type(out_of_bounds) == Cst(etype(ERROR_MESSAGE,0,4));Type(insufficient_power) == Cst(etype(ERROR_MESSAGE,0,4));Type(no_error) == Cst(etype(ERROR_MESSAGE,0,4));Type(movement_failed) == Cst(etype(MOVEMENT_MESSAGE,0,1));Type(movement_successful) == Cst(etype(MOVEMENT_MESSAGE,0,1));Type(lost) == Cst(etype(GAME_STATUS,0,2));Type(won) == Cst(etype(GAME_STATUS,0,2));Type(playing) == Cst(etype(GAME_STATUS,0,2)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Spaceship)) == (Type(game_status) == Mvl(etype(GAME_STATUS,?,?));Type(mission_route) == Mvl(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))));Type(moves_completed) == Mvl(btype(INTEGER,?,?));Type(asteroid_collisions) == Mvl(btype(INTEGER,?,?));Type(power) == Mvl(btype(INTEGER,?,?));Type(positionY) == Mvl(btype(INTEGER,?,?));Type(positionX) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Spaceship)) == (Type(GameStatus) == Cst(etype(GAME_STATUS,?,?),No_type);Type(DockedAtStarbase) == Cst(btype(BOOL,?,?),No_type);Type(MissionRoute) == Cst(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))),No_type);Type(MissionStatus) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(EngageWarpDrive) == Cst(etype(MOVEMENT_MESSAGE,?,?)*etype(ERROR_MESSAGE,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(MoveBackward) == Cst(etype(MOVEMENT_MESSAGE,?,?)*etype(ERROR_MESSAGE,?,?),No_type);Type(MoveForward) == Cst(etype(MOVEMENT_MESSAGE,?,?)*etype(ERROR_MESSAGE,?,?),No_type);Type(MoveDown) == Cst(etype(MOVEMENT_MESSAGE,?,?)*etype(ERROR_MESSAGE,?,?),No_type);Type(MoveUp) == Cst(etype(MOVEMENT_MESSAGE,?,?)*etype(ERROR_MESSAGE,?,?),No_type));
  Observers(Machine(Spaceship)) == (Type(GameStatus) == Cst(etype(GAME_STATUS,?,?),No_type);Type(DockedAtStarbase) == Cst(btype(BOOL,?,?),No_type);Type(MissionRoute) == Cst(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))),No_type);Type(MissionStatus) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type))
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
