function [shots] = shotCount()

disp("Difficulty Levels: ");
disp("1 - 50 shots");
disp("2 - 25 shots");
disp("3 - 15 shots");

diff = 0; 
while(diff ~= 1 && diff ~= 2 && diff ~= 3)
    diff = input("Enter in difficulty level 1, 2, or 3: ");
end 

switch(diff) 
    case 1
        shots = 50;
    case 2
        shots = 25;
    case 3 
        shots = 15;
    otherwise 
end 
