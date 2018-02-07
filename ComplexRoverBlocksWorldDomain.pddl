(define (domain rover-block-world-domain)

  (:requirements 
    :typing
  )

  (:types
    block rover location gripper
  )

  (:predicates 	
  	(can-move ?orig-loc ?dest-loc - location)
  	(loc ?r - rover ?l - location)
    (can-hold ?g - gripper)
    (holding ?g - gripper ?b - block)
    (clear ?b - block)
    (on ?x ?y - block)
    (block-loc ?b - block ?l - location)
    (on-table ?b - block)
    (point ?point - location)
  ) 

  (:action move
    :parameters (?rover - rover ?orig-loc ?dest-loc - location)
    :precondition (and (loc ?rover ?orig-loc) (can-move ?orig-loc ?dest-loc) (point ?orig-loc) (point ?dest-loc))
    :effect (and (loc ?rover ?dest-loc) (not (loc ?rover ?orig-loc))))


  (:action pickup
  	:parameters (?gripper - gripper ?block - block ?rover - rover ?loc - location)
  	:precondition (and (can-hold ?gripper) (loc ?rover ?loc) (block-loc ?block ?loc) (clear ?block) (on-table ?block) (point ?loc))
  	:effect (and (holding ?gripper ?block) (not (can-hold ?gripper)) (not (on-table ?block)) (not (clear ?block)) (loc ?rover ?loc) (not (block-loc ?block ?loc)))
  	)

  (:action putdown
    :parameters (?gripper - gripper ?block - block ?rover - rover ?loc - location)
    :precondition (and (holding ?gripper ?block) (not (on-table ?block)) (not (clear ?block)) (not (can-hold ?gripper)) (loc ?rover ?loc) (point ?loc))
    :effect (and (not (holding ?gripper ?block)) (can-hold ?gripper) (on-table ?block) (block-loc ?block ?loc) (clear ?block))
    )

  (:action stack
    :parameters (?gripper - gripper ?block ?lowerblock - block ?rover - rover ?loc - location)
    :precondition (and (holding ?gripper ?block) (block-loc ?lowerblock ?loc) (clear ?lowerblock) (loc ?rover ?loc) (not (clear ?block)) (not (can-hold ?gripper)) (point ?loc) )
    :effect (and  (on ?block ?lowerblock) (block-loc ?block ?loc) (clear ?block) (not (clear ?lowerblock)) (not (holding ?gripper ?block)) (can-hold ?gripper) ) 
    )

  (:action unstack
	:parameters (?gripper - gripper ?block ?lowerblock - block ?rover - rover ?loc - location)
	:precondition (and (can-hold ?gripper) (loc ?rover ?loc) (block-loc ?block ?loc) (block-loc ?lowerblock ?loc) (clear ?block) (on ?block ?lowerblock) (point ?loc) (not (clear ?lowerblock)))
	:effect (and (not (can-hold ?gripper)) (holding ?gripper ?block) (clear ?lowerblock) (not (on ?block ?lowerblock)) (not (clear ?block)) (not (block-loc ?block ?loc)) ) 
	)

)
