function [gridTrack] = createTrack()

gridTrack = repmat('?',10,10);

for x = 1:10
    for y = 1:10
        gridTrack(x,y) = "?";
    end 
end 

