(define 
    (domain hanoi_tower_domain)
    (:requirements :disjunctive-preconditions)
    (:predicates 
        (On ?obj ?place)
        (Disc ?obj)
        (Peg ?obj)
        (Clear ?obj)
        (Smaller ?obj ?place)
    )

    ;define actions here
    (:action MOVE
        :parameters (?b ?from ?to)
        :precondition (and (On ?b ?from) (Clear ?b) (Disc ?b) (Clear ?to) (or (Peg ?to) (Smaller ?b ?to)))
        :effect (and (On ?b ?to) (Clear ?from) (not(On ?b ?from)) (not(Clear ?to)))
    )

)