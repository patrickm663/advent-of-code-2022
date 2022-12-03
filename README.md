# Advent of Code 2022🌲
This repository serves to track my Advent of Code progress.

I intend to use a variety of programming languages where possible to learn more about them, but currently using Julia for now.

## Day One⭐⭐
First attempt used Julia. The run time is 0.03s which is fairly good given 6 year old hardware. The approach taken used arrays, all native Julia so was fairly quick.

## Day Two⭐⭐
Ran into an issue here with how Julia treats strings. It seems you cannot change a character at an index in place, so switched to the strategy of removing the space and treating it as a two character string. Both Part 1 and Part 2 mainly used if-else statements to assign scores. Run time was 0.02s and 0.0014s, all native Julia. 
