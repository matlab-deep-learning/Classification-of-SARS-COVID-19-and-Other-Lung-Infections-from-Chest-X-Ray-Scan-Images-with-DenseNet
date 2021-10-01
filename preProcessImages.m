function [dataOut, info] = preProcessImages(data, info)
% preProcessImages(_) applies the pre-processing steps (rescaling, contrast
% adjustment, image complement) to the training, testing, and validation
% image samples.

% Copyright 2021 The MathWorks, Inc.

dataOut = data;
for idx = 1:size(data, 1)
    temp = data.input{idx, 1};
    
    % Rescale the image
    imgOut = rescale(temp);
    
    % Adjust the contrast level
    imgOut = imadjust(imgOut);
    
    % Complement the image
    imgOut = imcomplement(imgOut);
    
    % Return the processed image
    dataOut.input{idx, 1} = imgOut;
end
end