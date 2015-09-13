defmodule RomanNumeralTest do
  use ExUnit.Case

  test "converts arabic to roman numerals" do
    test_values = [
      {0, ""},
      {1, "I"},
      {2, "II"},
      {3, "III"},
      {4, "IV"},
      {5, "V"},
      {6, "VI"},
      {7, "VII"},
      {8, "VIII"},
      {9, "IX"},
      {10, "X"},
      {28, "XXVIII"},
      {38, "XXXVIII"},
      {48, "XLVIII"},
      {224, "CCXXIV"},
      {450, "CDL"},
      {756, "DCCLVI"},
      {2015, "MMXV"}
    ]

    Enum.each test_values, fn({arabic, roman}) -> assert RomanNumeral.converts(arabic) == roman end
  end

end
