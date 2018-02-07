(define (problem rover-block-world-problem)
	
  (:domain rover-block-world-domain)

  (:objects
    gripper - gripper 
    point1 point2 point3 point4 point5 point6 point7 point8 point9 point10 point11 point12 point13 point14 point15 point16 point17 point18 point19 point20 point21 point22 point23 point24 point25 point26 point27 point28 point29 point30 point31 point32 point33 point34 point35 - location
    rover - rover
    A B C D E - block

  )

  (:init
    (block-loc A point34) (block-loc B point35) (block-loc C point20) (block-loc D point14) (block-loc E point14) 
    (on-table A) (on-table B) (on-table C) (on-table E) (on D E)
    (clear A) (clear B) (clear C) (clear D)
    (can-hold gripper)
    (loc rover point24)
    
    (can-move point1 point2) (can-move point2 point1) (can-move point2 point31) (can-move point2 point3) (can-move point3 point2) (can-move point3 point4)
    (can-move point4 point3) (can-move point4 point27) (can-move point4 point5) (can-move point5 point4) (can-move point5 point6) (can-move point6 point5)
    (can-move point6 point7) (can-move point7 point8) (can-move point7 point6) (can-move point8 point9) (can-move point8 point7) (can-move point8 point32)
    (can-move point9 point26) (can-move point9 point10) (can-move point9 point8) (can-move point10 point9) (can-move point10 point11) (can-move point11 point10)
    (can-move point11 point12) (can-move point12 point11) (can-move point12 point13) (can-move point13 point12) (can-move point13 point14) (can-move point13 point15)
    (can-move point14 point13) (can-move point15 point13) (can-move point15 point24) (can-move point15 point16) (can-move point16 point15) (can-move point16 point23)
    (can-move point16 point17) (can-move point17 point18) (can-move point17 point16) (can-move point18 point19) (can-move point18 point17) (can-move point19 point18)
    (can-move point19 point20) (can-move point20 point19) (can-move point20 point21) (can-move point21 point20) (can-move point21 point22) (can-move point22 point21)
    (can-move point22 point23) (can-move point23 point22) (can-move point23 point16) (can-move point24 point15) (can-move point24 point25) (can-move point25 point24)
    (can-move point25 point26) (can-move point25 point27) (can-move point25 point28) (can-move point26 point9) (can-move point26 point25) (can-move point27 point4)
    (can-move point27 point25) (can-move point28 point25) (can-move point28 point29) (can-move point29 point28) (can-move point29 point30) (can-move point29 point31)
    (can-move point30 point29) (can-move point31 point2) (can-move point31 point29) (can-move point32 point8) (can-move point32 point33) (can-move point33 point32)
    (can-move point33 point35) (can-move point33 point34) (can-move point34 point33) (can-move point35 point33)
  	
    (point point1) (point point2) (point point3) (point point4) (point point5) (point point6) (point point7) (point point8) (point point9) (point point10)
    (point point11) (point point12) (point point13) (point point14) (point point15) (point point16) (point point17) (point point18) (point point19)  (point point20)
    (point point21) (point point22) (point point23) (point point24) (point point25) (point point26) (point point27) (point point28) (point point29) (point point30)
    (point point31) (point point32) (point point33) (point point34) (point point35)
  ) 

  (:goal
  	(and (block-loc A point30) (block-loc B point30) (block-loc C point30) (block-loc D point30) (block-loc E point30) (loc rover point24) 
      (can-hold gripper) (on A D) (on D B) (on B C) (on C E) (on-table E))
  ))