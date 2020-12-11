function dispResults(sunkships)

disp(['You sunk ',num2str(sunkships),' ships!']);
if sunkships == 5
    victoryship = imread("victoryship.jpg");
    imshow(victoryship);
    title("You've sunk all the ships!");
end 