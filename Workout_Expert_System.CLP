; Expert system for workout recommendations

(defrule Menu
   (not (experience-level ?))
   =>
   (printout t crlf crlf
      "What is your Experience level?" crlf
      "1.) Beginner" crlf
      "2.) Intermediate" crlf
      "3.) Professional" crlf
      "Enter your choice here (1|2|3): ")
   (assert (experience-level (read))))

;--r1--------------------Selecting Beginner--------------------------------

(defrule Beginner
   (experience-level 1)
   =>
   (printout t crlf crlf
      "What is your weight range?" crlf
      "1.) < 70 kg" crlf
      "2.) 70 kg <" crlf
      "Enter your choice here (1|2): ")
   (assert (weight-range (read))))

;--r2-------------------Choosing Weight---------------------------------

(defrule Beginner_Weight_Less
   (weight-range 1)
   =>
   (printout t crlf crlf
      "What is your height range?" crlf
      "1.) < 5'7" crlf
      "2.) > 5'7" crlf
      "Enter your choice here (1|2): ")
   (assert (height-range1 (read))))

;--r3----------------------------------------------------

(defrule Beginner_Weight_High
   (weight-range 2)
   =>
   (printout t crlf crlf
      "What is your height range?" crlf
      "1.) < 5'7\"" crlf
      "2.) > 5'7\"" crlf
      "Enter your choice here (1|2): ")
   (assert (height-range2 (read))))

;--r4--------------------Choosing Height--------------------------------

(defrule Beginner_Weight_Less_Height_Short
   (height-range1 1)
   =>
   (printout t crlf crlf
      "Is there any problem areas?" crlf
      "1.) Weak chest" crlf
      "2.) Beer belly" crlf
      "Enter your choice here (1|2): ")
   (assert (problem-area1 (read))))

;--r5----------------------------------------------------

(defrule Beginner_Weight_Less_Height_Tall
   (height-range1 2)
   =>
   (printout t crlf crlf
      "Is there any problem areas?" crlf
      "1.) Weak chest" crlf
      "2.) Beer belly" crlf
      "Enter your choice here (1|2): ")
   (assert (problem-area2 (read))))

;--r6----------------------------------------------------

(defrule Beginner_Weight_High_Height_Short
   (height-range2 1)
   =>
   (printout t crlf crlf
      "Is there any problem areas?" crlf
      "1.) Weak chest" crlf
      "2.) Beer belly" crlf
      "Enter your choice here (1|2): ")
   (assert (problem-area3 (read))))

;--r7----------------------------------------------------

(defrule Beginner_Weight_High_Height_Tall
   (height-range2 2)
   =>
   (printout t crlf crlf
      "Is there any problem areas?" crlf
      "1.) Weak chest" crlf
      "2.) Beer belly" crlf
      "Enter your choice here (1|2): ")
   (assert (problem-area4 (read))))

;--r8--------------Workouts begin--------------------------------------

(defrule Beginner_Weight_Less_Height_Short_Problem_Chest
   (problem-area1 1)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Barbell Squats(3 sets of 10-12 reps)" crlf
      "Bench Press(3 sets of 8-10 reps)" crlf
      "Bent-Over Row(3 sets of 8-10 reps)" crlf
      "Pull-Ups(3 sets to failure)" crlf
      "Overhead Press(3 sets of 6-8 reps)")
   (assert (answer (read))))

;--r9----------------------------------------------------

(defrule Beginner_Weight_Less_Height_Short_Problem_Belly
   (problem-area1 2)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Dumbbell Lunges(3 sets of 10-12 reps per leg)" crlf
      "Incline Dumbbell Press(3 sets of 8-10 reps)" crlf
      "3 sets of 8-10 reps(3 sets of 8-10 reps)" crlf
      "Lateral Raises(3 sets of 10-12 reps)" crlf
      "Dips(3 sets to failure)")
   (assert (answer (read))))

;--r10----------------------------------------------------

