# Exercism Rust Track

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


## [Clock](https://exercism.org/tracks/julia/exercises/clock)  ([`clock/`](clock/src/lib.rs))

<img align=right width=100 alt='Clock' src='https://assets.exercism.org/exercises/clock.svg'>


Implement a clock that handles times without dates.

You should be able to add and subtract minutes to it.

Two clocks that represent the same time should be equal to each other.


