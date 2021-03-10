defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns the odd numbers of a list" do
      list = ["1", "3", "43", "batata", "true", ":arroz", "7.5", "8", "13", "10"]

      response = ListFilter.call(list)

      expected_response = 5

      assert response == expected_response
    end
  end
end
