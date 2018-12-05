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
    space,
    asteroids
    
// declaration of the properties the machine’s sets & constants must satisfy
PROPERTIES
    space : 1..12 <-> 1..7 &
    space : {{
                (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),
                (2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),
                (3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),
                (4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),
                (5,1),(5,2),(5,3),(5,4),(5,5),(5,6),(5,7),
                (6,1),(6,2),(6,3),(6,4),(6,5),(6,6),(6,7),
                (7,1),(7,2),(7,3),(7,4),(7,5),(7,6),(7,7),
                (8,1),(8,2),(8,3),(8,4),(8,5),(8,6),(8,7),
                (9,1),(9,2),(9,3),(9,4),(9,5),(9,6),(9,7),
                (10,1),(10,2),(10,3),(10,4),(10,5),(10,6),(10,7),
                (11,1),(11,2),(11,3),(11,4),(11,5),(11,6),(11,7),
                (12,1),(12,2),(12,3),(12,4),(12,5),(12,6),(12,7)
            }} 
    &
    asteroids <: space &
    asteroids : {{
                    (7,1),(3,2),(11,2),(8,3),(5,4),(3,5),
                    (7,5),(12,5),(10,6),(6,7),(7,7)    
                }}
    
// declaration of variables
VARIABLES
    //position,
    positionX,
    positionY,
    power,
    game_status,
    starbase
        
// declaration of invariant properties of the variables
INVARIANT
    //position : SPACE &
    positionX : dom(space) & 
    positionY : ran(space) &
    power : 0..200 &
    game_status : GAME_STATUS &
    starbase : space
    
// initialisation of all variables
INITIALISATION
    //position := (1 |-> 1)
    positionX := min(dom(space)) ||
    positionY := min(ran(space)) ||
    power := 200 ||
    game_status := playing ||
    starbase := (6, 4)
    
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
            ELSIF (positionY = max(ran(space))) THEN
                outcome := movement_failed
            ELSE
                // TODO Check if won, lost or still playing in this block.
                // TODO check if hit asteroid or not
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
            ELSIF (positionY = min(ran(space))) THEN
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
            ELSIF (positionX = max(dom(space))) THEN
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
            ELSIF (positionX = min(dom(space))) THEN
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
            xx : dom(space) &
            yy : ran(space) &
            (xx, yy) /= starbase
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
