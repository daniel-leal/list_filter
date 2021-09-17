defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  describe "call/1" do
    test "Returns a new list with the odd numbers" do
      # Arrange
      list = ["1", "3", "6", "43", "banana", "6", "abc"]
      expected_result = [1, 3, 43]

      # Act
      result = ListFilter.call(list)

      # Assert
      assert expected_result == result
    end

    test "Returns an empty list when passed list does not have odd numbers" do
      # Arrange
      list = ["6", "banana", "6", "abc"]
      expected_result = []

      # Act
      result = ListFilter.call(list)

      # Assert
      assert expected_result == result
    end
  end
end
