library(ggplot2)
library(ggthemes)

mnist_circ_sign   <- read.csv('Results/MNIST/Mnist_circ_sign.csv')
mnist_kac_nosign  <- read.csv('Results/MNIST/Mnist_kac_nosign.csv')
mnist_random_sign <- read.csv('Results/MNIST/Mnist_random_sign.csv')
mnist_toep_sign   <- read.csv('Results/MNIST/Mnist_toep_sign_+baseline.csv')

mnist_circ_sign$transform   <- 'Circulant With Sign'
mnist_kac_nosign$transform  <- 'Kac No Sign'
mnist_random_sign$transform <- 'Random With Sign'
mnist_toep_sign$transform   <- 'Toeplitz With Sign'

results <- rbind(mnist_circ_sign,
                 mnist_kac_nosign, 
                 mnist_random_sign, 
                 mnist_toep_sign[2:6,])

results$hash_size <- 2048 - results$Size
results           <- select(results, Accuracy, hash_size, transform)

newrows <- data.frame(c(.9897, .9897, .9897, .9897), 
                      c( 0, 0, 0, 0),
                      c('Circulant With Sign',
                        'Kac No Sign', 
                        'Toeplitz With Sign',
                        'Random With Sign'))
colnames(newrows) <- colnames(results)
results <- rbind(results, newrows)

ggplot(results, aes(hash_size, Accuracy, col = transform)) + 
  geom_line(size = 1) + 
  geom_point(size = 2) + 
  theme_minimal() + 
  scale_color_brewer(palette = 'Set1') + 
  labs(x = "Size of Hash", y = 'Accuracy', col = 'Hash Type') + 
  geom_hline(yintercept = .9897, col = 'red') + 
  annotate("text", y =.983, x = 1900, label= "Baseline Accuracy", size = 7)

