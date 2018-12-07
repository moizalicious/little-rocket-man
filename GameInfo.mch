/* GameInfo
 * Author: Moiz Mansoor Ali
 * Creation date: 12/7/18
 */

MACHINE GameInfo INCLUDES Space

SETS
    GAME_STATUS = {playing, won, lost}
    
VARIABLES
    game_status,
    //asteroid_collisions,
    moves_completed,
    mission_route
    //TODO can add the power variable here
    
INVARIANT
    game_status : GAME_STATUS &
    //asteroid_collisions : 0..100 &
    moves_completed : 1..200 &
    mission_route : 1..200 +-> space
    
INITIALISATION
    game_status := playing ||
    //asteroid_collisions := 0 ||
    moves_completed := 1 ||
    mission_route := {1} * {(1,1)}

OPERATIONS
    SetGameStatus(gameStatus) = 
        PRE
            gameStatus : GAME_STATUS
        THEN
            game_status := gameStatus
        END;
        
    gameStatus <-- GameStatus =
        BEGIN
            gameStatus := game_status
        END;
        
    /*IncrementAsteroidCollisions =
        BEGIN
            asteroid_collisions := asteroid_collisions + 1
        END;*/
        
    UpdateMissionRoute(xx, yy) = 
        PRE
            xx : dom(space) &
            yy : ran(space)
        THEN
            mission_route(moves_completed + 1) := (xx, yy) ||
            moves_completed := moves_completed + 1
        END;        
    
    missionRoute <-- MissionRoute =
        BEGIN
            missionRoute := mission_route
        END
    
END
