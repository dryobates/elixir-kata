defmodule LeapYears do
  def is_leap(year) do
    if year < 1583 do
      raise NotGregorianYear
    end
    cond do
      rem(year, 400) == 0 -> true
      rem(year, 100) == 0 -> false
      rem(year, 4) == 0 -> true
      true -> false
    end
  end
end
