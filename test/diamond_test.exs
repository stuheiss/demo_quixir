defmodule TestDiamond do
  use ExUnit.Case
  use Quixir

  test "Diamond is non-empty" do
    ptest original: string(max: 1, min: 1, chars: :upper) do
      diamond = Diamond.make(original)
      assert diamond != []
    end
  end

  test "Diamond first row contains A" do
    ptest original: string(max: 1, min: 1, chars: :upper) do
      diamond = Diamond.make(original)
      assert true == List.first(diamond)
      |> String.contains?("A")
    end
  end

  test "Diamond last row contains A" do
    ptest original: string(max: 1, min: 1, chars: :upper) do
      diamond = Diamond.make(original)
      assert true == List.last(diamond)
      |> String.contains?("A")
    end
  end

  test "Diamond is as wide as it is high" do
    ptest original: string(max: 1, min: 1, chars: :upper) do
      diamond = Diamond.make(original)
      width = Enum.reduce(diamond, 0, fn x, acc -> max(acc, String.length(x)) end)
      height = Enum.count(diamond)
      assert height == width
    end
  end

  test "Diamond height is an odd number" do
    ptest original: string(max: 1, min: 1, chars: :upper) do
      diamond = Diamond.make(original)
      require Integer
      assert true == Integer.is_odd(Enum.count(diamond))
    end
  end

  test "Diamond is vertically symmetrical" do
    ptest original: string(max: 1, min: 1, chars: :upper) do
      diamond = Diamond.make(original)
      height = Enum.count(diamond)
      chunk = div(height + 1, 2)
      top_with_middle = Enum.take(diamond, chunk)
      bottom_with_middle = Enum.take(diamond, 0 - chunk)
      assert top_with_middle == Enum.reverse(bottom_with_middle)
    end
  end

  test "Diamond is horizontally symmetrical" do
    ptest original: string(max: 1, min: 1, chars: :upper) do
      diamond = Diamond.make(original)
      height = Enum.count(diamond)
      width = height
      chunk = div(width + 1, 2)
      left_with_middle = Enum.map(diamond, fn x -> String.slice(x, 0, chunk) end)
      right_with_middle = Enum.map(diamond, fn x -> String.reverse(x) |> String.slice(0, chunk) end)
      assert left_with_middle == right_with_middle
    end
  end

end
