function downloadTrainedDenseNet121(url,destination)
% downloadTrainedDenseNet121(_) downloads a pretrained DenseNet-121 network
% that classifies the chest X-Ray data.

% Copyright 2021 The MathWorks, Inc.

filename = "trainedDenseNet121.mat";
netDirFullPath = destination;
netFileFullPath = fullfile(destination, filename);

if ~exist(netFileFullPath, "file")
    fprintf("Downloading pretrained DenseNet-121 network.\n");
    fprintf("This can take several minutes to download...\n");
    if ~exist(netDirFullPath, "dir")
        mkdir(netDirFullPath);
    end
    websave(netFileFullPath, url);
    fprintf("Done.\n\n");
else
    fprintf("Pretrained DenseNet-121 network already exists.\n\n");
end
end