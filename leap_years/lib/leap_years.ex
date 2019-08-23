defmodule LeapYears do
  @first_gregorian_year 1583

  def is_leap(year) when is_binary(year) do
    is_leap(String.to_integer(year))
  end

  def is_leap(year) do
    year = round(year)
    if year < @first_gregorian_year do
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
