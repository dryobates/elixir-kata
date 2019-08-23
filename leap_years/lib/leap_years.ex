defmodule LeapYears do
  def is_leap(year) do
    cond do
      rem(year, 100) == 0 -> false
      rem(year, 4) == 0 -> true
      true -> false
    end
  end
end
