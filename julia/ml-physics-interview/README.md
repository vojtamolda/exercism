# ML & Physics Take Home Assignment

The purpose of this exercise is to assess your ability to solve numerical problems, generate datasets, utilize machine learning, and harness model differentiability for optimization.

## Solve the ODE

An ideal pendulum of length $l = 1\ m$ and mass $m = 1\ kg$, follows the nonlinear ODE given by:

$$
θ''(t) + bθ'(t) + \frac{g}{l} \sin⁡{θ(t)} = 0.
$$

Here, $\theta(t)$ represents the angle the pendulum makes with the vertical direction, $b = 0.25\ 1/s$ denotes the damping coefficient and  $g = 9.81\ m/s^2$ stands for the acceleration due to gravity.

![Pendulum](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/453b8bff-9509-4ac1-9c76-b922ed276c1b/PenduloTmg.gif)

Pendulum

In the first part of the assignment you're required to solve this ODE using a numerical framework and programming language of your preference.

## Generate Dataset

To create a synthetic dataset, select a range of initial conditions. For each of these initial states, simulate the ODE over a chosen time span, perhaps from 0 to 1 seconds and store the solution of the ODE at regular intervals.

## Train a Surrogate Model

From your generated dataset, train a machine learning model that will predict solution over the chosen time span. The model's goal is to take the initial state and estimate the evolution of the system in time.

Similarly to the previous section, use a ML framework and programming language you are comfortable with.

## Optimize with the Surrogate Model

The final challenge entails solving an inverse problem. Derive an algorithm that outputs the initial conditions such that the pendulum is stopped in a horizontal position at the end of your chosen time span.

## Presentation

Accompany your solution with a succinct report (1-2 pages) detailing your approach, insights, and any challenges you confronted.