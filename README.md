# neuralnetproject
Final project for big data and machine learning. 

## Materials:

### Neural Net explantaion videos

*Andrew Ng's* new deep learning course for coursera (course 1 has basics, course 4 has CNNs):
https://www.coursera.org/specializations/deep-learning?utm_source=gg&utm_medium=sem&campaignid=904733485&adgroupid=43839369503&device=c&keyword=deep%20learning%20andrew%20ng&matchtype=p&network=g&devicemodel=&adpostion=1t1&creativeid=213830597426&hide_mobile_promo&gclid=Cj0KCQjw9uHOBRDtARIsALtCa95-VXzI40NSFaxbPlQ_v2Q_hMrnmhI6XN6J3WDc-Fb2dkYKwHeKXFIaArqVEALw_wcB 

*Hugo Larochelle*, 90 videos on NNs.. was recommended on quora for beginners:
https://www.youtube.com/watch?v=SGZ6BttHMPw&list=PL6Xpj9I5qXYEcOhn7TqghAJ6NAPrNmUBH

Columbia's deep learning for computer vision course, week1 homework:
http://llcao.net/cu-deeplearning15/pdf/try_mnst_small.html 

### The dataset:

http://vision.stanford.edu/aditya86/ImageNetDogs/

### Papers

The paper on hashing as a preprocessing step by our very own Krzyzstof Choromanski (and a few other dudes..):
https://arxiv.org/pdf/1511.05212.pdf

Stanford dogs CNN, a grad student's final project:
http://cs231n.stanford.edu/reports/2015/pdfs/fcdh_FinalReport.pdf 

A more advanced paper using CNNs, to classify different datasets, including our dogs:
https://arxiv.org/pdf/1705.07706.pdf

### Kaggle

They just launched the stanford dogs as a competition... not entirely relevant for us but may be helpful:
https://www.kaggle.com/c/dog-breed-identification/kernels

### Full Project Description

The  goal  of  this  project  is  to  understand  the  influence  of  data  compression  on  the  quality  of  theclassification with the use of the deep neural networks.  The setup is a standard deep neural networkbut with input data preprocessed by the structured gaussian linear projection followed by the signfunctionf.  An example of the structured gaussian projection is the circulant gaussian matrix.

More details regarding this preprocessing pipeline are given in Lecture 2.  Hashed data is given asan input to a regular neural network (think for instance about standard MNIST data and a neuralnetwork with one hidden layer).**Recent experimental results show that described hashing still enables the network to learn highquality model (95% accuracy on the MNIST dataset)**.Student may either focus on the theoretical part of the project or the experimental one.  One of the goals of the project would be to show some stability results regarding learning with neuralnetworks in context of the hashing preprocessing step.  To be more specific, let us assume that thehasher  accurately  preserves  the  angular  distance  between  input  vectors.   Why  is  it  the  case  thenthat the accuracy on the training set for the neural network with the aforementioned preprocessingstep should be similar to the one when no preprocessing is conducted at all ?  How the answer tothis question depends on the characteristic of the input data ?  This project naturally leads to thequestion of the stability of various neural network algorithms,  that wasnt deeply analyzed before.If student is interesting in other methods for hashing in the preprocessing step,  she/he can focuson the other one (**in particular, somebody more interested in experiments can test various hashingpreprocessing pipelines**).
