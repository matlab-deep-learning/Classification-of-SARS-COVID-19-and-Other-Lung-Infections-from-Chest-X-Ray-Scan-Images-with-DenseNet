# Classification of SARS COVID-19 and Other Lung Infections from Chest X-Ray Scan Images with DenseNet-121

This example shows how to train a deep neural network to classify SARS COVID-19 and other lung infections using chest X-ray (CXR) images. In this example, a transfer learning (TL) based approach is proposed and presented to fine-tune the DenseNet-121 neural network [[1]](#Huang2017Densly) for the CXR image classification task. This example performs classification on the COVID-19 Radiography data set [[2]](#Chowdhury2020Can)-[[3]](#Rahman2021Exploring) using a 2-D DenseNet-121 architecture.

## Requirements

- [MATLAB&reg;](https://www.mathworks.com/products/matlab.html) R2021a or later.
- [Image Processing Toolbox&trade;](https://www.mathworks.com/products/image.html).
- [Deep Learning Toolbox&trade;](https://www.mathworks.com/products/deep-learning.html).
- [Deep Learning Toolbox Converter for ONNX Model Format&trade;](https://www.mathworks.com/matlabcentral/fileexchange/67296-deep-learning-toolbox-converter-for-onnx-model-format).
- [Parallel Computing Toolbox&trade;](https://www.mathworks.com/products/parallel-computing.html) (if using GPU for training).

## Overview

In comparison to the classification of photographic images, the classification of medical images presents several challenges, such as:
- Unreliable performance due to low inter-class variation between images.
- Potential overfitting due to imbalanced data sets.

Hence, prior to performing TL based classification, it is important to: 
- Select the appropriate deep learning architecture.
- Perform the proper data augmentation techniques.

The 2-D DenseNet-121 [[1]](#Huang2017Densly) is a convolutional network model in which each layer is connected to every other layer in a feed-forward fashion. DenseNets have a number of appealing advantages, including the elimination of the vanishing-gradient problem, improved feature propagation, feature reuse, and a significant reduction in parameter counts. It is also fast, efficient, simple and a popular network in the medical imaging domain [[2]](#Chowdhury2020Can)-[[3]](#Rahman2021Exploring). This example starts with the ONNX&trade; DenseNet-121 model (ONNX&trade; version 1.4, Opset version 9) and applies transfer learning to retrain the network using CXR images.

 
## Getting Started

Download or clone this repository to your machine and open the `.mlx` file in MATLAB&reg;.

## Results

| Model | Overall Accuracy | Size (MB) | Classes |
| ------ | ------ | ------ | ------ |
| DenseNet-121 | >90% | 27 | COVID, Lung_Opacity, Normal, Viral Pneumonia |


Four sample test images with their predicted labels and the prediction scores.

![Sample predicted images](images/results.png?raw=true)

Confusion matrix for the true labels targets and predicted labels outputs.

![Confusion matrix](images/confusionMatrix.png?raw=true)

## References

<a id="Huang2017Densly">[1] G. Huang, Z. Liu, L. Van Der Maaten, and K. Q. Weinberger, _"Densely Connected Convolutional Networks,"_ In Proc. IEEE Conference on Computer Vision and Pattern Recognition (CVPR), pp. 2261-2269, 2017, doi: [10.1109/CVPR.2017.243](https://doi.org/10.1109/CVPR.2017.243).</a>

<a id="Chowdhury2020Can">[2] M. E. H. Chowdhury, T. Rahman, A. Khandakar, R. Mazhar, M. A. Kadir, Z. B. Mahbub, K. R. Islam, M. S. Khan, A. Iqbal, N. Al-Emadi, M. B. I. Reaz, and M. T. Islam, _"Can AI help in screening Viral and COVID-19 pneumonia?,"_ IEEE Access, Vol. 8, pp. 132665 - 132676, 2020, doi: [10.1109/ACCESS.2020.3010287](https://doi.org/10.1109/ACCESS.2020.3010287).</a>

<a id="Rahman2021Exploring">[3] T. Rahman, A. Khandakar, Y. Qiblawey, A. Tahir, S. Kiranyaz, S. B. A. Kashem, M. T. Islam, S. A. Maadeed, S. M. Zughaier, M. S. Khan, and M. E. Chowdhury, _"Exploring the Effect of Image Enhancement Techniques on COVID-19 Detection using Chest X-ray Images,"_ Computers in Biology and Medicine, Vol. 132, pp. 104319, 2021, doi: [10.1016/j.compbiomed.2021.104319](https://doi.org/10.1016/j.compbiomed.2021.104319).</a>

_Copyright 2021 The MathWorks, Inc._
