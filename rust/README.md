# Exercism Rust Track

## [Space Age](https://exercism.org/tracks/julia/exercises/space-age)  ([`space-age/`](space-age/src/lib.rs))

<img align=right width=100 alt='Space Age' src='https://assets.exercism.org/exercises/space-age.svg'>


Given an age in seconds, calculate how old someone would be on a planet in our Solar System.

One Earth year equals 365.25 Earth days, or 31,557,600 seconds.
If you were told someone was 1,000,000,000 seconds old, their age would be 31.69 Earth-years.

For the other planets, you have to account for their orbital period in Earth Years:

| Planet  | Orbital period in Earth Years |
| ------- | ----------------------------- |
| Mercury | 0.2408467                     |
| Venus   | 0.61519726                    |
| Earth   | 1.0                           |
| Mars    | 1.8808158                     |
| Jupiter | 11.862615                     |
| Saturn  | 29.447498                     |
| Uranus  | 84.016846                     |
| Neptune | 164.79132                     |

~~~~exercism/note
The actual length of one complete orbit of the Earth around the sun is closer to 365.256 days (1 sidereal year).
The Gregorian calendar has, on average, 365.2425 days.
While not entirely accurate, 365.25 is the value used in this exercise.
See [Year on Wikipedia][year] for more ways to measure a year.

[year]: https://en.wikipedia.org/wiki/Year#Summary
~~~~


## [Anagram](https://exercism.org/tracks/julia/exercises/anagram)  ([`anagram/`](anagram/src/lib.rs))

<img align=right width=100 alt='Anagram' src='https://assets.exercism.org/exercises/anagram.svg'>


Given a target word and one or more candidate words, your task is to find the candidates that are anagrams of the target.

An anagram is a rearrangement of letters to form a new word: for example `"owns"` is an anagram of `"snow"`.
A word is _not_ its own anagram: for example, `"stop"` is not an anagram of `"stop"`.

The target word and candidate words are made up of one or more ASCII alphabetic characters (`A`-`Z` and `a`-`z`).
Lowercase and uppercase characters are equivalent: for example, `"PoTS"` is an anagram of `"sTOp"`, but `"StoP"` is not an anagram of `"sTOp"`.
The words you need to find should be taken from the candidate words, using the same letter case.

Given the target `"stone"` and the candidate words `"stone"`, `"tones"`, `"banana"`, `"tons"`, `"notes"`, and `"Seton"`, the anagram words you need to find are `"tones"`, `"notes"`, and `"Seton"`.

The Rust track extends the possible letters to be any unicode character, not just ASCII alphabetic ones.

You are going to have to adjust the function signature provided in the stub in order for the lifetimes to work out properly.
This is intentional: what's there demonstrates the basics of lifetime syntax, and what's missing teaches how to interpret lifetime-related compiler errors.


## [Gigasecond](https://exercism.org/tracks/julia/exercises/gigasecond)  ([`gigasecond/`](gigasecond/src/lib.rs))

<img align=right width=100 alt='Gigasecond' src='https://assets.exercism.org/exercises/gigasecond.svg'>


Your task is to determine the date and time one gigasecond after a certain date.

A gigasecond is one thousand million seconds.
That is a one with nine zeros after it.

If you were born on _January 24th, 2015 at 22:00 (10:00:00pm)_, then you would be a gigasecond old on _October 2nd, 2046 at 23:46:40 (11:46:40pm)_.

If you're unsure what operations you can perform on `PrimitiveDateTime` take a look at the [time crate](https://docs.rs/time) which is listed as a dependency in the `Cargo.toml` file for this exercise.


## [Reverse String](https://exercism.org/tracks/julia/exercises/reverse-string)  ([`reverse-string/`](reverse-string/src/lib.rs))

<img align=right width=100 alt='Reverse String' src='https://assets.exercism.org/exercises/reverse-string.svg'>


Your task is to reverse a given string.

Some examples:

- Turn `"stressed"` into `"desserts"`.
- Turn `"strops"` into `"sports"`.
- Turn `"racecar"` into `"racecar"`.