(defrule Beginner_Weight_Less_Height_Tall_Problem_Chest
   (problem-area2 1)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Goblet Squats(3 sets of 10-12 reps)" crlf
      "Dumbbell Row(3 sets of 8-10 reps)" crlf
      "Dumbbell Shoulder Press(3 sets of 6-8 reps)" crlf
      "Bicep Curls(3 sets of 10-12 reps)" crlf
      "Tricep Extensions(3 sets of 10-12 reps)")
   (assert (answer (read))))

;--r11----------------------------------------------------

(defrule Beginner_Weight_Less_Height_Tall_Problem_Belly
   (problem-area2 2)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Leg Press Machine(3 sets of 10-12 reps)" crlf
      "Dumbbell Bench Press(3 sets of 8-10 reps)" crlf
      "Pull-Down Machine(3 sets of 6-8 reps)" crlf
      "Face Pulls(3 sets of 10-12 reps)" crlf
      "Hanging Leg Raises(3 sets of 10-12 reps)")
   (assert (answer (read))))

;--r12----------------------------------------------------

(defrule Beginner_Weight_High_Height_Short_Problem_Chest
   (problem-area3 1)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Romanian Deadlifts(3 sets of 10-12 reps)" crlf
      "Dumbbell Floor Press(3 sets of 8-10 reps)" crlf
      "Chin-Ups(3 sets of 6-8 reps)" crlf
      "Hammer Curls(3 sets of 10-12 reps)" crlf
      "Tricep Pushdowns(3 sets of 10-12 reps)")
   (assert (answer (read))))

;--r13----------------------------------------------------

(defrule Beginner_Weight_High_Height_Short_Problem_Belly
   (problem-area3 2)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Leg Extensions(3 sets of 10-12 reps)" crlf
      "Hamstring Curls(3 sets of 8-10 reps)" crlf
      "Seated Chest Press Machine(3 sets of 6-8 reps)" crlf
      "Lat Pulldown Machine(3 sets of 10-12 reps)" crlf
      "Overhead Press Machine(3 sets of 10-12 reps)")
   (assert (answer (read))))

;--r14----------------------------------------------------

(defrule Beginner_Weight_High_Height_Tall_Problem_Chest
   (problem-area4 1)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Step-Ups(3 sets of 10-12 reps)" crlf
      "Incline Bench Press(3 sets of 8-10 reps)" crlf
      "Bent-Over Barbell Rows(3 sets of 6-8 reps)" crlf
      "Lateral Raises(3 sets of 10-12 reps)" crlf
      "Cable Crunches(3 sets of 10-12 reps)")
   (assert (answer (read))))

;--r15----------------------------------------------------

(defrule Beginner_Weight_High_Height_Tall_Problem_Belly
   (problem-area4 2)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Calf Raises(3 sets of 10-12 reps)" crlf
      "Bench Press(3 sets of 8-10 reps)" crlf
      "Barbell Rows(3 sets of 6-8 reps)" crlf
      "Dumbbell Front Raises(3 sets of 10-12 reps)" crlf
      "Hanging Leg Raises(3 sets of 10-12 reps)")
   (assert (answer (read))))

;--r16--------------------Selecting Intermediate--------------------------------

(defrule Intermediate
   (experience-level 2)
   =>
   (printout t crlf crlf
      "What body type you want?" crlf
      "1.) Workout body" crlf
      "2.) Cross-fit body" crlf
      "Enter your choice here (1|2): ")
   (assert (body-type (read))))

;--r17--------------------Choosing Body type--------------------------------

(defrule Intermediate_Body_Workout
   (body-type 1)
   =>
   (printout t crlf crlf
      "How many pushups you can do in 1 round?" crlf
      "1.) 10 < _ < 30" crlf
      "2.) 30 <" crlf
      "Enter your choice here (1|2): ")
   (assert (pushup-range1 (read))))

;--r18----------------------------------------------------

(defrule Intermediate_Body_Crossfit
   (body-type 2)
   =>
   (printout t crlf crlf
      "How many pushups you can do in 1 round?" crlf
      "1.) 10 < _ < 30" crlf
      "2.) 30 <" crlf
      "Enter your choice here (1|2): ")
   (assert (pushup-range2 (read))))

