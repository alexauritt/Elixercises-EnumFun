defmodule EnumFunTest do
  use ExUnit.Case

  import EnumFun.MyEnums

  setup do
    {:ok, list: [13,5,17,8]}
  end

  test "all? returns true", meta do
    assert EnumFun.MyEnums.all?(meta[:list], fn(x) -> x < 20 end)
  end    

  test "all? returns false", meta do
    refute EnumFun.MyEnums.all?(meta[:list], fn(x) -> x < 15 end)
  end

  test "filter returns empty list" do
    f = fn(x) -> x < 5 end
    list = [13,5,17,8]
    assert EnumFun.MyEnums.filter(list, f) == []
  end

  test "filter returns expected list" do
    f = fn(x) -> x < 10 end
    list = [13,5,17,8]
    assert EnumFun.MyEnums.filter(list, f) == [5,8]
  end
end
