/* RouteTracker
 * Author: Moiz Mansoor Ali
 * Creation date: 12/8/18
 */

MACHINE RouteTracker INCLUDES SpaceInfo

VARIABLES
    moves_completed,
    mission_route

INVARIANT
    moves_completed : 1..200 &
    mission_route : 1..200 +-> space

INITIALISATION
    moves_completed := 1 ||
    mission_route := {1} * {(1,1)}

OPERATIONS
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
