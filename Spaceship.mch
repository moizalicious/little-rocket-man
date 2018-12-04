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
//CONSTANTS
  //  SPACE
    
// declaration of the properties the machine’s sets & constants must satisfy
//PROPERTIES
    //SPACE : NAT1 <-> NAT1
    
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
    positionX : NAT1 & 1 <= positionX & positionX <= 12
    & 
    positionY : NAT1 & 1 <= positionY & positionY <= 7
    &
    power : NAT1 & power >= 0
    &
    game_status : GAME_STATUS
    
// initialisation of all variables
INITIALISATION
    //position := (1 |-> 1)
    positionX := 1 ||
    positionY := 1 ||
    power := 10 ||
    game_status := playing
    
// declaration of the operations in the form of an interface (header) & body
OPERATIONS
    /*currentPosition <-- showCurrentPosition =
        BEGIN
            currentPosition := (positionX, positionY)
        END;*/
    
    outcome <-- moveUp = 
        PRE
            game_status = playing
        THEN
            IF (game_status = won or game_status = lost) THEN
                outcome := movement_failed
             ELSIF (power < 5) THEN
                game_status := lost ||             
                outcome := movement_failed
            ELSIF (positionY = 7) THEN
                outcome := movement_failed
            ELSE            
                positionY := positionY + 1 ||
                power := power - 5 ||
                outcome := movement_successful
            END            
        END;        
    
    outcome <-- moveDown = 
        PRE
            game_status = playing
        THEN
            IF (game_status = won or game_status = lost) THEN
                outcome := movement_failed
             ELSIF (power < 5) THEN
                game_status := lost ||             
                outcome := movement_failed
            ELSIF (positionY = 1) THEN
                outcome := movement_failed
            ELSE            
                positionY := positionY - 1 ||
                power := power - 5 ||
                outcome := movement_successful
            END            
        END;
    
    outcome <-- moveForward = 
        PRE
            game_status = playing
        THEN
            IF (game_status = won or game_status = lost) THEN
                outcome := movement_failed
             ELSIF (power < 5) THEN
                game_status := lost ||             
                outcome := movement_failed
            ELSIF (positionX = 12) THEN
                outcome := movement_failed
            ELSE            
                positionX := positionX + 1 ||
                power := power - 5 ||
                outcome := movement_successful
            END            
        END;
        
    outcome <-- moveBackward = 
        PRE
            game_status = playing
        THEN
            IF (game_status = won or game_status = lost) THEN
                outcome := movement_failed
             ELSIF (power < 5) THEN
                game_status := lost ||             
                outcome := movement_failed
            ELSIF (positionX = 1) THEN
                outcome := movement_failed
            ELSE            
                positionX := positionX - 1 ||
                power := power - 5 ||
                outcome := movement_successful
            END            
        END
    
END
