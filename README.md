# shhh

Code for playing with discrete combinatorial structures (i.e. combinations, permutations, n-tuples, etc.)

## Generators

So far this library contains a few generators for the aforementioned structures. A generator is something
that can be used to visit each instance of a combinatorial structure, one at a time. This allows you to
explore the structure without exhausting memory.

The generators in this library implement the IteratorProtocol and Sequence protocols from the Swift standard
library.

The algorithms for this library are from "The Art of Computer Programming, Volume 4a: Combinatorial 
Algorithms, part 1" by Donald E. Knuth.

### N-Tuples

An n-tuple can be thought of as a coordinate in an n-dimensional space. Since we're dealing with discrete
structures, each dimension can be represented by the set non-negative integers, Z^*. Since computer
resources are finite, each dimention typically has a finite domain. In this case we can view our n-tuple
as a mixed radix number (m_1, m_2, ..., m_n), where each position i represents a digit with m_i possible values
{0, 1, ..., (m_i-1)}. In this case each m_i is a radix.

#### MixedRadixGenerator

Generates all n-tuples in the mixed-radix numbering system defined by an array of radixes in lexicographical order.

### Permutations

A permutation is a reordering of a sequence of elements, where each element is distinguishable.

#### LexicographicPermutationGenerator

Generates all permutations of a given array of integers, in lexicographic order.

### Combinations



#### LexicographicCombinationGenerator

Generates all t-combinations of a given array of integers, in lexicographic order.