;--r19----------------------Choosing Pushup count------------------------------

(defrule Intermediate_Body_Workout_Pushup_Low
   (pushup-range1 1)
   =>
   (printout t crlf crlf
      "How many pullups you can do in 1 round?" crlf
      "1.) 5< _ < 10" crlf
      "2.) 10 <" crlf
      "Enter your choice here (1|2): ")
   (assert (pullup-range1 (read))))

;--r20----------------------------------------------------

(defrule Intermediate_Body_Workout_Pushup_High
   (pushup-range1 2)
   =>
   (printout t crlf crlf
      "How many pullups you can do in 1 round?" crlf
      "1.) 5< _ < 10" crlf
      "2.) 10 <" crlf
      "Enter your choice here (1|2): ")
   (assert (pullup-range2 (read))))

;--r21----------------------------------------------------

(defrule Intermediate_Body_Crossfit_Pushup_Low
   (pushup-range2 1)
   =>
   (printout t crlf crlf
      "How many pullups you can do in 1 round?" crlf
      "1.) 5< _ < 10" crlf
      "2.) 10 <" crlf
      "Enter your choice here (1|2): ")
   (assert (pullup-range3 (read))))

;--r22----------------------------------------------------

(defrule Intermediate_Body_Crossfit_Pushup_High
   (pushup-range2 2)
   =>
   (printout t crlf crlf
      "How many pullups you can do in 1 round?" crlf
      "1.) 5< _ < 10" crlf
      "2.) 10 <" crlf
      "Enter your choice here (1|2): ")
   (assert (pullup-range4 (read))))

;--r23------------------Choosing pullups----------------------------------

(defrule Intermediate_Body_Workout_Pushup_Low_Pullups_Low
   (pullup-range1 1)
   =>
   (printout t crlf crlf
      "Choose the place for your workouts" crlf
      "1.) Home" crlf
      "2.) Gym" crlf
      "Enter your choice here (1|2): ")
   (assert (place-choose1 (read))))

;--r24----------------------------------------------------

(defrule Intermediate_Body_Workout_Pushup_Low_Pullups_High
   (pullup-range1 2)
   =>
   (printout t crlf crlf
      "Choose the place for your workouts" crlf
      "1.) Home" crlf
      "2.) Gym" crlf
      "Enter your choice here (1|2): ")
   (assert (place-choose2 (read))))

;--r25----------------------------------------------------

(defrule Intermediate_Body_Workout_Pushup_High_Pullups_Low
   (pullup-range2 1)
   =>
   (printout t crlf crlf
      "Choose the place for your workouts" crlf
      "1.) Home" crlf
      "2.) Gym" crlf
      "Enter your choice here (1|2): ")
   (assert (place-choose3 (read))))

;--r26----------------------------------------------------

(defrule Intermediate_Body_Workout_Pushup_High_Pullups_High
   (pullup-range2 2)
   =>
   (printout t crlf crlf
      "Choose the place for your workouts" crlf
      "1.) Home" crlf
      "2.) Gym" crlf
      "Enter your choice here (1|2): ")
   (assert (place-choose4 (read))))

;--r27----------------------------------------------------

(defrule Intermediate_Body_Crossfit_Pushup_Low_Pullups_Low
   (pullup-range3 1)
   =>
   (printout t crlf crlf
      "Choose the place for your workouts" crlf
      "1.) Home" crlf
      "2.) Gym" crlf
      "Enter your choice here (1|2): ")
   (assert (place-choose5 (read))))

;--r28----------------------------------------------------

(defrule Intermediate_Body_Crossfit_Pushup_Low_Pullups_High
   (pullup-range3 2)
   =>
   (printout t crlf crlf
      "Choose the place for your workouts" crlf
      "1.) Home" crlf
      "2.) Gym" crlf
      "Enter your choice here (1|2): ")
   (assert (place-choose6 (read))))

;--r29----------------------------------------------------

