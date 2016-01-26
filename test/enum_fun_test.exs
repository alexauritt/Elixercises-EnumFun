defmodule EnumFunTest do
  use ExUnit.Case

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

  # test "reverse" do
  #   assert EnumFun.MyEnums.reverse([12,3,4,5]) == [5,4,3,12]
  # end

  test "last1" do
    assert EnumFun.MyEnums.last([3,6,5,7]) == 7
  end

  test "last2" do
    assert EnumFun.MyEnums.last([]) == nil
  end

  test "last" do
    assert EnumFun.MyEnums.last([3]) == 3
  end

  test "split1" do
    assert EnumFun.MyEnums.split([1, 2, 3], 2) == {[1,2], [3]}
  end

  test "split2" do
    assert EnumFun.MyEnums.split([1, 2, 3], 1) == {[1], [2, 3]}
  end

  test "split3" do
    assert EnumFun.MyEnums.split([1, 2, 3], 0) == {[], [1,2,3]}
  end

  test "split4" do
    assert EnumFun.MyEnums.split([1, 2, 3], 10) == {[1,2,3], []}
  end

  # test "split5" do
  #   assert EnumFun.MyEnums.split([1, 2, 3], -1) == {[1,2], [3]}
  # end
     # 

    # 

    # 

    # assert EnumFun.MyEnums.split([1, 2, 3], -5) == {[], [1,2,3]}
  # end  
end
