# Exercism Julia Track

## [Acronym](https://exercism.org/tracks/julia/exercises/acronym)  ([`acronym/`](acronym/))

<img align=right width=100 alt='Acronym' src='https://assets.exercism.org/exercises/acronym.svg'>


Convert a phrase to its acronym.

Techies love their TLA (Three Letter Acronyms)!

Help generate some jargon by writing a program that converts a long name
like Portable Network Graphics to its acronym (PNG).


## [All Your Base](https://exercism.org/tracks/julia/exercises/all-your-base)  ([`all-your-base/`](all-your-base/))

<img align=right width=100 alt='All Your Base' src='https://assets.exercism.org/exercises/all-your-base.svg'>


Convert a number, represented as a sequence of digits in one base, to any other base.

Implement general base conversion. Given a number in base **a**,
represented as a sequence of digits, convert it to base **b**.


## [Allergies](https://exercism.org/tracks/julia/exercises/allergies)  ([`allergies/`](allergies/))

<img align=right width=100 alt='Allergies' src='https://assets.exercism.org/exercises/allergies.svg'>


Given a person's allergy score, determine whether or not they're allergic to a given item, and their full list of allergies.

An allergy test produces a single numeric score which contains the
information about all the allergies the person has (that they were
tested for).

The list of items (and their value) that were tested are:

* eggs (1)
* peanuts (2)
* shellfish (4)
* strawberries (8)
* tomatoes (16)
* chocolate (32)
* pollen (64)
* cats (128)

So if Tom is allergic to peanuts and chocolate, he gets a score of 34.

Now, given just that score of 34, your program should be able to say:

- Whether Tom is allergic to any one of those allergens listed above.
- All the allergens Tom is allergic to.

Note: a given score may include allergens **not** listed above (i.e.
allergens that score 256, 512, 1024, etc.).  Your program should
ignore those components of the score.  For example, if the allergy
score is 257, your program should only report the eggs (1) allergy.


## [Alphametics](https://exercism.org/tracks/julia/exercises/alphametics)  ([`alphametics/`](alphametics/))

<img align=right width=100 alt='Alphametics' src='https://assets.exercism.org/exercises/alphametics.svg'>


Write a function to solve alphametics puzzles.