(defrule Intermediate_Body_Crossfit_Pushup_High_Pullups_Low
   (pullup-range4 1)
   =>
   (printout t crlf crlf
      "Choose the place for your workouts" crlf
      "1.) Home" crlf
      "2.) Gym" crlf
      "Enter your choice here (1|2): ")
   (assert (place-choose7 (read))))

;--r30----------------------------------------------------

(defrule Intermediate_Body_Crossfit_Pushup_High_Pullups_High
   (pullup-range4 2)
   =>
   (printout t crlf crlf
      "Choose the place for your workouts" crlf
      "1.) Home" crlf
      "2.) Gym" crlf
      "Enter your choice here (1|2): ")
   (assert (place-choose8 (read))))

;--r31-------------------Start workout for Intermediate---------------------------------

(defrule Intermediate_Body_Workout_Pushup_Low_Pullups_Low_Place_Home
   (place-choose1 1)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Diamond push-ups(3 sets of 10-12 reps)" crlf
      "Squats(3 sets of 12-15 reps)" crlf
      "Lunges(3 sets of 10-12 reps)" crlf
      "Crunches(3 sets of 15-20 reps)" crlf
      "Leg raises(3 sets of 10-12 reps)")
   (assert (answer (read))))

;--r32----------------------------------------------------

(defrule Intermediate_Body_Workout_Pushup_Low_Pullups_Low_Place_Gym
   (place-choose1 2)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Leg Press Machine(3 sets of 10-12 reps)" crlf
      "Dumbbell Bench Press(3 sets of 8-10 reps)" crlf
      "Pull-Down Machine(3 sets of 6-8 reps)" crlf
      "Face Pulls(3 sets of 10-12 reps)" crlf
      "Hanging Leg Raises(3 sets of 15-20 reps)")
   (assert (answer (read))))

;--r33----------------------------------------------------

(defrule Intermediate_Body_Workout_Pushup_Low_Pullups_High_Place_Home
   (place-choose2 1)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Pull-ups(3 sets to failure)" crlf
      "Push-ups(3 sets of 12-15 reps)" crlf
      "Planks(3 sets of 10-12 reps)" crlf
      "Crunches(3 sets of 15-20 reps)" crlf
      "Mountain climbers(3 sets of 10-12 reps)")
   (assert (answer (read))))

;--r34----------------------------------------------------

(defrule Intermediate_Body_Workout_Pushup_Low_Pullups_High_Place_Gym
   (place-choose2 2)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Romanian Deadlifts(3 sets of 10-12 reps)" crlf
      "Dumbbell Floor Press(3 sets of 8-10 reps)" crlf
      "Chin-Ups(3 sets of 6-8 reps)" crlf
      "Hammer Curls(3 sets of 10-12 reps)" crlf
      "Tricep Pushdowns(3 sets of 10-12 reps)")
   (assert (answer (read))))

;--r35----------------------------------------------------

(defrule Intermediate_Body_Workout_Pushup_High_Pullups_Low_Place_Home
   (place-choose3 1)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Burpees(3 sets of 10-12 reps)" crlf
      "Lunges(3 sets of 12-15 reps)" crlf
      "Russian twists(3 sets of 10-12 reps)" crlf
      "Bicycle crunches(3 sets of 15-20 reps)" crlf
      "Triceps pushdowns(3 sets of 10-12 reps)")
   (assert (answer (read))))

;--r36----------------------------------------------------

(defrule Intermediate_Body_Workout_Pushup_High_Pullups_Low_Place_Gym
   (place-choose3 2)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Calf Raises(3 sets of 10-12 reps)" crlf
      "Bench Press(3 sets of 8-10 reps)" crlf
      "Barbell Rows(3 sets of 6-8 reps)" crlf
      "Dumbbell Front Raises(3 sets of 10-12 reps)" crlf
      "Hanging Leg Raises(3 sets of 10-12 reps)")
   (assert (answer (read))))

;--r37----------------------------------------------------

