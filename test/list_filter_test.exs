defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "return the count of even numbers in a list" do
      list = ["1", "3", "6", "43", "banana", 3, :abc, 10]

      response = ListFilter.call(list)

      expected_response = 4

      assert response == expected_response
    end
  end
end
