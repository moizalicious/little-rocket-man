/* Spaceship
 * Author: Moiz Mansoor Ali
 * Creation date: 12/4/18
 */
MACHINE Spaceship

// declaration of the properties the machine’s parameters must satisfy
// CONSTRAINTS
        
// declaration of deferred & enumerated sets
//SETS
        
// declaration of constants
CONSTANTS
    SPACE
    
// declaration of the properties the machine’s sets & constants must satisfy
PROPERTIES
    SPACE : NAT1 <-> NAT1
    
// declaration of variables
VARIABLES
    position
        
// declaration of invariant properties of the variables
INVARIANT
    position : SPACE
    
// initialisation of all variables
INITIALISATION
    position := (1 |-> 1)
    
// declaration of the operations in the form of an interface (header) & body
OPERATIONS
    currentPosition <-- showCurrentPosition =
        BEGIN
            currentPosition := position
        END;
    
    updatePosition(x, y) =
        PRE
            x : NAT1 & y: NAT1
        THEN
            position := (x |-> y)
        END            
    
END