(defrule Intermediate_Body_Workout_Pushup_High_Pullups_High_Place_Home
   (place-choose4 1)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Diamond push-ups(3 sets of 10-12 reps)" crlf
      "Squats(3 sets of 12-15 reps)" crlf
      "Lunges(3 sets of 10-12 reps)" crlf
      "Crunches(3 sets of 15-20 reps)" crlf
      "Leg raises(3 sets of 10-12 reps)")
   (assert (answer (read))))

;--r38----------------------------------------------------

(defrule Intermediate_Body_Workout_Pushup_High_Pullups_High_Place_Gym
   (place-choose4 2)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Barbell Squats(3 sets of 10-12 reps)" crlf
      "Bench Press(3 sets of 8-10 reps)" crlf
      "Bent-Over Row(3 sets of 8-10 reps)" crlf
      "Pull-Ups(3 sets to failure)" crlf
      "Overhead Press(3 sets of 6-8 reps)")
   (assert (answer (read))))

;--r39----------------------------------------------------

(defrule Intermediate_Body_Crossfit_Pushup_Low_Pullups_Low_Place_Home
   (place-choose5 1)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Diamond push-ups(3 sets of 10-12 reps)" crlf
      "Squats(3 sets of 12-15 reps)" crlf
      "Lunges(3 sets of 10-12 reps)" crlf
      "Crunches(3 sets of 15-20 reps)" crlf
      "Leg raises(3 sets of 10-12 reps)")
   (assert (answer (read))))

;--r40----------------------------------------------------

(defrule Intermediate_Body_Crossfit_Pushup_Low_Pullups_Low_Place_Gym
   (place-choose5 2)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Dumbbell Lunges(3 sets of 10-12 reps per leg)" crlf
      "Incline Dumbbell Press(3 sets of 8-10 reps)" crlf
      "3 sets of 8-10 reps(3 sets of 8-10 reps)" crlf
      "Lateral Raises(3 sets of 10-12 reps)" crlf
      "Dips(3 sets to failure)")
   (assert (answer (read))))

;--r41----------------------------------------------------

(defrule Intermediate_Body_Crossfit_Pushup_Low_Pullups_High_Place_Home
   (place-choose6 1)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Burpees(3 sets of 10-12 reps)" crlf
      "Lunges(3 sets of 12-15 reps)" crlf
      "Russian twists(3 sets of 10-12 reps)" crlf
      "Bicycle crunches(3 sets of 15-20 reps)" crlf
      "Triceps pushdowns(3 sets of 10-12 reps)")
   (assert (answer (read))))

;--r42----------------------------------------------------

(defrule Intermediate_Body_Crossfit_Pushup_Low_Pullups_High_Place_Gym
   (place-choose6 2)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Step-Ups(3 sets of 10-12 reps)" crlf
      "Incline Bench Press(3 sets of 8-10 reps)" crlf
      "Bent-Over Barbell Rows(3 sets of 6-8 reps)" crlf
      "Lateral Raises(3 sets of 10-12 reps)" crlf
      "Cable Crunches(3 sets of 10-12 reps)")
   (assert (answer (read))))

;--r43----------------------------------------------------

(defrule Intermediate_Body_Crossfit_Pushup_High_Pullups_Low_Place_Home
   (place-choose7 1)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Jump squats(3 sets of 10-12 reps)" crlf
      "Push-ups(3 sets of 12-15 reps)" crlf
      "Mountain climbers(3 sets of 10-12 reps)" crlf
      "Crunches(3 sets of 15-20 reps)" crlf
      "Plank jacks(3 sets of 10-12 reps)")
   (assert (answer (read))))

;--r44----------------------------------------------------

(defrule Intermediate_Body_Crossfit_Pushup_High_Pullups_Low_Place_Gym
   (place-choose7 2)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Goblet Squats(3 sets of 10-12 reps)" crlf
      "Dumbbell Row(3 sets of 8-10 reps)" crlf
      "Dumbbell Shoulder Press(3 sets of 6-8 reps)" crlf
      "Bicep Curls(3 sets of 10-12 reps)" crlf
      "Tricep Extensions(3 sets of 10-12 reps)")
   (assert (answer (read))))

;--r45----------------------------------------------------

