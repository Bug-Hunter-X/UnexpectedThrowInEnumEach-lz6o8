# Elixir `throw` in `Enum.each` Behavior

This example demonstrates a surprising aspect of using `throw` inside an `Enum.each` loop in Elixir.  One might expect `throw` to immediately halt the iteration, but this is not the case.  The code continues to iterate through the list, printing all numbers before the `throw` is ultimately caught.

This can lead to subtle and hard-to-debug errors if not understood.

## Bug
The `bug.ex` file shows the issue. The `Enum.each` continues after encountering `throw`, and this is unexpected. 

## Solution
The `bugSolution.ex` file demonstrates how to properly use `try` and `catch` or alternatives like `Enum.reduce` or recursion to achieve controlled iteration termination.