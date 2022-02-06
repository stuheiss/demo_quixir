defmodule TestReverse do
  use ExUnit.Case
  use Quixir

  import MyList, only: [ reverse: 1 ]

  test "a reversed list has the same length as the original" do
    ptest original: list() do
      reversed = reverse(original)
      assert length(reversed) == length(original)
    end
  end

  test "reversing a list twice returns the original" do
    ptest original: list() do
      new_list = original |> reverse |> reverse
      assert new_list == original
    end
  end

  test "reversing a list of length 1 does nothing" do
    ptest original: list(1) do
      assert reverse(original) == original
    end
  end

  test "reversing a list of length 2 swaps the elements" do
    ptest original: list(2) do
      [ b, a ] = reverse(original)
      assert [ a, b ] == original
    end
  end

  test "reversing a list of length 3 swaps the extremes" do
    ptest original: list(3) do
      [ c, b, a ] = reverse(original)
      assert [ a, b, c ] == original
    end
  end
end
