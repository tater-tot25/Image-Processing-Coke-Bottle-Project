% Defect 8: No bottle
function p =  testNoBottle(im)
% CS6640_defect_no_bottle - determine if no bottle in middle of image
% On input:
%     im (MxNx3 array): input image
% On output:
%     p (float): probability there's no bottle in middle
% Call:
%     b = CS6640_defect_no_bottle(bot1);
% Author:
%     Andrew Tate
%     UU
%     Fall 2025
%
% copy of the image for my posterization
pixel = squeeze(im(260, 240, :))';  % 1x3 vector row/column
closestOne = closest_color(pixel);
pixel = squeeze(im(250, 180, :))';
colorTwo = closest_color(pixel);
pixel = squeeze(im(260, 215, :))';
colorThree = closest_color(pixel);
pickedPixels = [colorOne; ColorTwo; ColorThree];
disp("Number of background pixels in middle third of image with a weighted number of red pixels subtracted:")
disp(sumBackground);
p = 0;
for i = 1:3
    if isequal(pickedPixels(i,:), [223 51 11])
        p = 1;
    end
    if isequal(pickedPixels(i,:), [254 221 190])
        p = 1;
    end
end
%helper function that posterizes a pixel to a color
function closest = closest_color(color)
    colors = [223 51 11; %picked with impixel using one of the images
              24 5 0;
              252 212 176; %color of the wall
              254 221 190]; %color of white label
    color = double(color); %double precision  
    dists = zeros(4, 1);      %initialize array of distances
    for k = 1:4
        difference_r = color(1) - colors(k, 1);  
        difference_g = color(2) - colors(k, 2); 
        difference_b = color(3) - colors(k, 3); 
        dists(k) = sqrt(difference_r^2 + difference_g^2 + difference_b^2);
    end
    % Find the index of the minimum distance
    [min_dist, index] = min(dists);
    % Return the closest color
    closest = colors(index, :);
end