## [Hello World](https://exercism.org/tracks/julia/exercises/hello-world)  ([`hello-world/`](hello-world/src/lib.rs))

<img align=right width=100 alt='Hello World' src='https://assets.exercism.org/exercises/hello-world.svg'>


The classical introductory exercise.
Just say "Hello, World!".

["Hello, World!"][hello-world] is the traditional first program for beginning programming in a new language or environment.

The objectives are simple:

- Modify the provided code so that it produces the string "Hello, World!".
- Run the test suite and make sure that it succeeds.
- Submit your solution and check it at the website.

If everything goes well, you will be ready to fetch your first real exercise.

[hello-world]: https://en.wikipedia.org/wiki/%22Hello,_world!%22_program

In the Rust track, tests are run using the command `cargo test`.


## [Flower Field](https://exercism.org/tracks/julia/exercises/flower-field)  ([`flower-field/`](flower-field/src/lib.rs))

<img align=right width=100 alt='Flower Field' src='https://assets.exercism.org/exercises/flower-field.svg'>


Your task is to add flower counts to empty squares in a completed Flower Field garden.
The garden itself is a rectangle board composed of squares that are either empty (`' '`) or a flower (`'*'`).

For each empty square, count the number of flowers adjacent to it (horizontally, vertically, diagonally).
If the empty square has no adjacent flowers, leave it empty.
Otherwise replace it with the count of adjacent flowers.

For example, you may receive a 5 x 4 board like this (empty spaces are represented here with the '·' character for display on screen):

```text
·*·*·
··*··
··*··
·····
```

Which your code should transform into this:

```text
1*3*1
13*31
·2*2·
·111·
```


## [Sublist](https://exercism.org/tracks/julia/exercises/sublist)  ([`sublist/`](sublist/src/lib.rs))

<img align=right width=100 alt='Sublist' src='https://assets.exercism.org/exercises/sublist.svg'>


Given any two lists `A` and `B`, determine if:

- List `A` is equal to list `B`; or
- List `A` contains list `B` (`A` is a superlist of `B`); or
- List `A` is contained by list `B` (`A` is a sublist of `B`); or
- None of the above is true, thus lists `A` and `B` are unequal

Specifically, list `A` is equal to list `B` if both lists have the same values in the same order.
List `A` is a superlist of `B` if `A` contains a contiguous sub-sequence of values equal to `B`.
List `A` is a sublist of `B` if `B` contains a contiguous sub-sequence of values equal to `A`.

Examples:

- If `A = []` and `B = []` (both lists are empty), then `A` and `B` are equal
- If `A = [1, 2, 3]` and `B = []`, then `A` is a superlist of `B`
- If `A = []` and `B = [1, 2, 3]`, then `A` is a sublist of `B`
- If `A = [1, 2, 3]` and `B = [1, 2, 3, 4, 5]`, then `A` is a sublist of `B`
- If `A = [3, 4, 5]` and `B = [1, 2, 3, 4, 5]`, then `A` is a sublist of `B`
- If `A = [3, 4]` and `B = [1, 2, 3, 4, 5]`, then `A` is a sublist of `B`
- If `A = [1, 2, 3]` and `B = [1, 2, 3]`, then `A` and `B` are equal
- If `A = [1, 2, 3, 4, 5]` and `B = [2, 3, 4]`, then `A` is a superlist of `B`
- If `A = [1, 2, 4]` and `B = [1, 2, 3, 4, 5]`, then `A` and `B` are unequal
- If `A = [1, 2, 3]` and `B = [1, 3, 2]`, then `A` and `B` are unequal


## [Clock](https://exercism.org/tracks/julia/exercises/clock)  ([`clock/`](clock/src/lib.rs))

<img align=right width=100 alt='Clock' src='https://assets.exercism.org/exercises/clock.svg'>


Implement a clock that handles times without dates.

You should be able to add and subtract minutes to it.

Two clocks that represent the same time should be equal to each other.


