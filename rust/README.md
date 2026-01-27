# Exercism Rust Track

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


