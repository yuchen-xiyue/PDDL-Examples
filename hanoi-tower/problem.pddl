(define (problem hanoi_tower_problem) (:domain hanoi_tower_domain)
(:objects D1 D2 D3 P1 P2 P3)

(:init
    ;; define types
    (Disc D1) (Disc D2) (Disc D3)
    (Peg P1)  (Peg P2)  (Peg P3) 
    ;; define locations
    (On D3 D2) (On D2 D1) (On D1 P1)
    (Clear D3) (Clear P2) (Clear P3)
    (Smaller D3 D2) (Smaller D2 D1) (Smaller D3 D1)
)

(:goal ;; goal specification 
    (and (On D3 D2) (On D2 D1) (On D1 P3)
))

)