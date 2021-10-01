function downloadDenseNet121ONNX(url, destination)
% downloadTrainedDenseNet121ONNX(_) downloads the ONNX model of the
% DenseNet-121 architecture.

% Copyright 2021 The MathWorks, Inc.

filename = "densenet-9.onnx";
netDirFullPath = destination;
netFileFullPath = fullfile(destination, filename);

if ~exist(netFileFullPath, "file")
    fprintf("Downloading DenseNet-121 ONNX model.\n");
    fprintf("This can take several minutes to download...\n");
    if ~exist(netDirFullPath, "dir")
        mkdir(netDirFullPath);
    end
    websave(netFileFullPath, url);
    fprintf("Done.\n\n");
else
    fprintf("DenseNet-121 ONNX model already exists.\n\n");
end
end