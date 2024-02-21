(define (domain block_world_domain)

(:predicates 
    (On ?obj ?place)
    (Block ?obj)
    (Table ?obj)
    (MOVABLE ?obj)
)

;define actions here
(:action MOVE
    :parameters (?b ?from ?to)
    :precondition (and (On ?b ?from) (MOVABLE ?b) (Block ?b))
    :effect (and (On ?b ?to) (not(On ?b ?from)) (not(MOVABLE ?to)))
)

)