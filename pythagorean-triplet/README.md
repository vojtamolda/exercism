# Pythagorean Triplet

Welcome to Pythagorean Triplet on Exercism's Julia Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Introduction

Your friend Ashley enjoys art inspired by mathematics and you would like to make them a cute birthday card.
You have seen the variety of patterns (rays, parabolas, partial symmetry, oh my) in [this plot of pythagorean triplets][plot] and think you could make something neat with them.

The next step on your creative journey is to find some pythagorean triplets!

[plot]: https://en.wikipedia.org/wiki/Pythagorean_triple#/media/File:Pythagorean_triple_scatterplot.svg

## Instructions

`(3, 4, 5)` and `(5, 12, 13)` are both Pythogorean triplets.
A Pythagorean triplet is three natural numbers `(a, b, c)` such that: `a^2 + b^2 = c^2` and `a < b < c`.

In this exercise you must find all Pythagorean triplets that sum to a target value `N` and return them in ascending order.

## Examples

For `N = 24`, there is one triplet that sums to 24: `(6, 8, 10)`.

For `N = 60`, there are two triplets that sum to 60: `(10, 24, 26)` and `(15, 20 , 25)`. You should return them in that order.

## Source

### Created by

- @TheComputerM

### Contributed to by

- @cmcaine
- @SaschaMann

### Based on

Problem 9 at Project Euler - http://projecteuler.net/problem=9