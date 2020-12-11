function [hitIM,missIM,sunkIM] = readIM()

hitIM = imread('hit.jpg');  %%Loading in images to be used 
missIM = imread('miss.jpg');
sunkIM = imread('sunkenship.jpg');