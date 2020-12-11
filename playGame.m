function [sunkships] = playGame(gridboard, shots) 

%Loading in used mages
[hitIM,missIM,sunkIM]=readIM();

%Assigns lengths 
carrier = 5;
battleship = 4;
cruiser = 3;
destroyer = 2;

sunkships = 0;

gridTrack = createTrack();

while (shots ~= 0) 
    
    disp(['You have ',num2str(shots),' shots remaining.']);
    disp(" ");
    
    %x target 
    colchoice = input("Enter in a horizontal Coordinate to target: ");
    while colchoice < 1 || colchoice > 10
        colchoice = input("Coordinate must be between 1 and 10. Enter in a horizontal coordinate to target: ");
    end 
    
    %y target 
    rowchoice = input("Enter in a vertical coordinate to target: ");
    while rowchoice < 1 || rowchoice > 10
        rowchoice = input("Coordinate must be between 1 and 10. Enter in a vertical coordinate to target: ");
    end 
    
    
    coord = gridboard(rowchoice,colchoice);
   
        switch(coord)
            case 0
                disp("miss!");
                imshow(missIM);
                title("miss!");
                gridTrack(rowchoice, colchoice) = 'X';
            case 1
                disp("Hit!");
                imshow(sunkIM);
                title("Skiff Sunk!");
                disp("You sunk the skiff!");
                 gridTrack(rowchoice, colchoice) = 'H';
                sunkships = sunkships + 1;
            case 2
                disp("Hit!");
                imshow(hitIM);
                title("Hit!");
                destroyer = destroyer - 1;
                gridTrack(rowchoice, colchoice) = 'H';
                if destroyer == 0
                    disp("You sunk the destroyer!");
                    imshow(sunkIM);
                    title("Destroyer Sunk!");
                    sunkships = sunkships + 1;
                end 
            case 3 
                disp("Hit!");
                imshow(hitIM);
                title("Hit!");
                gridTrack(rowchoice, colchoice) = 'H';
                cruiser = cruiser - 1;
                if cruiser == 0
                    disp("You sunk the cruiser!");
                    imshow(sunkIM);
                    title("Cruiser Sunk!");
                    sunkships = sunkships + 1;
                end 
            case 4
                disp("Hit!");
                imshow(hitIM);
                title("Hit!");
                gridTrack(rowchoice, colchoice) = 'H';
                battleship = battleship - 1;
                if battleship == 0
                    disp("You sunk the battleship!");
                    imshow(sunkIM);
                    title("Battleship Sunk!");
                    sunkships = sunkships + 1;
                end 
            case 5
                disp("Hit!");
                imshow(hitIM);
                title("Hit!");
                gridTrack(rowchoice, colchoice) = 'H';
                carrier = carrier - 1;
                if carrier == 0
                    disp("You sunk the carrier!");
                    imshow(sunkIM);
                    title("Carrier Sunk!");
                    sunkships = sunkships + 1;
                end 
            otherwise 
        end 
        gridboard(rowchoice,colchoice) = 0;
        shots = shots - 1;
        disp(" ");
        disp(gridTrack);
        disp(" ");
end 