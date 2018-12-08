/* GameInfo
 * Author: Moiz Mansoor Ali
 * Creation date: 12/7/18
 */

MACHINE GameInfo

SETS
    GAME_STATUS = {playing, won, lost}
    
VARIABLES
    game_status
    
INVARIANT
    game_status : GAME_STATUS
    
INITIALISATION
    game_status := playing

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
        END

END
