/* Game
 * Author: Moiz Mansoor Ali
 * Creation date: 12/13/18
 */

MACHINE Game

SETS
    GAME_STATUS = { playing , won , lost } ;
    MOVEMENT_MESSAGE = { movement_successful , movement_failed } ;
    ERROR_MESSAGE = { no_error , insufficient_power , out_of_bounds ,
                    asteroid_hit , asteroid_occupied }

CONCRETE_CONSTANTS
   space ,
   asteroids ,
   starbase

PROPERTIES
    space : 1 .. 12 <-> 1 .. 7 &
    space = {
                ( 1 |-> 1 ) , ( 1 |-> 2 ) , ( 1 |-> 3 ) , ( 1 |-> 4 ) , ( 1 |-> 5 ) , ( 1 |-> 6 ) , ( 1 |-> 7 ) ,
                ( 2 |-> 1 ) , ( 2 |-> 2 ) , ( 2 |-> 3 ) , ( 2 |-> 4 ) , ( 2 |-> 5 ) , ( 2 |-> 6 ) , ( 2 |-> 7 ) ,
                ( 3 |-> 1 ) , ( 3 |-> 2 ) , ( 3 |-> 3 ) , ( 3 |-> 4 ) , ( 3 |-> 5 ) , ( 3 |-> 6 ) , ( 3 |-> 7 ) ,
                ( 4 |-> 1 ) , ( 4 |-> 2 ) , ( 4 |-> 3 ) , ( 4 |-> 4 ) , ( 4 |-> 5 ) , ( 4 |-> 6 ) , ( 4 |-> 7 ) ,
                ( 5 |-> 1 ) , ( 5 |-> 2 ) , ( 5 |-> 3 ) , ( 5 |-> 4 ) , ( 5 |-> 5 ) , ( 5 |-> 6 ) , ( 5 |-> 7 ) ,
                ( 6 |-> 1 ) , ( 6 |-> 2 ) , ( 6 |-> 3 ) , ( 6 |-> 4 ) , ( 6 |-> 5 ) , ( 6 |-> 6 ) , ( 6 |-> 7 ) ,
                ( 7 |-> 1 ) , ( 7 |-> 2 ) , ( 7 |-> 3 ) , ( 7 |-> 4 ) , ( 7 |-> 5 ) , ( 7 |-> 6 ) , ( 7 |-> 7 ) ,
                ( 8 |-> 1 ) , ( 8 |-> 2 ) , ( 8 |-> 3 ) , ( 8 |-> 4 ) , ( 8 |-> 5 ) , ( 8 |-> 6 ) , ( 8 |-> 7 ) ,
                ( 9 |-> 1 ) , ( 9 |-> 2 ) , ( 9 |-> 3 ) , ( 9 |-> 4 ) , ( 9 |-> 5 ) , ( 9 |-> 6 ) , ( 9 |-> 7 ) ,
                ( 10 |-> 1 ) , ( 10 |-> 2 ) , ( 10 |-> 3 ) , ( 10 |-> 4 ) , ( 10 |-> 5 ) , ( 10 |-> 6 ) , ( 10 |-> 7 ) ,
                ( 11 |-> 1 ) , ( 11 |-> 2 ) , ( 11 |-> 3 ) , ( 11 |-> 4 ) , ( 11 |-> 5 ) , ( 11 |-> 6 ) , ( 11 |-> 7 ) ,
                ( 12 |-> 1 ) , ( 12 |-> 2 ) , ( 12 |-> 3 ) , ( 12 |-> 4 ) , ( 12 |-> 5 ) , ( 12 |-> 6 ) , ( 12 |-> 7 )
            }
    &
    asteroids <: space &
    asteroids = {
                    ( 7 |-> 1 ) , ( 3 |-> 2 ) , ( 11 |-> 2 ) , ( 8 |-> 3 ) , ( 5 |-> 4 ) , ( 3 |-> 5 ) ,
                    ( 7 |-> 5 ) , ( 12 |-> 5 ) , ( 10 |-> 6 ) , ( 6 |-> 7 ) , ( 7 |-> 7 )
                }
    &
    starbase : space &
    starbase = ( 6 |-> 4 )

ABSTRACT_VARIABLES
    game_status

INVARIANT
    game_status : GAME_STATUS

INITIALISATION
    game_status := playing

OPERATIONS
    gameStatus <-- GameStatus =
        BEGIN
            gameStatus := game_status
        END ;

    SetGameStatus ( gameStatus ) =
        PRE
            gameStatus : GAME_STATUS
        THEN
            game_status := gameStatus
        END

END
