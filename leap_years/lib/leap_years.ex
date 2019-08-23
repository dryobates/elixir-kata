defmodule LeapYears do
  @first_gregorian_year 1583
  def is_leap(year) do
    year = round(to_int(year))
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

  def to_int(year) do
    if is_binary(year) do
      String.to_integer(year)
    else
      year
    end
  end

end
