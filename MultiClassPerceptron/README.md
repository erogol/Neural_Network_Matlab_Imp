A neural network for the recognition of the first ten integers (i.e. 0, 1, 2, . . . , 9) is to
be designed. Each number is assumed to be given on a 10 × 10 grid (i.e. 100 pixels).

i : Use the training set given in the appendix. Note that here, considering several possible
representation of each numeral on the 10 × 10 grid, a set of 10 patterns for each integer is
given. Choose a simple coding to get the input pattern (i.e. ±1 for blank and non-blank
cells).

ii : Choose 5 different test sets, T2 , T4 , .., T10 as follows. Each set Ti should contain
10 patterns per each integer, hence a total of 100 patterns. Each pattern in Ti should be
obtained by randomly perturbing total of i number of pixels in the corresponding pattern in
the training set. (Hence Ti represents i% perturbation to the pattern in question).

iii : Use single-layer perceptron network with 10 (output) neurons. Each output corre-
sponds to one of the numerals. Obtain the desired outputs corresponding to the inputs on
the training set by considering maximum selection scheme. (i.e. for 0, the desired outputs
will be as d1 = 1, di = −1, i = 1; for 1, d2 = 1, di = −1, i = 2, etc..)
Repeat the steps iv - vi for c = 0.01, 0.1, 1, 10 (c is the learning constant).

iv : Use the perceptron training rule for multicategory case to find the weights of the
network. Record the number of iterations that took place until convergence. If the algorithm
does not converge in reasonable amount of iteration, find a set of weigths which yields
maximum number of correct classification.

v : Using the training set, determine the output patterns and the percentage of success
in the recognition of the training patterns. (i.e. if you have 100 training patters, and after
training only 90 of them are recognized correctly, then the success rate is %90).

vi : Determine the success in recognition by using the test sets T 2, T4, .., T10 .
