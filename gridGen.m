function [gridboard] = gridGen()

g5 = 1;
while(g5 ~= 0) 
    
    %Declaration of blank grid board
    gridboard = zeros(10);
    
    
for i = 5:-1:1
    randomx = randi(5);     %Generates new random point 
    randomy = randi(5);
    randomO = randi(2);     %Random orientation - 1 = horiz, 2 = vert.
    for j = 0:1:i-1         %Traverses throught all ship lengths-5, decrementing to 1
        
        if randomO == 1    
            gridboard(randomx+j, randomy) = gridboard(randomx+j,randomy) + i;
        else
            gridboard(randomx, randomy+j) = gridboard(randomx,randomy+j) + i;
        end 
    end 
end 

%these will be used to count how many of each integer there is in the table
fives = 0;
fours = 0;
threes = 0;
twos = 0;
one = 0;

g5 = 0;
for i = 1:10
    for j = 1:10                %%Checks for overlap between ships; if there is, the board is randomly generated again
        switch(gridboard(i,j))
            case 0 
                
            case 1
                one = one + 1;
            case 2
                twos = twos + 1;
            case 3 
                threes = threes + 1;
            case 4
                fours = fours + 1;
            case 5
                fives = fives + 1;
            otherwise 
                g5 = 1;
                break;
        end 
    end 
end 


if (one ~= 1 || twos ~= 2 || threes ~= 3 || fours ~= 4 || fives ~= 5) 
    g5 = 1;
end 
end 

