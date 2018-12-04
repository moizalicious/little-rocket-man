/* Spaceship
 * Author: Moiz Mansoor Ali
 * Creation date: 12/4/18
 */

MACHINE Spaceship

// declaration of the properties the machine’s parameters must satisfy
// CONSTRAINTS
        
// declaration of deferred & enumerated sets
SETS
    GAME_STATUS = {playing, won, lost};
    MOVEMENT_MESSAGE = {movement_successful, movement_failed}
        
// declaration of constants
CONSTANTS
    SPACE
    
// declaration of the properties the machine’s sets & constants must satisfy
PROPERTIES
    SPACE : 1..12 <-> 1..7
    
// declaration of variables
VARIABLES
    //position,
    positionX,
    positionY,
    power,
    game_status
        
// declaration of invariant properties of the variables
INVARIANT
    //position : SPACE &
    positionX : 1..12 & 
    positionY : 1..7 &
    power : 0..50 &
    game_status : GAME_STATUS
    
// initialisation of all variables
INITIALISATION
    //position := (1 |-> 1)
    positionX := 1 ||
    positionY := 1 ||
    power := 50 ||
    game_status := playing
    
// declaration of the operations in the form of an interface (header) & body
OPERATIONS
    /*currentPosition <-- showCurrentPosition =
        BEGIN
            currentPosition := (positionX, positionY)
        END;*/
    
    outcome <-- MoveUp = 
        PRE
            game_status = playing
        THEN
            IF (power < 5) THEN
                outcome := movement_failed ||
                game_status := lost
            ELSIF (positionY = 7) THEN
                outcome := movement_failed
            ELSE
                positionY := positionY + 1 ||
                power := power - 5 ||
                outcome := movement_successful             
            END
        END;        
    
    outcome <-- MoveDown = 
        PRE
            game_status = playing
        THEN
            IF (power < 5) THEN
                outcome := movement_failed ||
                game_status := lost
            ELSIF (positionY = 1) THEN
                outcome := movement_failed
            ELSE
                positionY := positionY - 1 ||
                power := power - 5 ||
                outcome := movement_successful
            END            
        END;
    
    outcome <-- MoveForward = 
        PRE
            game_status = playing
        THEN
            IF (power < 5) THEN
                outcome := movement_failed ||
                game_status := lost
            ELSIF (positionX = 12) THEN
                outcome := movement_failed
            ELSE
                positionX := positionX + 1 ||
                power := power - 5 ||
                outcome := movement_successful
            END            
        END;
        
    outcome <-- MoveBackward = 
        PRE
            game_status = playing
        THEN
            IF (power < 5) THEN
                outcome := movement_failed ||
                game_status := lost
            ELSIF (positionX = 1) THEN
                outcome := movement_failed
            ELSE
                positionX := positionX - 1 ||
                power := power - 5 ||
                outcome := movement_successful
            END            
        END;
    
    outcome <-- EngageWarpDrive(xx, yy) =
        PRE
            game_status = playing &
            xx : 1..12 &
            yy : 1..7
        THEN
            IF (power < 20) THEN
                outcome := movement_failed
            ELSE            
                positionX := xx ||
                positionY := yy ||
                power := power - 20 ||
                outcome := movement_successful
            END            
        END        
    
END
