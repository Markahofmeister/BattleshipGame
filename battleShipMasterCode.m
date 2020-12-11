%Mark Hofmeister 
%11/09/2020
%Team Members: Christina Sivaprakasam, Rayna Schoenberger 
%Portfolio Project: Battleship Game 
%
function battleShipMasterCode() 

clear
clc

%Randomly places ships in random orientation
gridboard = gridGen();

%Displays Rules of the Game 
dispRules()

%Selects Difficulty 
shots = shotCount();

%Loops through and plays game 
sunkships = playGame(gridboard,shots);
      
%Displays Results of the game 
dispResults(sunkships)
   











