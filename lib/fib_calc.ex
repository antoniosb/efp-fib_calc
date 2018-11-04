defmodule FibCalc do
  defdelegate fib(n), to: FibCalc.Fibonacci
end
