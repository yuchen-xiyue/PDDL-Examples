(define (problem block_world_problem) (:domain block_world_domain)
(:objects A B X Y R)

(:init
    ;; define types
    (Block A) (Block B)
    (Table X) (Table Y)
    ;; define locations
    (On A X) (On B X)
    (MOVABLE A) (MOVABLE B)
)

(:goal ;; goal specification 
    (and (On A Y) (On B A)
))

)