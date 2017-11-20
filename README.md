# Speeding up Neural Networks with Structured Matrices
Final project for Big Data and Machine Learning (E8100).

## Full Project Description

The  goal  of  this  project  is  to  understand  the  influence  of  data  compression  on  the  quality  of  theclassification with the use of the deep neural networks.  The setup is a standard deep neural networkbut with input data preprocessed by the structured gaussian linear projection followed by the signfunctionf.  An example of the structured gaussian projection is the circulant gaussian matrix.

More details regarding this preprocessing pipeline are given in Lecture 2.  Hashed data is given asan input to a regular neural network (think for instance about standard MNIST data and a neuralnetwork with one hidden layer).**Recent experimental results show that described hashing still enables the network to learn highquality model (95% accuracy on the MNIST dataset)**.Student may either focus on the theoretical part of the project or the experimental one.  One of the goals of the project would be to show some stability results regarding learning with neuralnetworks in context of the hashing preprocessing step.  To be more specific, let us assume that thehasher  accurately  preserves  the  angular  distance  between  input  vectors.   Why  is  it  the  case  thenthat the accuracy on the training set for the neural network with the aforementioned preprocessingstep should be similar to the one when no preprocessing is conducted at all ?  How the answer tothis question depends on the characteristic of the input data ?  This project naturally leads to thequestion of the stability of various neural network algorithms,  that wasnt deeply analyzed before.If student is interesting in other methods for hashing in the preprocessing step,  she/he can focuson the other one (**in particular, somebody more interested in experiments can test various hashingpreprocessing pipelines**).

## Where we are at:

### Constructed matrices:
- Dense Gaussian
- Dense Gaussian (sign function)

### To construct:
- Sparse Gaussian
- Sparse Gaussian (sign function)
- Hadamard
- Kac's random walk

## Next steps:

1) Finish constructing matrices (by Dec 3)

2) Run all matrices through all datasets (MNIST, CIFAR10, CIFAR100, dogs if we have time...) (by Dec 10)

3) Create t-SNE plot for one transformation of one dataset, for illustrutive purposes (by Dec 10)
https://medium.com/@luckylwk/visualising-high-dimensional-datasets-using-pca-and-t-sne-in-python-8ef87e7915b

4) Write paper (by Dec 17)

## Papers:

The paper on hashing as a preprocessing step by our very own Krzyzstof Choromanski (and a few other dudes..):
https://arxiv.org/pdf/1511.05212.pdf

A more advanced paper using CNNs, to classify different datasets, including our dogs:
https://arxiv.org/pdf/1705.07706.pdf

Random projection in dimensionality reduction: Applications to image and text data
http://www.ime.unicamp.br/~wanderson/Artigos/randon_projection_kdd.pdf

SHORT AND DEEP: SKETCHING AND NEURAL NETWORKS
https://openreview.net/pdf?id=S1hsDCNFx
