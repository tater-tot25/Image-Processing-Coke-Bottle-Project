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
posterized = zeros(288, 352, 3, 'uint8');
for row = 1:288
    for col = 1:352
        % Extract the pixel RGB
        pixel = squeeze(im(row, col, :))';  % 1x3 vector
        % Find the closest reference color
        closest = closest_color(pixel);
        % Place the posterized pixel in the new image
        posterized(row, col, :) = uint8(closest);
    end
end
imshow(posterized);
sumBackground = 0;
sumRed = 0; %so I can weigh it based on the red presence too
for row = 117:234 %iterate over roughly the middle third
    for col = 1:352
        rgbVal = squeeze(posterized(row, col, :))'; 
        if all(rgbVal == [252 212 176])
            sumBackground = sumBackground + 1;
        end
        if all(rgbVal == [223 51 11])
            sumRed = sumRed + 1;
        end
    end
end
sumRed = sumRed * 2;
sumBackground = sumBackground - sumRed;
disp("Number of background pixels in middle third of image with a weighted number of red pixels subtracted:")
disp(sumBackground);
p = sumBackground/(117 * 352);  % replace this line with code to determine "No bottle" probability
end %after graphing my p values, it looks like my theshold might be somewhere around 0.5

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