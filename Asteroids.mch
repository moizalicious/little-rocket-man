/* Asteroids
 * Author: Moiz Mansoor Ali
 * Creation date: 12/7/18
 */
 
 // Helps track the number of collisions
 
 // TODO rename to CollisionTracker
MACHINE Asteroids

VARIABLES
    asteroid_collisions
    
INVARIANT
    asteroid_collisions : 0..100

INITIALISATION
    asteroid_collisions := 0

OPERATIONS
    IncrementAsteroidCollisions =
        BEGIN
            asteroid_collisions := asteroid_collisions + 1
        END        

END
