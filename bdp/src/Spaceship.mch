/* Spaceship
 * Author: Moiz Mansoor Ali
 * Creation date: 12/4/18
 */

MACHINE Spaceship INCLUDES Game PROMOTES GameStatus

ABSTRACT_VARIABLES
    positionX ,
    positionY ,
    power ,
    asteroid_collisions ,
    moves_completed ,
    mission_route

INVARIANT
    positionX : dom ( space ) &
    positionY : ran ( space ) &
    power : 0 .. 200 &
    asteroid_collisions : 0 .. 100 &
    moves_completed : 1 .. 200 &
    mission_route : 1 .. 200 +-> space

INITIALISATION
    positionX := min ( dom ( space ) ) ||
    positionY := min ( ran ( space ) ) ||
    power := 200 ||
    asteroid_collisions := 0 ||
    moves_completed := 1 ||
    mission_route := { 1 } * { ( 1 , 1 ) }

OPERATIONS
    outcome , error <-- MoveUp =
        PRE
            game_status = playing
        THEN
            IF ( positionY = max ( ran ( space ) ) ) THEN
                outcome := movement_failed ||
                error := out_of_bounds
            ELSIF ( ( positionX , positionY + 1 ) : asteroids ) THEN
                IF ( power > 10 ) THEN
                    power := power - 10 ||
                    outcome := movement_failed ||
                    error := asteroid_hit ||
                    asteroid_collisions := asteroid_collisions + 1
                ELSE
                    power := 0 ||
                    outcome := movement_failed ||
                    error := asteroid_hit ||
                    asteroid_collisions := asteroid_collisions + 1 ||
                    SetGameStatus ( lost )
                END
            ELSIF ( power >= 5 ) THEN
                IF ( ( positionX , positionY + 1 ) = starbase ) THEN
                    positionY := positionY + 1 ||
                    power := power - 5 ||
                    outcome := movement_successful ||
                    error := no_error ||
                    SetGameStatus ( won ) ||
                    mission_route ( moves_completed + 1 ) := ( positionX , positionY + 1 ) ||
                    moves_completed := moves_completed + 1
                ELSIF ( power = 5 ) THEN
                    positionY := positionY + 1 ||
                    power := power - 5 ||
                    outcome := movement_successful ||
                    error := no_error ||
                    SetGameStatus ( lost ) ||
                    mission_route ( moves_completed + 1 ) := ( positionX , positionY + 1 ) ||
                    moves_completed := moves_completed + 1
                ELSE
                    positionY := positionY + 1 ||
                    power := power - 5 ||
                    outcome := movement_successful ||
                    error := no_error ||
                    mission_route ( moves_completed + 1 ) := ( positionX , positionY + 1 ) ||
                    moves_completed := moves_completed + 1
                END
            ELSE
                power := 0 ||
                outcome := movement_failed ||
                error := insufficient_power ||
                SetGameStatus ( lost )
            END
        END ;

    outcome , error <-- MoveDown =
        PRE
            game_status = playing
        THEN
            IF ( positionY = min ( ran ( space ) ) ) THEN
                outcome := movement_failed ||
                error := out_of_bounds
            ELSIF ( ( positionX , positionY - 1 ) : asteroids ) THEN
                IF ( power > 10 ) THEN
                    power := power - 10 ||
                    outcome := movement_failed ||
                    error := asteroid_hit ||
                    asteroid_collisions := asteroid_collisions + 1
                ELSE
                    power := 0 ||
                    outcome := movement_failed ||
                    error := asteroid_hit ||
                    asteroid_collisions := asteroid_collisions + 1 ||
                    SetGameStatus ( lost )
                END
            ELSIF ( power >= 5 ) THEN
                IF ( ( positionX , positionY - 1 ) = starbase ) THEN
                    positionY := positionY - 1 ||
                    power := power - 5 ||
                    outcome := movement_successful ||
                    error := no_error ||
                    SetGameStatus ( won ) ||
                    mission_route ( moves_completed + 1 ) := ( positionX , positionY - 1 ) ||
                    moves_completed := moves_completed + 1
                ELSIF ( power = 5 ) THEN
                    positionY := positionY - 1 ||
                    power := power - 5 ||
                    outcome := movement_successful ||
                    error := no_error ||
                    SetGameStatus ( lost ) ||
                    mission_route ( moves_completed + 1 ) := ( positionX , positionY - 1 ) ||
                    moves_completed := moves_completed + 1
                ELSE
                    positionY := positionY - 1 ||
                    power := power - 5 ||
                    outcome := movement_successful ||
                    error := no_error ||
                    mission_route ( moves_completed + 1 ) := ( positionX , positionY - 1 ) ||
                    moves_completed := moves_completed + 1
                END
            ELSE
                power := 0 ||
                outcome := movement_failed ||
                error := insufficient_power ||
                SetGameStatus ( lost )
            END
        END ;

    outcome , error <-- MoveForward =
        PRE
            game_status = playing
        THEN
            IF ( positionX = max ( dom ( space ) ) ) THEN
                outcome := movement_failed ||
                error := out_of_bounds
            ELSIF ( ( positionX + 1 , positionY ) : asteroids ) THEN
                IF ( power > 10 ) THEN
                    power := power - 10 ||
                    outcome := movement_failed ||
                    error := asteroid_hit ||
                    asteroid_collisions := asteroid_collisions + 1
                ELSE
                    power := 0 ||
                    outcome := movement_failed ||
                    error := asteroid_hit ||
                    asteroid_collisions := asteroid_collisions + 1 ||
                    SetGameStatus ( lost )
                END
            ELSIF ( power >= 5 ) THEN
                IF ( ( positionX + 1 , positionY ) = starbase ) THEN
                    positionX := positionX + 1 ||
                    power := power - 5 ||
                    outcome := movement_successful ||
                    error := no_error ||
                    SetGameStatus ( won ) ||
                    mission_route ( moves_completed + 1 ) := ( positionX + 1 , positionY ) ||
                    moves_completed := moves_completed + 1
                ELSIF ( power = 5 ) THEN
                    positionX := positionX + 1 ||
                    power := power - 5 ||
                    outcome := movement_successful ||
                    error := no_error ||
                    SetGameStatus ( lost ) ||
                    mission_route ( moves_completed + 1 ) := ( positionX + 1 , positionY ) ||
                    moves_completed := moves_completed + 1
                ELSE
                    positionX := positionX + 1 ||
                    power := power - 5 ||
                    outcome := movement_successful ||
                    error := no_error ||
                    mission_route ( moves_completed + 1 ) := ( positionX + 1 , positionY ) ||
                    moves_completed := moves_completed + 1
                END
            ELSE
                power := 0 ||
                outcome := movement_failed ||
                error := insufficient_power ||
                SetGameStatus ( lost )
            END
        END ;

    outcome , error <-- MoveBackward =
        PRE
            game_status = playing
        THEN
            IF ( positionX = min ( dom ( space ) ) ) THEN
                outcome := movement_failed ||
                error := out_of_bounds
            ELSIF ( ( positionX - 1 , positionY ) : asteroids ) THEN
                IF ( power > 10 ) THEN
                    power := power - 10 ||
                    outcome := movement_failed ||
                    error := asteroid_hit ||
                    asteroid_collisions := asteroid_collisions + 1
                ELSE
                    power := 0 ||
                    outcome := movement_failed ||
                    error := asteroid_hit ||
                    asteroid_collisions := asteroid_collisions + 1 ||
                    SetGameStatus ( lost )
                END
            ELSIF ( power >= 5 ) THEN
                IF ( ( positionX - 1 , positionY ) = starbase ) THEN
                    positionX := positionX - 1 ||
                    power := power - 5 ||
                    outcome := movement_successful ||
                    error := no_error ||
                    SetGameStatus ( won ) ||
                    mission_route ( moves_completed + 1 ) := ( positionX - 1 , positionY ) ||
                    moves_completed := moves_completed + 1
                ELSIF ( power = 5 ) THEN
                    positionX := positionX - 1 ||
                    power := power - 5 ||
                    outcome := movement_successful ||
                    error := no_error ||
                    SetGameStatus ( lost ) ||
                    mission_route ( moves_completed + 1 ) := ( positionX - 1 , positionY ) ||
                    moves_completed := moves_completed + 1
                ELSE
                    positionX := positionX - 1 ||
                    power := power - 5 ||
                    outcome := movement_successful ||
                    error := no_error ||
                    mission_route ( moves_completed + 1 ) := ( positionX - 1 , positionY ) ||
                    moves_completed := moves_completed + 1
                END
            ELSE
                power := 0 ||
                outcome := movement_failed ||
                error := insufficient_power ||
                SetGameStatus ( lost )
            END
        END ;

    outcome , error <-- EngageWarpDrive ( xx , yy ) =
        PRE
            game_status = playing &
            xx : dom ( space ) &
            yy : ran ( space ) &
            ( xx , yy ) /= ( positionX , positionY ) &
            ( xx , yy ) /= starbase
        THEN
            IF ( power > 20 ) THEN
                IF ( ( xx , yy ) : asteroids ) THEN
                    outcome := movement_failed ||
                    error := asteroid_occupied
                ELSE
                    power := power - 20 ||
                    positionX := xx ||
                    positionY := yy ||
                    outcome := movement_successful ||
                    error := no_error ||
                    mission_route ( moves_completed + 1 ) := ( xx , yy ) ||
                    moves_completed := moves_completed + 1
                END
            ELSE
                outcome := movement_failed ||
                error := insufficient_power
            END
        END ;

    currentLocation , currentPower , asteroidCollisions <-- MissionStatus =
        BEGIN
            currentLocation := ( positionX , positionY ) ||
            currentPower := power ||
            asteroidCollisions := asteroid_collisions
        END ;

    missionRoute <-- MissionRoute =
        BEGIN
            missionRoute := mission_route
        END ;

    answer <-- DockedAtStarbase =
        BEGIN
            IF ( ( positionX , positionY ) = starbase ) THEN
                answer := TRUE
            ELSE
                answer := FALSE
            END
        END

END
