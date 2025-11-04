# Assign the variables for exercise 1 here:
from operator import truediv

engine_indicator_light = "red blinking"
space_suits_on = True
shuttle_cabin_ready = True
crew_status = space_suits_on and shuttle_cabin_ready
computer_status_code = 200
shuttle_speed = 15000

# BEFORE running the code, predict what will be printed to the console by the following statements:

if engine_indicator_light == "green": 
  print("engines have started")
elif engine_indicator_light == "green blinking": 
  print("engines are preparing to start")
else:
  print("engines are off")

  #If the engine light is green - start the engine. Else if the engine light is green blinking, pring 'engines are
  #preparing to start. If neither (is red) then print 'engines are off'. Which it will print engines are off.