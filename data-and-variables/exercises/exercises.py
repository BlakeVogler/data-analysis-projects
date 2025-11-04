# 1. Declare and assign the variables here:
Shuttle_Name = ('Determination')
Shuttle_Speed_mph = 17500
Distance_To_Mars_km = 225000000
Distance_To_Moon_km = 384400
Miles_Per_Kilometer = 0.621

# 2. Use print() to print the 'type' each variable. Print one item per line.
print(type(Shuttle_Name))
print(type(Shuttle_Speed_mph))
print(type(Distance_To_Mars_km))
print(type(Distance_To_Moon_km))
print(type(Miles_Per_Kilometer))

# code your solution to exercises 3 and 4 here:

miles_to_mars = Distance_To_Mars_km * Miles_Per_Kilometer
hours_to_mars = miles_to_mars / Shuttle_Speed_mph
days_to_mars = hours_to_mars / 24

print(Shuttle_Name, "will take", days_to_mars, "days to reach Mars.")

# Code your solution to exercise 5 here
miles_to_moon = Distance_To_Moon_km * Miles_Per_Kilometer
hours_to_moon = miles_to_moon / Shuttle_Speed_mph
days_to_moon = hours_to_moon / 24
print(Shuttle_Name, "will take", days_to_moon, "days to reach Moon.")