[Alphametics](https://en.wikipedia.org/wiki/Alphametics) is a puzzle where letters in words are replaced with numbers.

For example `SEND + MORE = MONEY`:

```text
  S E N D
  M O R E +
-----------
M O N E Y
```

Replacing these with valid numbers gives:

```text
  9 5 6 7
  1 0 8 5 +
-----------
1 0 6 5 2
```

This is correct because every letter is replaced by a different number and the words, translated into numbers, then make a valid sum.

Each letter must represent a different digit, and the leading digit of a multi-digit number must not be zero.

Write a function to solve alphametics puzzles.

You may (or may not!) want to call the function `permutations(a, t)` from [Combinatorics.jl](https://github.com/JuliaMath/Combinatorics.jl) in your solution.
If you would like to use it, you can include the **read-only** file `permutations.jl` with `include("permutations.jl")`.


## [Anagram](https://exercism.org/tracks/julia/exercises/anagram)  ([`anagram/`](anagram/))

<img align=right width=100 alt='Anagram' src='https://assets.exercism.org/exercises/anagram.svg'>


An anagram is a rearrangement of letters to form a new word.
Given a word and a list of candidates, select the sublist of anagrams of the given word.

Given `"listen"` and a list of candidates like `"enlists" "google"
"inlets" "banana"` the program should return a list containing
`"inlets"`.


## [Armstrong Numbers](https://exercism.org/tracks/julia/exercises/armstrong-numbers)  ([`armstrong-numbers/`](armstrong-numbers/))

<img align=right width=100 alt='Armstrong Numbers' src='https://assets.exercism.org/exercises/armstrong-numbers.svg'>


An [Armstrong number](https://en.wikipedia.org/wiki/Narcissistic_number) is a number that is the sum of its own digits each raised to the power of the number of digits.

For example:

- 9 is an Armstrong number, because `9 = 9^1 = 9`
- 10 is *not* an Armstrong number, because `10 != 1^2 + 0^2 = 1`
- 153 is an Armstrong number, because: `153 = 1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153`
- 154 is *not* an Armstrong number, because: `154 != 1^3 + 5^3 + 4^3 = 1 + 125 + 64 = 190`

Write some code to determine whether a number is an Armstrong number.


## [Atbash Cipher](https://exercism.org/tracks/julia/exercises/atbash-cipher)  ([`atbash-cipher/`](atbash-cipher/))

<img align=right width=100 alt='Atbash Cipher' src='https://assets.exercism.org/exercises/atbash-cipher.svg'>


Create an implementation of the atbash cipher, an ancient encryption system created in the Middle East.

The Atbash cipher is a simple substitution cipher that relies on
transposing all the letters in the alphabet such that the resulting
alphabet is backwards. The first letter is replaced with the last
letter, the second with the second-last, and so on.

An Atbash cipher for the Latin alphabet would be as follows:

```text
Plain:  abcdefghijklmnopqrstuvwxyz
Cipher: zyxwvutsrqponmlkjihgfedcba
```

It is a very weak cipher because it only has one possible key, and it is
a simple monoalphabetic substitution cipher. However, this may not have
been an issue in the cipher's time.

Ciphertext is written out in groups of fixed length, the traditional group size
being 5 letters, and punctuation is excluded. This is to make it harder to guess
things based on word boundaries.


## [Binary Search](https://exercism.org/tracks/julia/exercises/binary-search)  ([`binary-search/`](binary-search/))

<img align=right width=100 alt='Binary Search' src='https://assets.exercism.org/exercises/binary-search.svg'>


Your task is to implement a binary search algorithm.

A binary search algorithm finds an item in a list by repeatedly splitting it in half, only keeping the half which contains the item we're looking for.
It allows us to quickly narrow down the possible locations of our item until we find it, or until we've eliminated all possible locations.

~~~~exercism/caution
Binary search only works when a list has been sorted.
~~~~

The algorithm looks like this:

- Find the middle element of a sorted list and compare it with the item we're looking for.
- If the middle element is our item, then we're done!
- If the middle element is greater than our item, we can eliminate that element and all the elements **after** it.
- If the middle element is less than our item, we can eliminate that element and all the elements **before** it.
- If every element of the list has been eliminated then the item is not in the list.
- Otherwise, repeat the process on the part of the list that has not been eliminated.

Here's an example:

Let's say we're looking for the number 23 in the following sorted list: `[4, 8, 12, 16, 23, 28, 32]`.

- We start by comparing 23 with the middle element, 16.
- Since 23 is greater than 16, we can eliminate the left half of the list, leaving us with `[23, 28, 32]`.
- We then compare 23 with the new middle element, 28.
- Since 23 is less than 28, we can eliminate the right half of the list: `[23]`.
- We've found our item.


## [Bob](https://exercism.org/tracks/julia/exercises/bob)  ([`bob/`](bob/))

<img align=right width=100 alt='Bob' src='https://assets.exercism.org/exercises/bob.svg'>


Bob is a lackadaisical teenager. In conversation, his responses are very limited.

Bob answers 'Sure.' if you ask him a question, such as "How are you?".

He answers 'Whoa, chill out!' if you YELL AT HIM (in all capitals).

He answers 'Calm down, I know what I'm doing!' if you yell a question at him.

He says 'Fine. Be that way!' if you address him without actually saying
anything.

He answers 'Whatever.' to anything else.

Bob's conversational partner is a purist when it comes to written communication and always follows normal rules regarding sentence punctuation in English.


## [Circular Buffer](https://exercism.org/tracks/julia/exercises/circular-buffer)  ([`circular-buffer/`](circular-buffer/))

<img align=right width=100 alt='Circular Buffer' src='https://assets.exercism.org/exercises/circular-buffer.svg'>


A circular buffer, cyclic buffer or ring buffer is a data structure that
uses a single, fixed-size buffer as if it were connected end-to-end.

A circular buffer first starts empty and of some predefined length. For
example, this is a 7-element buffer:
<!-- prettier-ignore -->
    [ ][ ][ ][ ][ ][ ][ ]

Assume that a 1 is written into the middle of the buffer (exact starting
location does not matter in a circular buffer):
<!-- prettier-ignore -->
    [ ][ ][ ][1][ ][ ][ ]

Then assume that two more elements are added — 2 & 3 — which get
appended after the 1:
<!-- prettier-ignore -->
    [ ][ ][ ][1][2][3][ ]

If two elements are then removed from the buffer, the oldest values
inside the buffer are removed. The two elements removed, in this case,
are 1 & 2, leaving the buffer with just a 3:
<!-- prettier-ignore -->
    [ ][ ][ ][ ][ ][3][ ]

If the buffer has 7 elements then it is completely full:
<!-- prettier-ignore -->
    [5][6][7][8][9][3][4]

When the buffer is full an error will be raised, alerting the client
that further writes are blocked until a slot becomes free.

When the buffer is full, the client can opt to overwrite the oldest
data with a forced write. In this case, two more elements — A & B —
are added and they overwrite the 3 & 4:
<!-- prettier-ignore -->
    [5][6][7][8][9][A][B]

3 & 4 have been replaced by A & B making 5 now the oldest data in the
buffer. Finally, if two elements are removed then what would be
returned is 5 & 6 yielding the buffer:
<!-- prettier-ignore -->
    [ ][ ][7][8][9][A][B]

Because there is space available, if the client again uses overwrite
to store C & D then the space where 5 & 6 were stored previously will
be used not the location of 7 & 8. 7 is still the oldest element and
the buffer is once again full.
<!-- prettier-ignore -->
    [C][D][7][8][9][A][B]


## [Clock](https://exercism.org/tracks/julia/exercises/clock)  ([`clock/`](clock/))

<img align=right width=100 alt='Clock' src='https://assets.exercism.org/exercises/clock.svg'>


Implement a clock that handles times without dates.

You should be able to add and subtract minutes to it.

Two clocks that represent the same time should be equal to each other.


## [Collatz Conjecture](https://exercism.org/tracks/julia/exercises/collatz-conjecture)  ([`collatz-conjecture/`](collatz-conjecture/))

<img align=right width=100 alt='Collatz Conjecture' src='https://assets.exercism.org/exercises/collatz-conjecture.svg'>


The Collatz Conjecture or 3x+1 problem can be summarized as follows:

Take any positive integer n. If n is even, divide n by 2 to get n / 2. If n is
odd, multiply n by 3 and add 1 to get 3n + 1. Repeat the process indefinitely.
The conjecture states that no matter which number you start with, you will
always reach 1 eventually.

Given a number n, return the number of steps required to reach 1.


## [Complex Numbers](https://exercism.org/tracks/julia/exercises/complex-numbers)  ([`complex-numbers/`](complex-numbers/))

<img align=right width=100 alt='Complex Numbers' src='https://assets.exercism.org/exercises/complex-numbers.svg'>


A complex number is a number in the form `a + b * i` where `a` and `b` are real and `i` satisfies `i^2 = -1`.

`a` is called the real part and `b` is called the imaginary part of `z`.
The conjugate of the number `a + b * i` is the number `a - b * i`.
The absolute value of a complex number `z = a + b * i` is a real number `|z| = sqrt(a^2 + b^2)`. The square of the absolute value `|z|^2` is the result of multiplication of `z` by its complex conjugate.

The sum/difference of two complex numbers involves adding/subtracting their real and imaginary parts separately:
`(a + i * b) + (c + i * d) = (a + c) + (b + d) * i`,
`(a + i * b) - (c + i * d) = (a - c) + (b - d) * i`.

Multiplication result is by definition
`(a + i * b) * (c + i * d) = (a * c - b * d) + (b * c + a * d) * i`.

The reciprocal of a non-zero complex number is
`1 / (a + i * b) = a/(a^2 + b^2) - b/(a^2 + b^2) * i`.

Dividing a complex number `a + i * b` by another `c + i * d` gives:
`(a + i * b) / (c + i * d) = (a * c + b * d)/(c^2 + d^2) + (b * c - a * d)/(c^2 + d^2) * i`.

Raising e to a complex exponent can be expressed as `e^(a + i * b) = e^a * e^(i * b)`, the last term of which is given by Euler's formula `e^(i * b) = cos(b) + i * sin(b)`.

Implement the following operations:
 - addition, subtraction, multiplication and division of two complex numbers,
 - conjugate, absolute value, exponent of a given complex number.


Assume the programming language you are using does not have an implementation of complex numbers.

The Julia Base implementation of complex numbers can be found here: https://github.com/JuliaLang/julia/blob/master/base/complex.jl.

---

You can work on the bonus exercises by changing `@test_skip` to `@test`.


## [Custom Set](https://exercism.org/tracks/julia/exercises/custom-set)  ([`custom-set/`](custom-set/))

<img align=right width=100 alt='Custom Set' src='https://assets.exercism.org/exercises/custom-set.svg'>


Create a custom set type.

Sometimes it is necessary to define a custom data structure of some
type, like a set. In this exercise you will define your own set. How it
works internally doesn't matter, as long as it behaves like a set of
unique elements.

The tests require a constructor that takes an array. The internals of your custom set implementation can use other data structures but you may have to implement an outer constructor that takes exactly one array for the tests to pass.

Certain methods have a unicode operator equivalent. E.g. `intersect(CustomSet([1, 2, 3, 4]), CustomSet([]))` is equivalent to `CustomSet([1, 2, 3, 4]) ∩ CustomSet([])`.


## [Darts](https://exercism.org/tracks/julia/exercises/darts)  ([`darts/`](darts/))

<img align=right width=100 alt='Darts' src='https://assets.exercism.org/exercises/darts.svg'>


Write a function that returns the earned points in a single toss of a Darts game.

[Darts](https://en.wikipedia.org/wiki/Darts) is a game where players
throw darts at a [target](https://en.wikipedia.org/wiki/Darts#/media/File:Darts_in_a_dartboard.jpg).

In our particular instance of the game, the target rewards 4 different amounts of points, depending on where the dart lands:

* If the dart lands outside the target, player earns no points (0 points).
* If the dart lands in the outer circle of the target, player earns 1 point.
* If the dart lands in the middle circle of the target, player earns 5 points.
* If the dart lands in the inner circle of the target, player earns 10 points.

The outer circle has a radius of 10 units (this is equivalent to the total radius for the entire target), the middle circle a radius of 5 units, and the inner circle a radius of 1. Of course, they are all centered at the same point (that is, the circles are [concentric](http://mathworld.wolfram.com/ConcentricCircles.html)) defined by the coordinates (0, 0).

Write a function that given a point in the target (defined by its `real` Cartesian coordinates `x` and `y`), returns the correct amount earned by a dart landing at that point.


## [Difference of Squares](https://exercism.org/tracks/julia/exercises/difference-of-squares)  ([`difference-of-squares/`](difference-of-squares/))

<img align=right width=100 alt='Difference of Squares' src='https://assets.exercism.org/exercises/difference-of-squares.svg'>


Find the difference between the square of the sum and the sum of the squares of the first N natural numbers.

The square of the sum of the first ten natural numbers is
(1 + 2 + ... + 10)² = 55² = 3025.

The sum of the squares of the first ten natural numbers is
1² + 2² + ... + 10² = 385.

Hence the difference between the square of the sum of the first
ten natural numbers and the sum of the squares of the first ten
natural numbers is 3025 - 385 = 2640.

You are not expected to discover an efficient solution to this yourself from
first principles; research is allowed, indeed, encouraged. Finding the best
algorithm for the problem is a key skill in software engineering.


## [ETL](https://exercism.org/tracks/julia/exercises/etl)  ([`etl/`](etl/))

<img align=right width=100 alt='ETL' src='https://assets.exercism.org/exercises/etl.svg'>


Your task is to change the data format of letters and their point values in the game.

Currently, letters are stored in groups based on their score, in a one-to-many mapping.

- 1 point: "A", "E", "I", "O", "U", "L", "N", "R", "S", "T",
- 2 points: "D", "G",
- 3 points: "B", "C", "M", "P",
- 4 points: "F", "H", "V", "W", "Y",
- 5 points: "K",
- 8 points: "J", "X",
- 10 points: "Q", "Z",

This needs to be changed to store each individual letter with its score in a one-to-one mapping.

- "a" is worth 1 point.
- "b" is worth 3 points.
- "c" is worth 3 points.
- "d" is worth 2 points.
- etc.

As part of this change, the team has also decided to change the letters to be lower-case rather than upper-case.

~~~~exercism/note
If you want to look at how the data was previously structured and how it needs to change, take a look at the examples in the test suite.
~~~~


## [Gigasecond](https://exercism.org/tracks/julia/exercises/gigasecond)  ([`gigasecond/`](gigasecond/))

<img align=right width=100 alt='Gigasecond' src='https://assets.exercism.org/exercises/gigasecond.svg'>


Your task is to determine the date and time one gigasecond after a certain date.

A gigasecond is one thousand million seconds.
That is a one with nine zeros after it.

If you were born on _January 24th, 2015 at 22:00 (10:00:00pm)_, then you would be a gigasecond old on _October 2nd, 2046 at 23:46:40 (11:46:40pm)_.


## [Grains](https://exercism.org/tracks/julia/exercises/grains)  ([`grains/`](grains/))

<img align=right width=100 alt='Grains' src='https://assets.exercism.org/exercises/grains.svg'>


Calculate the number of grains of wheat on a chessboard given that the number
on each square doubles.

There once was a wise servant who saved the life of a prince. The king
promised to pay whatever the servant could dream up. Knowing that the
king loved chess, the servant told the king he would like to have grains
of wheat. One grain on the first square of a chess board, with the number
of grains doubling on each successive square.

There are 64 squares on a chessboard (where square 1 has one grain, square 2 has two grains, and so on).

Write code that shows:
- how many grains were on a given square, and
- the total number of grains on the chessboard


## [Hamming](https://exercism.org/tracks/julia/exercises/hamming)  ([`hamming/`](hamming/))

<img align=right width=100 alt='Hamming' src='https://assets.exercism.org/exercises/hamming.svg'>


Calculate the Hamming Distance between two DNA strands.

Your body is made up of cells that contain DNA. Those cells regularly wear out and need replacing, which they achieve by dividing into daughter cells. In fact, the average human body experiences about 10 quadrillion cell divisions in a lifetime!

When cells divide, their DNA replicates too. Sometimes during this process mistakes happen and single pieces of DNA get encoded with the incorrect information. If we compare two strands of DNA and count the differences between them we can see how many mistakes occurred. This is known as the "Hamming Distance".

We read DNA using the letters C,A,G and T. Two strands might look like this:

    GAGCCTACTAACGGGAT
    CATCGTAATGACGGCCT
    ^ ^ ^  ^ ^    ^^

They have 7 differences, and therefore the Hamming Distance is 7.

The Hamming Distance is useful for lots of things in science, not just biology, so it's a nice phrase to be familiar with :)

The Hamming distance is only defined for sequences of equal length, so
an attempt to calculate it between sequences of different lengths should
not work. The general handling of this situation (e.g., raising an
exception vs returning a special value) may differ between languages.


## [Hello World](https://exercism.org/tracks/julia/exercises/hello-world)  ([`hello-world/`](hello-world/))

<img align=right width=100 alt='Hello World' src='https://assets.exercism.org/exercises/hello-world.svg'>


The classical introductory exercise. Just say "Hello, World!".

["Hello, World!"](http://en.wikipedia.org/wiki/%22Hello,_world!%22_program) is
the traditional first program for beginning programming in a new language
or environment.

The objectives are simple:

- Write a function that returns the string "Hello, World!".
- Run the test suite and make sure that it succeeds.
- Submit your solution and check it at the website.

If everything goes well, you will be ready to fetch your first real exercise.


## [ISBN Verifier](https://exercism.org/tracks/julia/exercises/isbn-verifier)  ([`isbn-verifier/`](isbn-verifier/))

<img align=right width=100 alt='ISBN Verifier' src='https://assets.exercism.org/exercises/isbn-verifier.svg'>


The [ISBN-10 verification process](https://en.wikipedia.org/wiki/International_Standard_Book_Number) is used to validate book identification
numbers. These normally contain dashes and look like: `3-598-21508-8`


## [Isogram](https://exercism.org/tracks/julia/exercises/isogram)  ([`isogram/`](isogram/))

<img align=right width=100 alt='Isogram' src='https://assets.exercism.org/exercises/isogram.svg'>


Determine if a word or phrase is an isogram.

An isogram (also known as a "nonpattern word") is a word or phrase without a repeating letter, however spaces and hyphens are allowed to appear multiple times.

Examples of isograms:

- lumberjacks
- background
- downstream
- six-year-old

The word *isograms*, however, is not an isogram, because the s repeats.

Isograms are case insensitive.


## [Killer Sudoku Helper](https://exercism.org/tracks/julia/exercises/killer-sudoku-helper)  ([`killer-sudoku-helper/`](killer-sudoku-helper/))

<img align=right width=100 alt='Killer Sudoku Helper' src='https://assets.exercism.org/exercises/killer-sudoku-helper.svg'>


A friend of yours is learning how to solve Killer Sudokus (rules below) but struggling to figure out which digits can go in a cage.
They ask you to help them out by writing a small program that lists all valid combinations for a given cage, and any constraints that affect the cage.

To make the output of your program easy to read, the combinations it returns must be sorted.


## [Largest Series Product](https://exercism.org/tracks/julia/exercises/largest-series-product)  ([`largest-series-product/`](largest-series-product/))

<img align=right width=100 alt='Largest Series Product' src='https://assets.exercism.org/exercises/largest-series-product.svg'>


Your task is to look for patterns in the long sequence of digits in the encrypted signal.

The technique you're going to use here is called the largest series product.

Let's define a few terms, first.

- **input**: the sequence of digits that you need to analyze
- **series**: a sequence of adjacent digits (those that are next to each other) that is contained within the input
- **span**: how many digits long each series is
- **product**: what you get when you multiply numbers together

Let's work through an example, with the input `"63915"`.

- To form a series, take adjacent digits in the original input.
- If you are working with a span of `3`, there will be three possible series:
  - `"639"`
  - `"391"`
  - `"915"`
- Then we need to calculate the product of each series:
  - The product of the series `"639"` is 162 (`6 × 3 × 9 = 162`)
  - The product of the series `"391"` is 27 (`3 × 9 × 1 = 27`)
  - The product of the series `"915"` is 45 (`9 × 1 × 5 = 45`)
- 162 is bigger than both 27 and 45, so the largest series product of `"63915"` is from the series `"639"`.
  So the answer is **162**.


## [Leap](https://exercism.org/tracks/julia/exercises/leap)  ([`leap/`](leap/))

<img align=right width=100 alt='Leap' src='https://assets.exercism.org/exercises/leap.svg'>


Given a year, report if it is a leap year.

The tricky thing here is that a leap year in the Gregorian calendar occurs:

```text
on every year that is evenly divisible by 4
  except every year that is evenly divisible by 100
    unless the year is also evenly divisible by 400
```

For example, 1997 is not a leap year, but 1996 is.  1900 is not a leap
year, but 2000 is.


## [Luhn](https://exercism.org/tracks/julia/exercises/luhn)  ([`luhn/`](luhn/))

<img align=right width=100 alt='Luhn' src='https://assets.exercism.org/exercises/luhn.svg'>


Given a number determine whether or not it is valid per the Luhn formula.

The [Luhn algorithm](https://en.wikipedia.org/wiki/Luhn_algorithm) is
a simple checksum formula used to validate a variety of identification
numbers, such as credit card numbers and Canadian Social Insurance
Numbers.

The task is to check if a given string is valid.

Validating a Number
------

Strings of length 1 or less are not valid. Spaces are allowed in the input,
but they should be stripped before checking. All other non-digit characters
are disallowed.


## [Matching Brackets](https://exercism.org/tracks/julia/exercises/matching-brackets)  ([`matching-brackets/`](matching-brackets/))

<img align=right width=100 alt='Matching Brackets' src='https://assets.exercism.org/exercises/matching-brackets.svg'>


Given a string containing brackets `[]`, braces `{}`, parentheses `()`,
or any combination thereof, verify that any and all pairs are matched
and nested correctly.


## [Minesweeper](https://exercism.org/tracks/julia/exercises/minesweeper)  ([`minesweeper/`](minesweeper/))

<img align=right width=100 alt='Minesweeper' src='https://assets.exercism.org/exercises/minesweeper.svg'>


Add the mine counts to a completed Minesweeper board.

Minesweeper is a popular game where the user has to find the mines using
numeric hints that indicate how many mines are directly adjacent
(horizontally, vertically, diagonally) to a square.

In this exercise you have to create some code that counts the number of
mines adjacent to a given empty square and replaces that square with the
count.

The board is a rectangle composed of blank space (' ') characters. A mine
is represented by an asterisk ('\*') character.

If a given space has no adjacent mines at all, leave that square blank.


## [Nucleotide Count](https://exercism.org/tracks/julia/exercises/nucleotide-count)  ([`nucleotide-count/`](nucleotide-count/))

<img align=right width=100 alt='Nucleotide Count' src='https://assets.exercism.org/exercises/nucleotide-count.svg'>


Each of us inherits from our biological parents a set of chemical instructions known as DNA that influence how our bodies are constructed. All known life depends on DNA!

> Note: You do not need to understand anything about nucleotides or DNA to complete this exercise.

DNA is a long chain of other chemicals and the most important are the four nucleotides, adenine, cytosine, guanine and thymine. A single DNA chain can contain billions of these four nucleotides and the order in which they occur is important!
We call the order of these nucleotides in a bit of DNA a "DNA sequence".

We represent a DNA sequence as an ordered collection of these four nucleotides and a common way to do that is with a string of characters such as "ATTACG" for a DNA sequence of 6 nucleotides.
'A' for adenine, 'C' for cytosine, 'G' for guanine, and 'T' for thymine.

Given a string representing a DNA sequence, count how many of each nucleotide is present.
If the string contains characters that aren't A, C, G, or T then it is invalid and you should signal an error.

For example:

```
"GATTACA" -> 'A': 3, 'C': 1, 'G': 1, 'T': 2
"INVALID" -> error
```


## [Pangram](https://exercism.org/tracks/julia/exercises/pangram)  ([`pangram/`](pangram/))

<img align=right width=100 alt='Pangram' src='https://assets.exercism.org/exercises/pangram.svg'>


Your task is to figure out if a sentence is a pangram.

A pangram is a sentence using every letter of the alphabet at least once.
It is case insensitive, so it doesn't matter if a letter is lower-case (e.g. `k`) or upper-case (e.g. `K`).

For this exercise we only use the basic letters used in the English alphabet: `a` to `z`.


## [Pascal's Triangle](https://exercism.org/tracks/julia/exercises/pascal's-triangle)  ([`pascals-triangle/`](pascals-triangle/))

<img align=right width=100 alt='Pascal's Triangle' src='https://assets.exercism.org/exercises/pascal's-triangle.svg'>


Compute Pascal's triangle up to a given number of rows.

In Pascal's Triangle each number is computed by adding the numbers to
the right and left of the current position in the previous row.

```text
    1
   1 1
  1 2 1
 1 3 3 1
1 4 6 4 1
# ... etc
```


## [Perfect Numbers](https://exercism.org/tracks/julia/exercises/perfect-numbers)  ([`perfect-numbers/`](perfect-numbers/))

<img align=right width=100 alt='Perfect Numbers' src='https://assets.exercism.org/exercises/perfect-numbers.svg'>


Determine if a number is perfect, abundant, or deficient based on
Nicomachus' (60 - 120 CE) classification scheme for positive integers.

The Greek mathematician [Nicomachus](https://en.wikipedia.org/wiki/Nicomachus) devised a classification scheme for positive integers, identifying each as belonging uniquely to the categories of **perfect**, **abundant**, or **deficient** based on their [aliquot sum](https://en.wikipedia.org/wiki/Aliquot_sum). The aliquot sum is defined as the sum of the factors of a number not including the number itself. For example, the aliquot sum of 15 is (1 + 3 + 5) = 9

- **Perfect**: aliquot sum = number
  - 6 is a perfect number because (1 + 2 + 3) = 6
  - 28 is a perfect number because (1 + 2 + 4 + 7 + 14) = 28
- **Abundant**: aliquot sum > number
  - 12 is an abundant number because (1 + 2 + 3 + 4 + 6) = 16
  - 24 is an abundant number because (1 + 2 + 3 + 4 + 6 + 8 + 12) = 36
- **Deficient**: aliquot sum < number
  - 8 is a deficient number because (1 + 2 + 4) = 7
  - Prime numbers are deficient

Implement a way to determine whether a given number is **perfect**. Depending on your language track, you may also need to implement a way to determine whether a given number is **abundant** or **deficient**.


## [Phone Number](https://exercism.org/tracks/julia/exercises/phone-number)  ([`phone-number/`](phone-number/))

<img align=right width=100 alt='Phone Number' src='https://assets.exercism.org/exercises/phone-number.svg'>


Clean up user-entered phone numbers so that they can be sent SMS messages.

The **North American Numbering Plan (NANP)** is a telephone numbering system used by many countries in North America like the United States, Canada or Bermuda. All NANP-countries share the same international country code: `1`.

NANP numbers are ten-digit numbers consisting of a three-digit Numbering Plan Area code, commonly known as *area code*, followed by a seven-digit local number. The first three digits of the local number represent the *exchange code*, followed by the unique four-digit number which is the *subscriber number*.

The format is usually represented as

```text
(NXX)-NXX-XXXX
```

where `N` is any digit from 2 through 9 and `X` is any digit from 0 through 9.

Your task is to clean up differently formatted telephone numbers by removing punctuation and the country code (1) if present.

For example, the inputs
- `+1 (613)-995-0253`
- `613-995-0253`
- `1 613 995 0253`
- `613.995.0253`

should all produce the output

`6139950253`

**Note:** As this exercise only deals with telephone numbers used in NANP-countries, only 1 is considered a valid country code.

When an input is invalid your function must throw an `ArgumentError`.
Invalid inputs include:
- `apple`
- `100`
- `2 555 555 1234`
- `100 200 3000`


## [Prime Factors](https://exercism.org/tracks/julia/exercises/prime-factors)  ([`prime-factors/`](prime-factors/))

<img align=right width=100 alt='Prime Factors' src='https://assets.exercism.org/exercises/prime-factors.svg'>


Compute the prime factors of a given natural number.

A prime number is only evenly divisible by itself and 1.

Note that 1 is not a prime number.


## [Pythagorean Triplet](https://exercism.org/tracks/julia/exercises/pythagorean-triplet)  ([`pythagorean-triplet/`](pythagorean-triplet/))

<img align=right width=100 alt='Pythagorean Triplet' src='https://assets.exercism.org/exercises/pythagorean-triplet.svg'>


`(3, 4, 5)` and `(5, 12, 13)` are both Pythogorean triplets.
A Pythagorean triplet is three natural numbers `(a, b, c)` such that: `a^2 + b^2 = c^2` and `a < b < c`.

In this exercise you must find all Pythagorean triplets that sum to a target value `N` and return them in ascending order.


## [Raindrops](https://exercism.org/tracks/julia/exercises/raindrops)  ([`raindrops/`](raindrops/))

<img align=right width=100 alt='Raindrops' src='https://assets.exercism.org/exercises/raindrops.svg'>


Your task is to convert a number into a string that contains raindrop sounds corresponding to certain potential factors. A factor is a number that evenly divides into another number, leaving no remainder. The simplest way to test if a one number is a factor of another is to use the [modulo operation](https://en.wikipedia.org/wiki/Modulo_operation).

The rules of `raindrops` are that if a given number:

- has 3 as a factor, add 'Pling' to the result.
- has 5 as a factor, add 'Plang' to the result.
- has 7 as a factor, add 'Plong' to the result.
- _does not_ have any of 3, 5, or 7 as a factor, the result should be the digits of the number.


## [Rational Numbers](https://exercism.org/tracks/julia/exercises/rational-numbers)  ([`rational-numbers/`](rational-numbers/))

<img align=right width=100 alt='Rational Numbers' src='https://assets.exercism.org/exercises/rational-numbers.svg'>


A rational number is defined as the quotient of two integers `a` and `b`, called the numerator and denominator, respectively, where `b != 0`.

~~~~exercism/note
Note that mathematically, the denominator can't be zero.
However in many implementations of rational numbers, you will find that the denominator is allowed to be zero with behaviour similar to positive or negative infinity in floating point numbers.
In those cases, the denominator and numerator generally still can't both be zero at once.
~~~~

The absolute value `|r|` of the rational number `r = a/b` is equal to `|a|/|b|`.

The sum of two rational numbers `r₁ = a₁/b₁` and `r₂ = a₂/b₂` is `r₁ + r₂ = a₁/b₁ + a₂/b₂ = (a₁ * b₂ + a₂ * b₁) / (b₁ * b₂)`.

The difference of two rational numbers `r₁ = a₁/b₁` and `r₂ = a₂/b₂` is `r₁ - r₂ = a₁/b₁ - a₂/b₂ = (a₁ * b₂ - a₂ * b₁) / (b₁ * b₂)`.

The product (multiplication) of two rational numbers `r₁ = a₁/b₁` and `r₂ = a₂/b₂` is `r₁ * r₂ = (a₁ * a₂) / (b₁ * b₂)`.

Dividing a rational number `r₁ = a₁/b₁` by another `r₂ = a₂/b₂` is `r₁ / r₂ = (a₁ * b₂) / (a₂ * b₁)` if `a₂` is not zero.

Exponentiation of a rational number `r = a/b` to a non-negative integer power `n` is `r^n = (a^n)/(b^n)`.

Exponentiation of a rational number `r = a/b` to a negative integer power `n` is `r^n = (b^m)/(a^m)`, where `m = |n|`.

Exponentiation of a rational number `r = a/b` to a real (floating-point) number `x` is the quotient `(a^x)/(b^x)`, which is a real number.

Exponentiation of a real number `x` to a rational number `r = a/b` is `x^(a/b) = root(x^a, b)`, where `root(p, q)` is the `q`th root of `p`.

Implement the following operations:

- conversion and promotion of integers to rationals. Read the manual's chaper on [conversion and promotion](https://docs.julialang.org/en/v1/manual/conversion-and-promotion/) for details about how and why to do this.
- addition, subtraction, multiplication and division of two rational numbers
- absolute value, exponentiation of a given rational number to an integer power, exponentiation of a real number to a rational number
- comparison (less than, equals, etc.) of two rational numbers, comparison of a rational number and an integer

In Julia, there are fallback methods already defined for many arithmetic methods, comparisons, etc, especially for subtypes of `Real`.
You do not need to write your own method for `>=` if you have already defined `<`; nor do you need to define `^(::RationalNumber, ::Integer)` if you have provided a method for multiplication; etc.
You can examine the fallback methods for a given function by entering `methods(abs)` or `edit(abs, (RationalNumber, RationalNumber))` at the REPL.

Your implementation of rational numbers should always be reduced to lowest terms. For example, `4/4` should reduce to `1/1`, `30/60` should reduce to `1/2`, `12/8` should reduce to `3/2`, etc. To reduce a rational number `r = a/b`, divide `a` and `b` by the greatest common divisor (gcd) of `a` and `b`. So, for example, `gcd(12, 8) = 4`, so `r = 12/8` can be reduced to `(12/4)/(8/4) = 3/2`.
The reduced form of a rational number should be in "standard form" (the denominator should always be a positive integer). If a denominator with a negative integer is present, multiply both numerator and denominator by `-1` to ensure standard form is reached. For example, `3/-4` should be reduced to `-3/4`

Assume that the programming language you are using does not have an implementation of rational numbers.


## [Resistor Color Trio](https://exercism.org/tracks/julia/exercises/resistor-color-trio)  ([`resistor-color-trio/`](resistor-color-trio/))

<img align=right width=100 alt='Resistor Color Trio' src='https://assets.exercism.org/exercises/resistor-color-trio.svg'>


If you want to build something using a Raspberry Pi, you'll probably use _resistors_.
For this exercise, you need to know only three things about them:

- Each resistor has a resistance value.
- Resistors are small - so small in fact that if you printed the resistance value on them, it would be hard to read.
  To get around this problem, manufacturers print color-coded bands onto the resistors to denote their resistance values.
- Each band acts as a digit of a number.
  For example, if they printed a brown band (value 1) followed by a green band (value 5), it would translate to the number 15.
  In this exercise, you are going to create a helpful program so that you don't have to remember the values of the bands.
  The program will take 3 colors as input, and outputs the correct value, in ohms.
  The color bands are encoded as follows:

- Black: 0
- Brown: 1
- Red: 2
- Orange: 3
- Yellow: 4
- Green: 5
- Blue: 6
- Violet: 7
- Grey: 8
- White: 9

In `resistor-color duo` you decoded the first two colors.
For instance: orange-orange got the main value `33`.
The third color stands for how many zeros need to be added to the main value.
The main value plus the zeros gives us a value in ohms.
For the exercise it doesn't matter what ohms really are.
For example:

- orange-orange-black would be 33 and no zeros, which becomes 33 ohms.
- orange-orange-red would be 33 and 2 zeros, which becomes 3300 ohms.
- orange-orange-orange would be 33 and 3 zeros, which becomes 33000 ohms.

(If Math is your thing, you may want to think of the zeros as exponents of 10.
If Math is not your thing, go with the zeros.
It really is the same thing, just in plain English instead of Math lingo.)

This exercise is about translating the colors into a label:

> "... ohms"

So an input of `"orange", "orange", "black"` should return:

> "33 ohms"

When we get to larger resistors, a [metric prefix][metric-prefix] is used to indicate a larger magnitude of ohms, such as "kiloohms".
That is similar to saying "2 kilometers" instead of "2000 meters", or "2 kilograms" for "2000 grams".

For example, an input of `"orange", "orange", "orange"` should return:

> "33 kiloohms"

[metric-prefix]: https://en.wikipedia.org/wiki/Metric_prefix


## [Reverse String](https://exercism.org/tracks/julia/exercises/reverse-string)  ([`reverse-string/`](reverse-string/))

<img align=right width=100 alt='Reverse String' src='https://assets.exercism.org/exercises/reverse-string.svg'>


Reverse a string

For example:
input: "cool"
output: "looc"


## [RNA Transcription](https://exercism.org/tracks/julia/exercises/rna-transcription)  ([`rna-transcription/`](rna-transcription/))

<img align=right width=100 alt='RNA Transcription' src='https://assets.exercism.org/exercises/rna-transcription.svg'>


Your task is determine the RNA complement of a given DNA sequence.

Both DNA and RNA strands are a sequence of nucleotides.

The four nucleotides found in DNA are adenine (**A**), cytosine (**C**), guanine (**G**) and thymine (**T**).

The four nucleotides found in RNA are adenine (**A**), cytosine (**C**), guanine (**G**) and uracil (**U**).

Given a DNA strand, its transcribed RNA strand is formed by replacing each nucleotide with its complement:

- `G` -> `C`
- `C` -> `G`
- `T` -> `A`
- `A` -> `U`

~~~~exercism/note
If you want to look at how the inputs and outputs are structured, take a look at the examples in the test suite.
~~~~


## [Robot Name](https://exercism.org/tracks/julia/exercises/robot-name)  ([`robot-name/`](robot-name/))

<img align=right width=100 alt='Robot Name' src='https://assets.exercism.org/exercises/robot-name.svg'>


Manage robot factory settings.

When a robot comes off the factory floor, it has no name.

The first time you turn on a robot, a random name is generated in the format
of two uppercase letters followed by three digits, such as RX837 or BC811.

Every once in a while we need to reset a robot to its factory settings,
which means that its name gets wiped. The next time you ask, that robot will
respond with a new random name.

The names must be random: they should not follow a predictable sequence.
Using random names means a risk of collisions. Your solution must ensure that
every existing robot has a unique name.

The test suite only generates ~100 names by default.
There are ~700k valid names, so it will only give a small chance of collisions.
Consider testing your solution for collisions in some other way in addition to the test suite.

This exercise continues our exploration of Julia's
[type system](https://docs.julialang.org/en/v1/manual/types/),
this time with mutable types,
and introduces us to
[random number generation](https://docs.julialang.org/en/v1/stdlib/Random/).

We will imagine that resetting the robot to the factory settings is like a surgery: it makes changes to the subject, but doesn't replace it.
We could also have modeled the problem such that resetting a robot creates a new robot, but not every problem can be modeled solely with immutable data structures (even purely functional languages deal with mutability inside their runtimes!).

In Julia, functions that mutate their arguments have a suffix `!` by convention.
So our method for doing this will be called `reset!`.

This is only a convention, but almost all published Julia code follows it and you might come to agree that it's quite helpful!


## [Robot Simulator](https://exercism.org/tracks/julia/exercises/robot-simulator)  ([`robot-simulator/`](robot-simulator/))

<img align=right width=100 alt='Robot Simulator' src='https://assets.exercism.org/exercises/robot-simulator.svg'>


Write a robot simulator.

A robot factory's test facility needs a program to verify robot movements.

The robots have three possible movements:

- turn right
- turn left
- advance

Robots are placed on a hypothetical infinite grid, facing a particular
direction (north, east, south, or west) at a set of {x,y} coordinates,
e.g., {3,8}, with coordinates increasing to the north and east.

The robot then receives a number of instructions, at which point the
testing facility verifies the robot's new position, and in which
direction it is pointing.

- The letter-string "RAALAL" means:
  - Turn right
  - Advance twice
  - Turn left
  - Advance once
  - Turn left yet again
- Say a robot starts at {7, 3} facing north. Then running this stream
  of instructions should leave it at {9, 4} facing west.


## [Roman Numerals](https://exercism.org/tracks/julia/exercises/roman-numerals)  ([`roman-numerals/`](roman-numerals/))

<img align=right width=100 alt='Roman Numerals' src='https://assets.exercism.org/exercises/roman-numerals.svg'>


Write a function to convert from normal numbers to Roman Numerals.

The Romans were a clever bunch. They conquered most of Europe and ruled
it for hundreds of years. They invented concrete and straight roads and
even bikinis. One thing they never discovered though was the number
zero. This made writing and dating extensive histories of their exploits
slightly more challenging, but the system of numbers they came up with
is still in use today. For example the BBC uses Roman numerals to date
their programs.

The Romans wrote numbers using letters - I, V, X, L, C, D, M. (notice
these letters have lots of straight lines and are hence easy to hack
into stone tablets).

```text
 1  => I
10  => X
 7  => VII
```

There is no need to be able to convert numbers larger than about 3000.
(The Romans themselves didn't tend to go any higher)

Wikipedia says: Modern Roman numerals ... are written by expressing each
digit separately starting with the left most digit and skipping any
digit with a value of zero.

To see this in practice, consider the example of 1990.

In Roman numerals 1990 is MCMXC:

1000=M
900=CM
90=XC

2008 is written as MMVIII:

2000=MM
8=VIII

There is no need to be able to convert numbers larger than about 3000.

See also: [http://www.novaroma.org/via_romana/numbers.html](http://www.novaroma.org/via_romana/numbers.html)

There is no need to be able to convert numbers larger than about 3000.


## [Rotational Cipher](https://exercism.org/tracks/julia/exercises/rotational-cipher)  ([`rotational-cipher/`](rotational-cipher/))

<img align=right width=100 alt='Rotational Cipher' src='https://assets.exercism.org/exercises/rotational-cipher.svg'>


Create an implementation of the rotational cipher, also sometimes called the Caesar cipher.

The Caesar cipher is a simple shift cipher that relies on
transposing all the letters in the alphabet using an integer key
between `0` and `26`. Using a key of `0` or `26` will always yield
the same output due to modular arithmetic. The letter is shifted
for as many values as the value of the key.

The general notation for rotational ciphers is `ROT + <key>`.
The most commonly used rotational cipher is `ROT13`.

A `ROT13` on the Latin alphabet would be as follows:

```text
Plain:  abcdefghijklmnopqrstuvwxyz
Cipher: nopqrstuvwxyzabcdefghijklm
```

It is stronger than the Atbash cipher because it has 27 possible keys, and 25 usable keys.

Ciphertext is written out in the same formatting as the input including spaces and punctuation.


## [Run-Length Encoding](https://exercism.org/tracks/julia/exercises/run-length-encoding)  ([`run-length-encoding/`](run-length-encoding/))

<img align=right width=100 alt='Run-Length Encoding' src='https://assets.exercism.org/exercises/run-length-encoding.svg'>


Implement run-length encoding and decoding.

Run-length encoding (RLE) is a simple form of data compression, where runs
(consecutive data elements) are replaced by just one data value and count.

For example we can represent the original 53 characters with only 13.

```text
"WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB"  ->  "12WB12W3B24WB"
```

RLE allows the original data to be perfectly reconstructed from
the compressed data, which makes it a lossless data compression.

```text
"AABCCCDEEEE"  ->  "2AB3CD4E"  ->  "AABCCCDEEEE"
```

For simplicity, you can assume that the unencoded string will only contain
the letters A through Z (either lower or upper case) and whitespace. This way
data to be encoded will never contain any numbers and numbers inside data to
be decoded always represent the count for the following character.


## [Saddle Points](https://exercism.org/tracks/julia/exercises/saddle-points)  ([`saddle-points/`](saddle-points/))

<img align=right width=100 alt='Saddle Points' src='https://assets.exercism.org/exercises/saddle-points.svg'>


Your task is to find the potential trees where you could build your tree house.

The data company provides the data as grids that show the heights of the trees.
The rows of the grid represent the east-west direction, and the columns represent the north-south direction.

An acceptable tree will be the the largest in its row, while being the smallest in its column.

A grid might not have any good trees at all.
Or it might have one, or even several.

Here is a grid that has exactly one candidate tree.

```
    1  2  3  4
  |-----------
1 | 9  8  7  8
2 | 5  3  2  4  <--- potential tree house at row 2, column 1, for tree with height 5
3 | 6  6  7  1
```

- Row 2 has values 5, 3, and 1. The largest value is 5.
- Column 1 has values 9, 5, and 6. The smallest value is 5.

So the point at `[2, 1]` (row: 2, column: 1) is a great spot for a tree house.


## [Scrabble Score](https://exercism.org/tracks/julia/exercises/scrabble-score)  ([`scrabble-score/`](scrabble-score/))

<img align=right width=100 alt='Scrabble Score' src='https://assets.exercism.org/exercises/scrabble-score.svg'>


Given a word, compute the Scrabble score for that word.


## [Secret Handshake](https://exercism.org/tracks/julia/exercises/secret-handshake)  ([`secret-handshake/`](secret-handshake/))

<img align=right width=100 alt='Secret Handshake' src='https://assets.exercism.org/exercises/secret-handshake.svg'>


Your task is to convert a number between 1 and 31 to a sequence of actions in the secret handshake.

The sequence of actions is chosen by looking at the rightmost five digits of the number once it's been converted to binary.
Start at the right-most digit and move left.

The actions for each number place are:

```plaintext
00001 = wink
00010 = double blink
00100 = close your eyes
01000 = jump
10000 = Reverse the order of the operations in the secret handshake.
```

Let's use the number `9` as an example:

- 9 in binary is `1001`.
- The digit that is farthest to the right is 1, so the first action is `wink`.
- Going left, the next digit is 0, so there is no double-blink.
- Going left again, the next digit is 0, so you leave your eyes open.
- Going left again, the next digit is 1, so you jump.

That was the last digit, so the final code is:

```plaintext
wink, jump
```

Given the number 26, which is `11010` in binary, we get the following actions:

- double blink
- jump
- reverse actions

The secret handshake for 26 is therefore:

```plaintext
jump, double blink
```

~~~~exercism/note
If you aren't sure what binary is or how it works, check out [this binary tutorial][intro-to-binary].
[intro-to-binary]: https://medium.com/basecs/bits-bytes-building-with-binary-13cb4289aafa
~~~~


## [Sieve](https://exercism.org/tracks/julia/exercises/sieve)  ([`sieve/`](sieve/))

<img align=right width=100 alt='Sieve' src='https://assets.exercism.org/exercises/sieve.svg'>


Use the Sieve of Eratosthenes to find all the primes from 2 up to a given
number.

The Sieve of Eratosthenes is a simple, ancient algorithm for finding all
prime numbers up to any given limit. It does so by iteratively marking as
composite (i.e. not prime) the multiples of each prime, starting with the
multiples of 2. It does not use any division or remainder operation.

Create your range, starting at two and continuing up to and including the given limit. (i.e. [2, limit])

The algorithm consists of repeating the following over and over:

- take the next available unmarked number in your list (it is prime)
- mark all the multiples of that number (they are not prime)

Repeat until you have processed each number in your range.

When the algorithm terminates, all the numbers in the list that have not
been marked are prime.

The wikipedia article has a useful graphic that explains the algorithm:
https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes

Notice that this is a very specific algorithm, and the tests don't check
that you've implemented the algorithm, only that you've come up with the
correct list of primes. A good first test is to check that you do not use
division or remainder operations (div, /, mod or % depending on the
language).


## [Spiral Matrix](https://exercism.org/tracks/julia/exercises/spiral-matrix)  ([`spiral-matrix/`](spiral-matrix/))

<img align=right width=100 alt='Spiral Matrix' src='https://assets.exercism.org/exercises/spiral-matrix.svg'>


Given the size, return a square matrix of numbers in spiral order.

The matrix should be filled with natural numbers, starting from 1
in the top-left corner, increasing in an inward, clockwise spiral order,
like these examples:


## [Square Root](https://exercism.org/tracks/julia/exercises/square-root)  ([`square-root/`](square-root/))

<img align=right width=100 alt='Square Root' src='https://assets.exercism.org/exercises/square-root.svg'>


Find the square roots of positive non-zero integers.

You may want to check out the Wikipedia pages on [square roots][square-root] and [methods of computing square roots][computing-square-roots].

[square-root]: https://en.wikipedia.org/wiki/Square_root
[computing-square-roots]: https://en.wikipedia.org/wiki/Methods_of_computing_square_roots


## [Sum of Multiples](https://exercism.org/tracks/julia/exercises/sum-of-multiples)  ([`sum-of-multiples/`](sum-of-multiples/))

<img align=right width=100 alt='Sum of Multiples' src='https://assets.exercism.org/exercises/sum-of-multiples.svg'>


Your task is to write the code that calculates the energy points that get awarded to players when they complete a level.

The points awarded depend on two things:

- The level (a number) that the player completed.
- The base value of each magical item collected by the player during that level.

The energy points are awarded according to the following rules:

1. For each magical item, take the base value and find all the multiples of that value that are less than the level number.
2. Combine the sets of numbers.
3. Remove any duplicates.
4. Calculate the sum of all the numbers that are left.

Let's look at an example:

**The player completed level 20 and found two magical items with base values of 3 and 5.**

To calculate the energy points earned by the player, we need to find all the unique multiples of these base values that are less than level 20.

- Multiples of 3 less than 20: `{3, 6, 9, 12, 15, 18}`
- Multiples of 5 less than 20: `{5, 10, 15}`
- Combine the sets and remove duplicates: `{3, 5, 6, 9, 10, 12, 15, 18}`
- Sum the unique multiples: `3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 = 78`
- Therefore, the player earns **78** energy points for completing level 20 and finding the two magical items with base values of 3 and 5.


## [Triangle](https://exercism.org/tracks/julia/exercises/triangle)  ([`triangle/`](triangle/))

<img align=right width=100 alt='Triangle' src='https://assets.exercism.org/exercises/triangle.svg'>


Determine if a triangle is equilateral, isosceles, or scalene.

An _equilateral_ triangle has all three sides the same length.

An _isosceles_ triangle has at least two sides the same length. (It is sometimes
specified as having exactly two sides the same length, but for the purposes of
this exercise we'll say at least two.)

A _scalene_ triangle has all sides of different lengths.


## [Trinary](https://exercism.org/tracks/julia/exercises/trinary)  ([`trinary/`](trinary/))

<img align=right width=100 alt='Trinary' src='https://assets.exercism.org/exercises/trinary.svg'>


Convert a trinary number, represented as a string (e.g. '102012'), to its
decimal equivalent using first principles.

The program should consider strings specifying an invalid trinary as the
value 0.

Trinary numbers contain three symbols: 0, 1, and 2.

The last place in a trinary number is the 1's place. The second to last
is the 3's place, the third to last is the 9's place, etc.

```shell
# "102012"
    1       0       2       0       1       2    # the number
1*3^5 + 0*3^4 + 2*3^3 + 0*3^2 + 1*3^1 + 2*3^0    # the value
  243 +     0 +    54 +     0 +     3 +     2 =  302
```

If your language provides a method in the standard library to perform the
conversion, pretend it doesn't exist and implement it yourself.


## [Word Count](https://exercism.org/tracks/julia/exercises/word-count)  ([`word-count/`](word-count/))

<img align=right width=100 alt='Word Count' src='https://assets.exercism.org/exercises/word-count.svg'>


Your task is to count how many times each word occurs in a subtitle of a drama.

The subtitles from these dramas use only ASCII characters.

The characters often speak in casual English, using contractions like _they're_ or _it's_.
Though these contractions come from two words (e.g. _we are_), the contraction (_we're_) is considered a single word.

Words can be separated by any form of punctuation (e.g. ":", "!", or "?") or whitespace (e.g. "\t", "\n", or " ").
The only punctuation that does not separate words is the apostrophe in contractions.

Numbers are considered words.
If the subtitles say _It costs 100 dollars._ then _100_ will be its own word.

Words are case insensitive.
For example, the word _you_ occurs three times in the following sentence:

> You come back, you hear me? DO YOU HEAR ME?

The ordering of the word counts in the results doesn't matter.

Here's an example that incorporates several of the elements discussed above:

- simple words
- contractions
- numbers
- case insensitive words
- punctuation (including apostrophes) to separate words
- different forms of whitespace to separate words

`"That's the password: 'PASSWORD 123'!", cried the Special Agent.\nSo I fled.`

The mapping for this subtitle would be:

```text
123: 1
agent: 1
cried: 1
fled: 1
i: 1
password: 2
so: 1
special: 1
that's: 1
the: 2
```


