# TopologicalEntropy
Computes metric entropy and a finite version of topological entropy of sequences of letters. 

## Motivation
See [final paper](https://github.com/megan-lynn-tucker/TopologicalEntropy/blob/master/Topological%20Entropy.pdf). This paper contains all of the code used as well as graphics produced via analyzing the DNA sequences found in [DNASequences.fasta](https://github.com/megan-lynn-tucker/TopologicalEntropy/blob/master/DNASequences.fasta). This paper was written using LaTeX, and the code can be accessed [here](https://github.com/megan-lynn-tucker/TopologicalEntropy/blob/master/Topological%20Entropy.tex).

## Code
The program is broken up into four separate pieces of Matlab code.
[Metric Entropy](https://github.com/megan-lynn-tucker/TopologicalEntropy/blob/master/MetricEntropy.m) is the simplest way to calculate entropy. 
The [Complexity Function](https://github.com/megan-lynn-tucker/TopologicalEntropy/blob/master/ComplexityFunction.m) is required to calculate the [Topological Entropy](https://github.com/megan-lynn-tucker/TopologicalEntropy/blob/master/TopologicalEntropy.m) which is a more complex way of analyzing entropy. 
The [read.mlx file](https://github.com/megan-lynn-tucker/TopologicalEntropy/blob/master/Read.mlx) is what imports the data (in this case, specifically from the file DNASequences.fasta), creates histograms of the length of the DNA sequences, their metric entropy, and their topological entropy.
The bottom 1.43% of metric entropies and the bottom 1.44% of topological entropies are also saved to separate files.

## Class
MTH 321: Introduction to Mathematical Software
