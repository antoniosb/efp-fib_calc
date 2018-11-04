defmodule FibCalc.Fibonacci do
  @moduledoc """
   Calculates Fibonacci numbers using the FibCache cache.
  """

  def fib(n) do
    hit_cache = FibCache.get()[n]

    cond do
      hit_cache != nil ->
        hit_cache

      hit_cache == nil ->
        FibCache.update(n, fib(n - 1) + fib(n - 2))
        FibCache.get()[n]
    end
  end
end