(defrule Intermediate_Body_Crossfit_Pushup_High_Pullups_High_Place_Home
   (place-choose8 1)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Burpees(3 sets of 10-12 reps)" crlf
      "Lunges(3 sets of 12-15 reps)" crlf
      "Russian twists(3 sets of 10-12 reps)" crlf
      "Bicycle crunches(3 sets of 15-20 reps)" crlf
      "Triceps pushdowns(3 sets of 10-12 reps)")
   (assert (answer (read))))

;--r46----------------------------------------------------

(defrule Intermediate_Body_Crossfit_Pushup_High_Pullups_High_Place_Gym
   (place-choose8 2)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Leg Extensions(3 sets of 10-12 reps)" crlf
      "Hamstring Curls(3 sets of 8-10 reps)" crlf
      "Seated Chest Press Machine(3 sets of 6-8 reps)" crlf
      "Lat Pulldown Machine(3 sets of 10-12 reps)" crlf
      "Overhead Press Machine(3 sets of 10-12 reps)")
   (assert (answer (read))))

;--r47---------------------Starting the Professsional-------------------------------

(defrule Professional
   (experience-level 3)
   =>
   (printout t crlf crlf
      "What body type you want?" crlf
      "1.) Hero type" crlf
      "2.) Bodybuilder type" crlf
      "Enter your choice here (1|2): ")
   (assert (body_type_pro (read))))

;--r48----------------------------------------------------

(defrule Professional_Body_Hero
   (body_type_pro 1)
   =>
   (printout t crlf crlf
      "What is your body type?" crlf
      "1.) Ectomorph" crlf
      "2.) Endomorph" crlf
      "Enter your choice here (1|2): ")
   (assert (selfbody_type1 (read))))

;--r49----------------------------------------------------

(defrule Professional_Body_Bodybuilder
   (body_type_pro 2)
   =>
   (printout t crlf crlf
      "What is your body type?" crlf
      "1.) Ectomorph" crlf
      "2.) Endomorph" crlf
      "Enter your choice here (1|2): ")
   (assert (selfbody_type2 (read))))

;--r50----------------------------------------------------

(defrule Professional_Body_Hero_Selfbody_Ectomorph1
   (selfbody_type1 1)
   =>
   (printout t crlf crlf
      "What is your fat percentage?" crlf
      "1.) < 25 %" crlf
      "2.) > 25 %" crlf
      "Enter your choice here (1|2): ")
   (assert (fat-percentage1 (read))))

;--r51----------------------------------------------------

(defrule Professional_Body_Hero_Selfbody_Endomorph1
   (selfbody_type1 2)
   =>
   (printout t crlf crlf
      "What is your fat percentage?" crlf
      "1.) < 25 %" crlf
      "2.) > 25 %" crlf
      "Enter your choice here (1|2): ")
   (assert (fat-percentage2 (read))))

;--r52----------------------------------------------------

(defrule Professional_Body_Hero_Selfbody_Ectomorph2
   (selfbody_type2 1)
   =>
   (printout t crlf crlf
      "What is your fat percentage?" crlf
      "1.) < 25 %" crlf
      "2.) > 25 %" crlf
      "Enter your choice here (1|2): ")
   (assert (fat-percentage3 (read))))

;--r53----------------------------------------------------

(defrule Professional_Body_Hero_Selfbody_Endomorph2
   (selfbody_type2 2)
   =>
   (printout t crlf crlf
      "What is your fat percentage?" crlf
      "1.) < 25 %" crlf
      "2.) > 25 %" crlf
      "Enter your choice here (1|2): ")
   (assert (fat-percentage4 (read))))


;--r54--------------------workout--------------------------------

(defrule Professional_Body_Hero_Selfbody_Ectomorph_Fat_Low
   (fat-percentage1 1)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Barbell Squats(3 sets of 10-12 reps)" crlf
      "Bench Press(3 sets of 8-10 reps)" crlf
      "Bent-Over Row(3 sets of 8-10 reps)" crlf
      "Pull-Ups(3 sets to failure)" crlf
      "Overhead Press(3 sets of 6-8 reps)")
   (assert (answer (read))))

