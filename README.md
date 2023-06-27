# Reconstructive-Neurosymbolic
A subset of neurosymbolic that applies remembered fortunes and music modes to reconstruct coherency.

## Standard Theory
For four given data samples, with two matching character fate and two matching dating outcome, find the least good outcome that isn't the worst:

~~~
0 [ Charlotte Dies ] 0 [ Never Dated Player ]
1 [ Charlotte Lives] 1 [ Dated Player ]
~~~

Here this can be mapped as:

~~~
  0   1
0 0,0 0,1
1 1,0 1,1
~~~

This format assumes one isn't trying to achieve the dark nuetral outcome.

## Including Longterm Memory
Remembered fortunes is similar to a fortune cookie, except that if two fortune outcomes, it retains it in long term memory.

You would apply the concept to neurosymbolic by having two competing neurosymbolic subroutines.