;--r55----------------------------------------------------

(defrule Professional_Body_Hero_Selfbody_Ectomorph_Fat_High
   (fat-percentage1 2)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Goblet Squats(3 sets of 10-12 reps)" crlf
      "Dumbbell Row(3 sets of 8-10 reps)" crlf
      "Dumbbell Shoulder Press(3 sets of 6-8 reps)" crlf
      "Bicep Curls(3 sets of 10-12 reps)" crlf
      "Tricep Extensions(3 sets of 10-12 reps)")
   (assert (answer (read))))

;--r56----------------------------------------------------

(defrule Professional_Body_Hero_Selfbody_Endomorph_Fat_Low
   (fat-percentage2 1)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Step-Ups(3 sets of 10-12 reps)" crlf
      "Incline Bench Press(3 sets of 8-10 reps)" crlf
      "Bent-Over Barbell Rows(3 sets of 6-8 reps)" crlf
      "Lateral Raises(3 sets of 10-12 reps)" crlf
      "Cable Crunches(3 sets of 10-12 reps)")
   (assert (answer (read))))

;--r57----------------------------------------------------

(defrule Professional_Body_Hero_Selfbody_Endomorph_Fat_High
   (fat-percentage2 2)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Dumbbell Lunges(3 sets of 10-12 reps per leg)" crlf
      "Incline Dumbbell Press(3 sets of 8-10 reps)" crlf
      "3 sets of 8-10 reps(3 sets of 8-10 reps)" crlf
      "Lateral Raises(3 sets of 10-12 reps)" crlf
      "Dips(3 sets to failure)")
   (assert (answer (read))))

;--r58----------------------------------------------------

(defrule Professional_Body_Bodybuilder_Selfbody_Ectomorph_Fat_Low
   (fat-percentage3 1)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Leg Press Machine(3 sets of 10-12 reps)" crlf
      "Dumbbell Bench Press(3 sets of 8-10 reps)" crlf
      "Pull-Down Machine(3 sets of 6-8 reps)" crlf
      "Face Pulls(3 sets of 10-12 reps)" crlf
      "Hanging Leg Raises(3 sets of 15-20 reps)")
   (assert (answer (read))))

;--r59----------------------------------------------------

(defrule Professional_Body_Bodybuilder_Selfbody_Ectomorph_Fat_High
   (fat-percentage3 2)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Romanian Deadlifts(3 sets of 10-12 reps)" crlf
      "Dumbbell Floor Press(3 sets of 8-10 reps)" crlf
      "Chin-Ups(3 sets of 6-8 reps)" crlf
      "Hammer Curls(3 sets of 10-12 reps)" crlf
      "Tricep Pushdowns(3 sets of 10-12 reps)")
   (assert (answer (read))))

;--r60----------------------------------------------------

(defrule Professional_Body_Bodybuilder_Selfbody_Endomorph_Fat_Low
   (fat-percentage4 1)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Leg Extensions(3 sets of 10-12 reps)" crlf
      "Hamstring Curls(3 sets of 8-10 reps)" crlf
      "Seated Chest Press Machine(3 sets of 6-8 reps)" crlf
      "Lat Pulldown Machine(3 sets of 10-12 reps)" crlf
      "Overhead Press Machine(3 sets of 10-12 reps)")
   (assert (answer (read))))

;--r61----------------------------------------------------

(defrule Professional_Body_Bodybuilder_Selfbody_Endomorph_Fat_High
   (fat-percentage4 2)
   =>
   (printout t crlf crlf
      "Your Workout:" crlf
      "Calf Raises(3 sets of 10-12 reps)" crlf
      "Bench Press(3 sets of 8-10 reps)" crlf
      "Barbell Rows(3 sets of 6-8 reps)" crlf
      "Dumbbell Front Raises(3 sets of 10-12 reps)" crlf
      "Hanging Leg Raises(3 sets of 10-12 reps)")
   (assert (answer (read))))

;--r62----------------------------------------------------